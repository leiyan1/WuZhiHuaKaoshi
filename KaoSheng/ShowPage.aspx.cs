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

public partial class UserC_ShowPage : System.Web.UI.Page
{
    SqlHelper mydata = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                int id = int.Parse(Request.QueryString["id"].ToString());
                SqlDataReader sdr1 = mydata.GetDataReader("select * from  StPager where Pageid='" + id + "' and UserId='" + Session["UserId"].ToString() + "'");
                if (sdr1.Read())
                {
                    Alert.AlertAndRedirect("你已经参加过这个考试了不能重复参加考试", "SelectPage.aspx");
                }
                else
                {
                    GetPager();
                    TestTime();
                }   
            }
            catch (Exception ex)
            {
                
            }
           
        }
    }
    private void TestTime()
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        string kaoshishijian = "3600";
        Session["time"] = System.DateTime.Now.Minute.ToString();
        Session.Timeout = int.Parse(kaoshishijian);
        lblTime.Value = Convert.ToString(Convert.ToInt32(Session.Timeout));
    }
    /// <summary>
    /// 取得选择的试卷
    /// </summary>
    private void GetPager()
    {

        int id = int.Parse(Request.QueryString["id"].ToString());
        //单选题

        SqlDataReader sdr;
        sdr = mydata.GetDataReader("select  * from Paper where  PaperID=" + id);
        sdr.Read();
        lblPaperName.Text = sdr["PaperName"].ToString();
        Label15.Text = sdr["PageFen"].ToString();
        SqlDataReader dr;
        dr = mydata.GetDataReader("select  * from PaperDetail a left  join Paper b on a.PaperID=b.PaperID left join SingleProblem c on a.TitleID=c.id where b.PaperID=" + id + "and a.Type='单选题' ");
        GridView1.DataSource = dr;
        GridView1.DataBind();

        //多选题
        dr = mydata.GetDataReader("select * from PaperDetail a left  join Paper b on a.PaperID=b.PaperID left join MultiProblem c on a.TitleID=c.id where b.PaperID=" + id + "and a.Type='多选题'");
        GridView2.DataSource = dr;
        GridView2.DataBind();
        //填空题
        dr = mydata.GetDataReader("select * from PaperDetail a left  join Paper b on a.PaperID=b.PaperID left join BlankProblem c on a.TitleID=c.id where b.PaperID=" + id + "and a.Type='填空题'");
        GridView3.DataSource = dr;
        GridView3.DataBind();
      

        //判断题
        dr = mydata.GetDataReader("select * from PaperDetail a left  join Paper b on a.PaperID=b.PaperID left join PanDuanProblem c on a.TitleID=c.id where b.PaperID=" + id + "and a.Type='判断题'");
        GridView5.DataSource = dr;
        GridView5.DataBind();
    }
    protected void Button1_ServerClick1(object sender, EventArgs e)
    {
        float score = 0;
        
        foreach (GridViewRow dr in GridView1.Rows)
        {
            string str = "";
            if (((RadioButton)dr.FindControl("RadioButton1")).Checked)
            {
                str = "A";
            }
            else if (((RadioButton)dr.FindControl("RadioButton2")).Checked)
            {
                str = "B";
            }
            else if (((RadioButton)dr.FindControl("RadioButton3")).Checked)
            {
                str = "C";
            }
            else if (((RadioButton)dr.FindControl("RadioButton4")).Checked)
            {
                str = "D";
            }
            if (((Label)dr.FindControl("Label3")).Text.Trim() == str)
            {
                float singlemark = float.Parse(((Label)GridView1.Rows[0].FindControl("Label4")).Text);
                score = score + singlemark;
            }
        }

        float Panduanmark = float.Parse(((Label)GridView5.Rows[0].FindControl("Label44")).Text);
        foreach (GridViewRow dr in GridView5.Rows)
        {
            string str = "";
            if (((RadioButton)dr.FindControl("RadioButton1")).Checked)
            {
                str = "正确";
            }
            else if (((RadioButton)dr.FindControl("RadioButton2")).Checked)
            {
                str = "错误";
            }

            if (((Label)dr.FindControl("PanDuanProblem")).Text.Trim() == str)
            {
                score = score + Panduanmark;
            }
        }
        float multimark = float.Parse(((Label)GridView2.Rows[0].FindControl("Label8")).Text);
        foreach (GridViewRow dr in GridView2.Rows)
        {
            string str = "";
            if (((CheckBox)dr.FindControl("CheckBox1")).Checked)
            {
                str = "";
            }
            if (((CheckBox)dr.FindControl("CheckBox2")).Checked)
            {
                str = "";
            }
            if (((CheckBox)dr.FindControl("CheckBox3")).Checked)
            {
                str = "";
            }
            if (((CheckBox)dr.FindControl("CheckBox4")).Checked)
            {
                str = "";
            }
            if (((Label)dr.FindControl("Label7")).Text.Trim() == str)
            {
                score = score + multimark;
            }
        }

        float TianKongMark = float.Parse(((Label)GridView3.Rows[0].FindControl("Label12")).Text);
        foreach (GridViewRow dr in GridView3.Rows)
        {
          string str = "";
           str=((Label)dr.FindControl("Label11")).Text;
           
            if (((TextBox)dr.FindControl("TextBox1")).Text == str)
            {
                score = score + TianKongMark;
            }
        }
        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlDataReader dr3;
        dr3 = mydata.GetDataReader("select * from [Users] where UserID=" + int.Parse(Session["UserId"].ToString()) + "");
        dr3.Read();
        string UserName = dr3["UserName"].ToString();
        string Userid = dr3["UserId"].ToString();
      
        mydata.RunSql("insert into score (UserID,PaperID,Score,ExamTime,UserName)values('" + int.Parse(Session["UserId"].ToString()) + "','" + int.Parse(Request.QueryString["id"].ToString()) + "','" + score + "','" + DateTime.Now.ToString("yyy-MM-dd HH:mms:ss") + "','" + UserName + "')");
     
        mydata.RunSql("insert into  StPager(Pageid,UserId)values('" + id + "','" + Userid + "')");
        Alert.AlertAndRedirect("答题成功！查看成绩！", "MyChengji.aspx");

    }
  
}
