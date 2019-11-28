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
public partial class AdminC_ModifyKaoSheng : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            SqlDataReader dr = data.GetDataReader("select * from Users where UserID=" + Request.QueryString["id"].ToString());
            if (dr.Read())
            {
                txtUserName.Text = dr["UserName"].ToString();
                txtEmal.Text = dr["Emal"].ToString();
               
                txtNumber.Text = dr["UserNubmer"].ToString();
                TextBox1.Text = dr["XiName"].ToString();
                TextBox3.Text = dr["BuMen"].ToString();
                TextBox4.Text = dr["dianhua"].ToString();

                DropDownList1.Items.FindByText(dr["xingbie"].ToString()).Selected = true;//选项Text  
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        string sql = "update Users set Emal='" + txtEmal.Text + "',UserName='" + txtUserName.Text + "',UserNubmer='" + txtNumber.Text + "',XiName='" + TextBox1.Text + "',BuMen='" + TextBox3.Text + "',dianhua='" + TextBox4.Text + "',xingbie='"+DropDownList1.SelectedValue+"' where UserID=" + Request.QueryString["id"].ToString();
        data.RunSql(sql);

        Alert.AlertAndRedirect("修改信息成功", "KaoShengmanger.aspx");

    }
}
