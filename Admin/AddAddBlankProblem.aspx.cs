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
public partial class AdminC_AddAddBlankProblem : System.Web.UI.Page
{
    SqlHelper mydata = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            Button1.Visible = false;
            InitDDLData();
            if (Request["ID"] != null)
            {
                imgBtnSave.Visible = false;
                Button1.Visible = true;

                InitData();
            }
        }
    }
    protected void InitData()
    {

        int id = int.Parse(Request["ID"].ToString());

        try
        {
            SqlDataReader dr;
            dr = mydata.GetDataReader("select * from BlankProblem where id=" + id);
            dr.Read();
            ddlCourse.SelectedValue = dr["CourseID"].ToString();
            this.txtTitle.Text = dr["Title"].ToString();
            this.txtAnswer.Text = dr["Answer"].ToString();
            this.txtScore.Text = dr["Mark"].ToString();
          
        }
        catch
        {

            lblMessage.Text = "加载数据出错！";

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

    protected void Button1_Click(object sender, EventArgs e)
    {

        Button1.Visible = false;

        imgBtnSave.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int CourseID = int.Parse(ddlCourse.SelectedValue);
        string Title = this.txtTitle.Text;
        string Answer = this.txtAnswer.Text;


        if (Request["ID"] != null)
        {
            int id = int.Parse(Request["ID"].ToString());
            try
            {
                mydata.RunSql("update BlankProblem set  Title='" + txtTitle.Text + "',Answer='" + txtAnswer.Text + "',Mark='" + txtScore.Text + "' where id=" + id);

                Alert.AlertAndRedirect("修改成功！", "BlankProblemList.aspx");

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                lblMessage.Text = "修改失败！";
            }
        }
        else
        {
            try
            {

                mydata.RunSql("insert into BlankProblem(CourseID,Title,Answer,Mark)values('" + ddlCourse.SelectedValue + "','" + txtTitle.Text + "','" + txtAnswer.Text + "','" + txtScore.Text + "')");
                Alert.AlertAndRedirect("添加成功！", "BlankProblemList.aspx");
            }
            catch
            {
                lblMessage.Text = "添加失败！";
            }
        }
    }

  
}
