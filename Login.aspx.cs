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
public partial class Admin_Login : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();

    Alert js = new Alert();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("UserReg.aspx");
    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        //Alert.AlertAndRedirect("恭喜您登录成功！", "Admin/index.htm");
        //return;

        if (Ddl_usertype_C.SelectedItem.Text == "管理员")
        {
            SqlDataReader sdr1;
            sdr1 = data.GetDataReader("select * from Admin where UserName='" + this.txtUserID.Text.Trim() + "' and UserPwd='" + this.txtPwd.Text.Trim() + "'");

            if (sdr1.Read())
            {
                Session["admin"] = sdr1["UserName"].ToString();
                Alert.AlertAndRedirect("恭喜您登录成功！", "Admin/index.htm");
            }
            else
            {
                Alert.AlertAndRedirect("登录失败！", "Login.aspx");
            }


        }
        if (Ddl_usertype_C.SelectedItem.Text == "学生")
        {

            SqlDataReader sdr;
            sdr = data.GetDataReader("select * from Users where UserNubmer='" + this.txtUserID.Text.Trim() + "' and UserPwd='" + this.txtPwd.Text.Trim() + "'");

            if (sdr.Read())
            {
                Session["UserName"] = sdr["UserName"].ToString();
                Session["UserId"] = sdr["UserID"].ToString();

                Alert.AlertAndRedirect("恭喜您登录成功！", "KaoSheng/index.htm");

            }
            else
            {
                Alert.AlertAndRedirect("登录失败！", "Login.aspx");
            }
        } if (Ddl_usertype_C.SelectedItem.Text == "教师")
        {

            SqlDataReader sdr;
            sdr = data.GetDataReader("select * from Teachter where UserNubmer='" + this.txtUserID.Text.Trim() + "' and UserPwd='" + this.txtPwd.Text.Trim() + "'");

            if (sdr.Read())
            {
                Session["Teachter"] = sdr["UserName"].ToString();
                Session["UserId"] = sdr["id"].ToString();

                Alert.AlertAndRedirect("恭喜您登录成功！", "Teachter/index.htm");

            }
            else
            {
                Alert.AlertAndRedirect("登录失败！", "Login.aspx");
            }
        }
    }
}
