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

public partial class cashier_CustomersChequeview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView2.Visible = false;
        GridView3.Visible = false ;
        GridView4.Visible = false;
        GridView5.Visible = false ;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["cid1"] = int.Parse(GridView1.SelectedRow.Cells[0].Text.ToString());
        Session["tfrid"] = int.Parse(GridView1.SelectedRow.Cells[1].Text.ToString());
        Session["chequeno"] = GridView1.SelectedRow.Cells[13].Text.ToString();
        Session ["chequedate"]=DateTime .Parse (GridView1.SelectedRow .Cells [16].Text .ToString ());
        Session ["cheamount"]=double .Parse (GridView1 .SelectedRow .Cells [17].Text .ToString ());

        Response.Redirect("~/cashier/Cheque Deposit.aspx");

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        Session["cid1"] = int.Parse(GridView2.SelectedRow.Cells[0].Text.ToString());
        Session["tfrid"] = int.Parse(GridView2.SelectedRow.Cells[1].Text.ToString());
        Session["chequeno"] = GridView2.SelectedRow.Cells[13].Text.ToString();
        Session["chequedate"] = DateTime.Parse(GridView2.SelectedRow.Cells[16].Text.ToString());
        Session["cheamount"] = double.Parse(GridView2.SelectedRow.Cells[17].Text.ToString());
        Response.Redirect("~/cashier/Cheque Deposit.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["cusfn"] = DropDownList3.Text.ToString();
        GridView2.Visible = true;
        Label45.Text = "Search By Customer Name";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["cuscomname"] = DropDownList2.Text.ToString();
        GridView3.Visible = true;
        Label45.Text = "Search By Customer's Company Name";
    }
    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["cid1"] = int.Parse(GridView3.SelectedRow.Cells[0].Text.ToString());
        Session["tfrid"] = int.Parse(GridView3.SelectedRow.Cells[1].Text.ToString());
        Session["chequeno"] = GridView3.SelectedRow.Cells[13].Text.ToString();
        Session["chequedate"] = DateTime.Parse(GridView3.SelectedRow.Cells[16].Text.ToString());
        Session["cheamount"] = double.Parse(GridView3.SelectedRow.Cells[17].Text.ToString());
        Response.Redirect("~/cashier/Cheque Deposit.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["cusnic"] =TextBox1.Text.ToString();
        GridView4.Visible = true;
        Label45.Text = "Search By Customer's NIC Number";
    }
    protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["cid1"] = int.Parse(GridView4.SelectedRow.Cells[0].Text.ToString());
        Session["tfrid"] = int.Parse(GridView4.SelectedRow.Cells[1].Text.ToString());
        Session["chequeno"] = GridView4.SelectedRow.Cells[15].Text.ToString();
        Session["chequedate"] = DateTime.Parse(GridView4.SelectedRow.Cells[18].Text.ToString());
        Session["cheamount"] = double.Parse(GridView4.SelectedRow.Cells[19].Text.ToString());
        Response.Redirect("~/cashier/Cheque Deposit.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["chequeno"] = TextBox2.Text.ToString();
        GridView5.Visible = true;
        Label45.Text = "Search By Customer's Cheque Number";
    }
    protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["cid1"] = int.Parse(GridView5.SelectedRow.Cells[0].Text.ToString());
        Session["tfrid"] = int.Parse(GridView5.SelectedRow.Cells[1].Text.ToString());
        Session["chequeno"] = GridView5.SelectedRow.Cells[14].Text.ToString();
        Session["chequedate"] = DateTime.Parse(GridView5.SelectedRow.Cells[17].Text.ToString());
        Session["cheamount"] = double.Parse(GridView5.SelectedRow.Cells[18].Text.ToString());
        Response.Redirect("~/cashier/Cheque Deposit.aspx");
    }
}
