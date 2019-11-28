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
public partial class AdminC_AddPage : System.Web.UI.Page
{

    SqlHelper mydata = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            SqlDataReader dr;
            dr = mydata.GetDataReader("select * from Course");
            DropDownList2.DataSource = dr;
            DropDownList2.DataTextField = "Name";
            DropDownList2.DataValueField = "ID";
            DropDownList2.DataBind();

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
     
            string Sql = "insert into Paper(CourseID,PaperName,PageFen)values('" + DropDownList2.SelectedValue + "','" + DropDownList2.SelectedItem.Text + "','"+TextBox5.Text+"')";
                mydata.RunSql(Sql);
                SqlDataReader dr;
                //单选题
                dr = mydata.GetDataReader("select top " + TextBox1.Text + "  * from SingleProblem  where CourseID='" + DropDownList2.SelectedValue + "'  order by newid()");
                GridView1.DataSource = dr;
                GridView1.DataBind();


                //判断题
                dr = mydata.GetDataReader("select  top " + TextBox6.Text + " * from PanDuanProblem  where    CourseID='" + DropDownList2.SelectedValue + "'  order by newid()");
                GridView5.DataSource = dr;
                GridView5.DataBind();
                //多选题
                dr = mydata.GetDataReader("select top  " + TextBox2.Text + " * from MultiProblem   where CourseID='" + DropDownList2.SelectedValue + "'   order by newid()");
                GridView2.DataSource = dr;
                GridView2.DataBind();
                //填空题
                dr = mydata.GetDataReader("select top  " + TextBox3.Text + " * from BlankProblem  where CourseID='" + DropDownList2.SelectedValue + "'  order by newid()");
                GridView3.DataSource = dr;
                GridView3.DataBind();
        
        
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
            SqlDataReader sdr;
            sdr = mydata.GetDataReader("select top 1 *  from Paper where   CourseID='" + DropDownList2.SelectedValue + "'    order by  PaperID desc ");
            if (sdr.Read())
            {
                string id = sdr["PaperID"].ToString();
                //单选题
                foreach (GridViewRow dr in GridView1.Rows)
                {

                    mydata.RunSql("insert into PaperDetail(PaperID,Type,TitleID,Mark) values('" + id + "','单选题','" + int.Parse(((Label)dr.FindControl("Label3")).Text) + "','" + ((Label)dr.FindControl("Label4")).Text + "')");
                }

                //多选题
                foreach (GridViewRow dr in GridView2.Rows)
                {

                    mydata.RunSql("insert into PaperDetail(PaperID,Type,TitleID,Mark) values('" + id + "','多选题','" + int.Parse(((Label)dr.FindControl("Label6")).Text) + "','" + ((Label)dr.FindControl("Label4")).Text + "')");


                }

                //判断题
                foreach (GridViewRow dr in GridView5.Rows)
                {

                    mydata.RunSql("insert into PaperDetail(PaperID,Type,TitleID,Mark) values('" + id + "','判断题','" + int.Parse(((Label)dr.FindControl("Label66")).Text) + "','" + ((Label)dr.FindControl("Label44")).Text + "')");


                }

                //填空题
                foreach (GridViewRow dr in GridView3.Rows)
                {

                    mydata.RunSql("insert into PaperDetail(PaperID,Type,TitleID,Mark) values('" + id + "','填空题','" + int.Parse(((Label)dr.FindControl("Label7")).Text) + "','" + ((Label)dr.FindControl("Label4")).Text + "')");
                }
              
                Alert.AlertAndRedirect("生成成功！", "PageManger.aspx");

            }
        
    }
   
    
}
