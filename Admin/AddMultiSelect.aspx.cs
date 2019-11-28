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
public partial class AdminC_AddMultiSelect : System.Web.UI.Page
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

        int SingleProblemID = int.Parse(Request["ID"].ToString());

        try
        {
            SqlDataReader dr;
            dr = mydata.GetDataReader("select * from MultiProblem where id=" + SingleProblemID);
            dr.Read();
            ddlCourse.SelectedValue = dr["CourseID"].ToString();
            txtTitle.Text = dr["Title"].ToString();
            txtAnswerA.Text = dr["AnswerA"].ToString();
            txtAnswerB.Text = dr["AnswerB"].ToString();
            txtAnswerC.Text = dr["AnswerC"].ToString();
            txtAnswerD.Text = dr["AnswerD"].ToString();
            string answer = dr["Answer"].ToString();
            this.txtScore.Text = dr["Mark"].ToString();
        
            for (int i = 0; i < answer.Length; i++)
            {
                string item = answer[i].ToString();
                for (int j = 0; j < cblAnswer.Items.Count; j++)
                {
                    if (item == cblAnswer.Items[i].Text)
                    {
                        cblAnswer.Items[i].Selected = true;
                    }
                }
            }

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
        string Title = txtTitle.Text;
        string AnswerA = txtAnswerA.Text;
        string AnswerB = txtAnswerB.Text;
        string AnswerC = txtAnswerC.Text;
        string AnswerD = txtAnswerD.Text;


        string answer = "";
        for (int i = 0; i < cblAnswer.Items.Count; i++)
        {
            if (cblAnswer.Items[i].Selected)
            {
                answer += cblAnswer.Items[i].Text;
            }
        }
        string Answer = answer;



        if (Request["ID"] != null)
        {
            int id = int.Parse(Request["ID"].ToString());
            try
            {
                mydata.RunSql("update MultiProblem set  CourseID=" + ddlCourse.SelectedValue + ",Title='" + Title + "',AnswerA='" + AnswerA + "',AnswerB='" + AnswerB + "',AnswerC='" + AnswerC + "',AnswerD='" + AnswerD + "',Answer='" + Answer + "' ,Mark='" + txtScore.Text + "'  where id=" + id);

                Alert.AlertAndRedirect("修改成功！", "MultiSelectLists.aspx");

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

                mydata.RunSql("insert into MultiProblem(CourseID,Title,AnswerA,AnswerB,AnswerC,AnswerD,Answer,Mark)values('" + ddlCourse.SelectedValue + "','" + txtTitle.Text + "','" + txtAnswerA.Text + "','" + txtAnswerB.Text + "','" + txtAnswerC.Text + "','" + txtAnswerD.Text + "','" + Answer + "','" + txtScore.Text + "')");
                Alert.AlertAndRedirect("添加成功！", "MultiSelectLists.aspx");
            }
            catch
            {

            }
        }
    }
   
}
