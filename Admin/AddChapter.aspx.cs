using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
public partial class AdminC_AddChapter : System.Web.UI.Page
{
    SqlHelper mydata = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlDataReader dr;
            dr = mydata.GetDataReader("select * from Teachter");


            dlTeachter.DataSource = dr;
            dlTeachter.DataTextField = "UserName";
            dlTeachter.DataValueField = "ID";
            dlTeachter.DataBind();
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataReader sdr1;
        sdr1 = mydata.GetDataReader("select * from Course where Name='" + this.txtUserName.Text.Trim() + "' ");

        if (sdr1.Read())
        {
            lblMessage.Text = "考试科目不能相同！";

        }
        else
        {
            try
            {

                mydata.RunSql("insert into Course(Name,Ds,TeachterId,TeachterName)values('" + txtUserName.Text + "','" + txtUserPwd.Text + "','" + dlTeachter.SelectedValue + "','" + dlTeachter.SelectedItem.Text+ "')");
                Alert.AlertAndRedirect("添加成功！", "ChapterManger.aspx");
            }
            catch
            {
                lblMessage.Text = "添加失败！";
            }

        }

    }
}
