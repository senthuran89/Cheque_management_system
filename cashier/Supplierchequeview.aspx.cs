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

public partial class cashier_Supplierchequeview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView4.Visible = false ;
        GridView5.Visible = false ;
        GridView6.Visible = false ;
        GridView7.Visible = false; 
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
            }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Session["supfn"] = DropDownList3.Text.ToString();
        GridView4.Visible = true;
    }
    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["cid1"] = int.Parse(GridView3.SelectedRow.Cells[0].Text.ToString());
        Session["tfrid"] = int.Parse(GridView3.SelectedRow.Cells[1].Text.ToString());
        Session["chequeno"] = GridView3.SelectedRow.Cells[7].Text.ToString();
        Session["chequedate"] = DateTime.Parse(GridView3.SelectedRow.Cells[10].Text.ToString());
        Session["cheamount"] = double.Parse(GridView3.SelectedRow.Cells[11].Text.ToString());

        Response.Redirect("~/cashier/Cheque Deposit.aspx");
    }
    protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
    {
      
    }
    protected void GridView4_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Session["cid1"] = int.Parse(GridView4.SelectedRow.Cells[0].Text.ToString());
        Session["tfrid"] = int.Parse(GridView4.SelectedRow.Cells[1].Text.ToString());
        Session["chequeno"] = GridView4.SelectedRow.Cells[8].Text.ToString();
        Session["chequedate"] = DateTime.Parse(GridView4.SelectedRow.Cells[11].Text.ToString());
        Session["cheamount"] = double.Parse(GridView4.SelectedRow.Cells[12].Text.ToString());

        Response.Redirect("~/cashier/Cheque Deposit.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Session["supcn"] = DropDownList2.Text.ToString();
        GridView5.Visible = true; 
    }
    protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["cid1"] = int.Parse(GridView5.SelectedRow.Cells[0].Text.ToString());
        Session["tfrid"] = int.Parse(GridView5.SelectedRow.Cells[1].Text.ToString());
        Session["chequeno"] = GridView5.SelectedRow.Cells[8].Text.ToString();
        Session["chequedate"] = DateTime.Parse(GridView5.SelectedRow.Cells[11].Text.ToString());
        Session["cheamount"] = double.Parse(GridView5.SelectedRow.Cells[12].Text.ToString());

        Response.Redirect("~/cashier/Cheque Deposit.aspx");
    }
    protected void GridView6_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["cid1"] = int.Parse(GridView6.SelectedRow.Cells[0].Text.ToString());
        Session["tfrid"] = int.Parse(GridView6.SelectedRow.Cells[1].Text.ToString());
        Session["chequeno"] = GridView6.SelectedRow.Cells[9].Text.ToString();
        Session["chequedate"] = DateTime.Parse(GridView6.SelectedRow.Cells[12].Text.ToString());
        Session["cheamount"] = double.Parse(GridView6.SelectedRow.Cells[13].Text.ToString());

        Response.Redirect("~/cashier/Cheque Deposit.aspx");
    
    }
    protected void Button10_Click(object sender, EventArgs e)
    {

        Session["supnic"] = TextBox1.Text.ToString();
        GridView6.Visible = true; 
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Session["supid"] = TextBox2.Text.ToString();
        GridView7.Visible = true; 
    }
    protected void GridView7_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["cid1"] = int.Parse(GridView7.SelectedRow.Cells[0].Text.ToString());
        Session["tfrid"] = int.Parse(GridView7.SelectedRow.Cells[1].Text.ToString());
        Session["chequeno"] = GridView7.SelectedRow.Cells[7].Text.ToString();
        Session["chequedate"] = DateTime.Parse(GridView7.SelectedRow.Cells[10].Text.ToString());
        Session["cheamount"] = double.Parse(GridView7.SelectedRow.Cells[11].Text.ToString());

        Response.Redirect("~/cashier/Cheque Deposit.aspx");
    }
}
