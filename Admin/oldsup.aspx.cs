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

public partial class Admin_oldsup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView2.Visible = false;
        GridView3.Visible = false;
        GridView4.Visible = false;
        GridView5.Visible = false;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["sid"] = int.Parse(GridView1.SelectedRow.Cells[0].Text.ToString());
        Response.Redirect("~/Admin/supchequeinsert.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["sfn"] = DropDownList3.Text.ToString();
        GridView2.Visible = true;

    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["scn"] = DropDownList2.Text.ToString();
        GridView3.Visible = true;
    }
  
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["snic"] = TextBox1.Text.ToString();
        GridView4.Visible = true;
    }
    protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["sid"] = int.Parse(GridView4.SelectedRow.Cells[0].Text.ToString());
        Response.Redirect("~/Admin/supchequeinsert.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["sid"] = TextBox2.Text.ToString();
        GridView5.Visible = true;
    }
    protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
    {
   
        Session["sid"] = int.Parse(GridView5.SelectedRow.Cells[0].Text.ToString());
        Response.Redirect("~/Admin/supchequeinsert.aspx");
    }
    protected void GridView5_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Session["sid"] = int.Parse(GridView5.SelectedRow.Cells[0].Text.ToString());
        Response.Redirect("~/Admin/supchequeinsert.aspx");
    }
    protected void Button4_Click1(object sender, EventArgs e)
    {
        Session["sid"] = TextBox2.Text.ToString();
        GridView5.Visible = true;
    }
  
   
    protected void GridView2_SelectedIndexChanged2(object sender, EventArgs e)
    {
        Session["sid"] = int.Parse(GridView2.SelectedRow.Cells[0].Text.ToString());
        Response.Redirect("~/Admin/supchequeinsert.aspx");
    }
    protected void GridView3_SelectedIndexChanged2(object sender, EventArgs e)
    {
        Session["sid"] = int.Parse(GridView3.SelectedRow.Cells[0].Text.ToString());
        Response.Redirect("~/Admin/supchequeinsert.aspx");
    }
}
