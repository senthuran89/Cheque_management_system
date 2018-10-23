using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Accountent_intro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label3.Text = Session["cname1"].ToString();
        //Label4.Text = Session["cname2"].ToString();
        //Label5.Text = Session["address1"].ToString();
        //Label6.Text = Session["ph1"].ToString();
        //Label7.Text = Session["joindate"].ToString();
        //Label2.Text = Session["un"].ToString();
        //Label8.Text = Session["sc"].ToString();

        Label3.Text = Session["cname1"].ToString();
        Label4.Text = Session["cname2"].ToString();
        // Label5.Text = Session["address1"].ToString();
        // Label6.Text = Session["ph1"].ToString();
        Label7.Text = Session["joindate"].ToString();
        Label2.Text = Session["un"].ToString();
        Label8.Text = Session["sc"].ToString();
        Label14.Text = System.DateTime.Today.Date.ToString();
        Session["todayadate"] = Label14.Text.ToString();
    }
  
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cmsintro.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["cid1"] = int.Parse(GridView3.SelectedRow.Cells[1].Text.ToString());
        Session["tfrid"] = int.Parse(GridView3.SelectedRow.Cells[0].Text.ToString());
        Session["chequeno"] = GridView3.SelectedRow.Cells[11].Text.ToString();
        Session["chequedate"] = DateTime.Parse(GridView3.SelectedRow.Cells[12].Text.ToString());
        Session["cheamount"] = double.Parse(GridView3.SelectedRow.Cells[13].Text.ToString());

        Response.Redirect("~/cashier/Cheque Deposit.aspx");
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Session["cid1"] = int.Parse(GridView1.SelectedRow.Cells[0].Text.ToString());
        Session["tfrid"] = int.Parse(GridView1.SelectedRow.Cells[1].Text.ToString());
        Session["chequeno"] = GridView1.SelectedRow.Cells[11].Text.ToString();
        Session["chequedate"] = DateTime.Parse(GridView1.SelectedRow.Cells[12].Text.ToString());
        Session["cheamount"] = double.Parse(GridView1.SelectedRow.Cells[13].Text.ToString());

        Response.Redirect("~/cashier/Cheque Deposit.aspx");
    }
}
