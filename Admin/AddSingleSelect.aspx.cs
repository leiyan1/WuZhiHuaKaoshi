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
public partial class AdminC_AddSingleSelect : System.Web.UI.Page
{
    SqlHelper mydata = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            InitDDLData();
            Button1.Visible = false;

            TextBox2.Visible = false;


            if (Request["ID"] != null)
            {

                TextBox2.Visible = true;
                ddlAnswer.Visible = false;

                Button1.Visible = true;
                Button2.Visible = false;
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
        ddlCourse.DataBind();               //绑定数据
    }

    protected void InitData()
    {

        int SingleProblemID = int.Parse(Request["ID"].ToString());

        try
        {
            SqlDataReader dr;
            dr = mydata.GetDataReader("select * from SingleProblem where id=" + SingleProblemID);
            dr.Read();
            ddlCourse.SelectedValue = dr["CourseID"].ToString();
            txtTitle.Text = dr["Title"].ToString();
            txtAnswerA.Text = dr["AnswerA"].ToString();
            txtAnswerB.Text = dr["AnswerB"].ToString();
            txtAnswerC.Text = dr["AnswerC"].ToString();
            txtAnswerD.Text = dr["AnswerD"].ToString();
            this.txtScore.Text = dr["Mark"].ToString();
        
            TextBox2.Text = dr["Answer"].ToString();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);

            lblMessage.Text = "加载数据出错！";

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ddlAnswer.Visible = true;

        TextBox2.Visible = false;
        Button1.Visible = false;
        Button2.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int CourseID = int.Parse(ddlCourse.SelectedValue);
        string Title = txtTitle.Text;
        string AnswerA = txtAnswerA.Text;
        string AnswerB = txtAnswerB.Text;
        string AnswerC = txtAnswerC.Text;
        string AnswerD = txtAnswerD.Text;
        string Answer = ddlAnswer.SelectedItem.Text;
        if (Request["ID"] != null)
        {
            int id = int.Parse(Request["ID"].ToString());
            try
            {
                mydata.RunSql("update SingleProblem set CourseID=" + CourseID + ",Title='" + Title + "',AnswerA='" + AnswerA + "',AnswerB='" + AnswerB + "',AnswerC='" + AnswerC + "',AnswerD='" + AnswerD + "',Answer='" + Answer + "',Mark='" + txtScore.Text + "'   where id=" + id);

                Alert.AlertAndRedirect("修改成功！", "SingleSelectLists.aspx");

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                lblMessage.Text = "修改该单选题失败！";
            }
        }
        else
        {
            try
            {
                mydata.RunSql("insert into SingleProblem(CourseID,Title,AnswerA,AnswerB,AnswerC,AnswerD,Answer,Mark)values('" + ddlCourse.SelectedValue + "','" + txtTitle.Text + "','" + txtAnswerA.Text + "','" + txtAnswerB.Text + "','" + txtAnswerC.Text + "','" + txtAnswerD.Text + "','" + ddlAnswer.SelectedItem.Text + "','" + txtScore.Text + "')");
                Alert.AlertAndRedirect("添加成功！", "SingleSelectLists.aspx");
            }
            catch
            {
                lblMessage.Text = "添加该单选题失败！";
            }
        }
    }
 
}
