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
public partial class AdminC_ShowPage : System.Web.UI.Page
{
    SqlHelper mydata = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetPager();
        }

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
}
