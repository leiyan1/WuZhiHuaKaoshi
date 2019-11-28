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
public partial class AdminC_ModifyTeachter : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            SqlDataReader dr = data.GetDataReader("select * from Teachter where id=" + Request.QueryString["id"].ToString());
            if (dr.Read())
            {
                txtUserName.Text = dr["UserName"].ToString();
                txtEmal.Text = dr["userEmal"].ToString();
                txtUserPwd.Text = dr["UserPwd"].ToString();
                txtNumber.Text = dr["UserNubmer"].ToString();
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        string sql = "update Teachter set userEmal='" + txtEmal.Text + "',UserName='" + txtUserName.Text + "',UserPwd='" + txtUserPwd.Text + "',UserNubmer='" + txtNumber.Text + "' where id=" + Request.QueryString["id"].ToString();
        data.RunSql(sql);

        Alert.AlertAndRedirect("修改信息成功", "Teachtermanger.aspx");

    }
}
