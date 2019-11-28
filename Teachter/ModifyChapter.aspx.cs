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
public partial class AdminC_ModifyChapter : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            SqlDataReader dr = data.GetDataReader("select * from Course where id=" + Request.QueryString["id"].ToString());
            if (dr.Read())
            {
                txtUserName.Text = dr["Name"].ToString();
                txtUserPwd.Text = dr["Ds"].ToString();

            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        string sql = "update Course set Name='" + txtUserName.Text + "',Ds='" + txtUserPwd.Text + "' where id=" + Request.QueryString["id"].ToString();
        data.RunSql(sql);

        Alert.AlertAndRedirect("修改信息成功", "ChapterManger.aspx");

    }
}
