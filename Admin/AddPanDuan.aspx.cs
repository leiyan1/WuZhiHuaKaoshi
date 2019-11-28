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
public partial class Admin_AddPanDuan : System.Web.UI.Page
{
    SqlHelper mydata = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            InitDDLData();

            Button1.Visible = false;

            if (Request["ID"] != null)
            {
                imgBtnSave.Visible = false;
                Button1.Visible = true;

                InitData();
            }
        }
    }

    protected void InitDDLData()
    {

        SqlDataReader dr;
        dr = mydata.GetDataReader("select * from Course");


        ddlCourse.DataSource = dr;
        ddlCourse.DataTextField = "Name";
        ddlCourse.DataValueField = "ID";
        ddlCourse.DataBind();
    }

    protected void InitData()
    {

        int TestProblemID = int.Parse(Request["ID"].ToString());

        try
        {
            SqlDataReader dr;
            dr = mydata.GetDataReader("select * from PanDuanProblem where id=" + TestProblemID);
            dr.Read();
            ddlCourse.SelectedValue = dr["CourseID"].ToString();
            txttile.Text = dr["Title"].ToString();
          
            this.txtScore.Text = dr["Mark"].ToString();
         

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);

            lblMessage.Text = "加载数据出错！";

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        Button1.Visible = false;

        imgBtnSave.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int CourseID = int.Parse(ddlCourse.SelectedValue);
        string Title = txttile.Text;
        string Answer = RadioButtonList1.SelectedItem.Text;

        if (Request["ID"] != null)
        {
            int id = int.Parse(Request["ID"].ToString());
            try
            {
                mydata.RunSql("update PanDuanProblem set  CourseID=" + ddlCourse.SelectedValue + ",Title='" + Title + "',Answer='" + Answer + "' ,Mark='" + txtScore.Text + "' where id=" + id);

                Alert.AlertAndRedirect("修改成功！", "PanDuanProblemManger.aspx");

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);

            }
        }
        else
        {
            try
            {

                mydata.RunSql("insert into PanDuanProblem(CourseID,Title,Answer,Mark)values('" + ddlCourse.SelectedValue + "','" + txttile.Text + "','" + Answer + "','" + txtScore.Text + "')");
                Alert.AlertAndRedirect("添加成功！", "PanDuanProblemManger.aspx");
            }
            catch
            {

            }
        }
    }
 
}
