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
public partial class AdminC_addTeachter : System.Web.UI.Page
{
    SqlHelper mydata = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataReader sdr1;
        sdr1 = mydata.GetDataReader("select * from Teachter where UserNubmer='" + this.txtNumber.Text.Trim() + "' ");

        if (sdr1.Read())
        {
            lblMessage.Text = "工号不能相同！";

        }
        else
        {
            try
            {

                mydata.RunSql("insert into Teachter(userEmal,UserName,UserPwd,UserNubmer)values('" + txtEmal.Text + "','" + txtUserName.Text + "','" + txtUserPwd.Text + "','" + txtNumber.Text + "')");
                Alert.AlertAndRedirect("添加成功！", "Teachtermanger.aspx");
            }
            catch
            {
                lblMessage.Text = "添加失败！";
            }

        }

    }
}
