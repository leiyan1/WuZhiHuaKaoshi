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
public partial class AdminC_ModifyPwd : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void UPpwd()
    {

        string Username = Session["admin"].ToString();
        try
        {
            string sql = "update [Admin]  set [UserPwd] ='" + txtConfirmPassword.Text + "' where [UserName]='" + Username + "' ";
            data.RunSql(sql);
            lbInfo.Text = "修改成功！";
        }
        catch
        {
        }
    }
    /// <summary>
    /// 检验原来的密码
    /// </summary>
    private void chkpwd()
    {
        SqlDataReader dr;
        dr = data.GetDataReader("select * from  Admin  where UserName='" + Session["admin"].ToString() + "' and UserPwd='" + txtPassword.Text + "'");
        if (dr.Read())
        {
            UPpwd();
        }
        else
        {
            lbInfo.Text = "原密码不正确！";
        }
    }
    protected void Button1_ServerClick(object sender, EventArgs e)
    {
        chkpwd();
    }
}
