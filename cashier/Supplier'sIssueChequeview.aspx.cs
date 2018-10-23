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

public partial class cashier_Supplier_sIssueChequeview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView2.Visible = false ;
        GridView3.Visible = false ;
        GridView4.Visible = false;
        GridView5.Visible = false;
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        Session["sfn"] = DropDownList3.Text.ToString();
        GridView2.Visible = true;
    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        Session["scn"] = DropDownList2.Text.ToString();
        GridView3.Visible = true;
    }
    protected void Button15_Click(object sender, EventArgs e)
    {
        Session["snic"] = TextBox1.Text.ToString();
        GridView4.Visible = true;
    }
    protected void Button16_Click(object sender, EventArgs e)
    {
        Session["sid"] = TextBox2.Text.ToString();
        GridView5.Visible = true;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["hid1"] = int.Parse(GridView1.SelectedRow.Cells[1].Text.ToString());
        Session["oid1"] = int.Parse(GridView1.SelectedRow.Cells[0].Text.ToString());
        Session["bname1"] = GridView1.SelectedRow.Cells[14].Text.ToString();
        Session["bcode1"] = GridView1.SelectedRow.Cells[15].Text.ToString();
        Session["holdername"] = GridView1.SelectedRow.Cells[7].Text.ToString();
        Session["acno"] = GridView1.SelectedRow.Cells[8].Text.ToString();

        Session["chequeno"] = GridView1.SelectedRow.Cells[9].Text.ToString();
        Session["chequedate"] = DateTime.Parse(GridView1.SelectedRow.Cells[11].Text.ToString());
        Session["cheamount"] = double.Parse(GridView1.SelectedRow.Cells[13].Text.ToString());
        Session["chequetype"] = GridView1.SelectedRow.Cells[10].Text.ToString();
        Response.Redirect("~/cashier/selectchqueissueform.aspx");
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["hid1"] = int.Parse(GridView2.SelectedRow.Cells[1].Text.ToString());
        Session["oid1"] = int.Parse(GridView2.SelectedRow.Cells[0].Text.ToString());
        Session["bname1"] = GridView2.SelectedRow.Cells[14].Text.ToString();
        Session["bcode1"] = GridView2.SelectedRow.Cells[15].Text.ToString();
        Session["holdername"] = GridView2.SelectedRow.Cells[7].Text.ToString();
        Session["acno"] = GridView2.SelectedRow.Cells[8].Text.ToString();

        Session["chequeno"] = GridView2.SelectedRow.Cells[9].Text.ToString();
        Session["chequedate"] = DateTime.Parse(GridView2.SelectedRow.Cells[11].Text.ToString());
        Session["cheamount"] = double.Parse(GridView2.SelectedRow.Cells[12].Text.ToString());
        Session["chequetype"] = GridView2.SelectedRow.Cells[10].Text.ToString();
        Response.Redirect("~/cashier/selectchqueissueform.aspx");
    }
    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["hid1"] = int.Parse(GridView3.SelectedRow.Cells[1].Text.ToString());
        Session["oid1"] = int.Parse(GridView3.SelectedRow.Cells[0].Text.ToString());
        Session["bname1"] = GridView3.SelectedRow.Cells[14].Text.ToString();
        Session["bcode1"] = GridView3.SelectedRow.Cells[15].Text.ToString();
        Session["holdername"] = GridView3.SelectedRow.Cells[7].Text.ToString();
        Session["acno"] = GridView3.SelectedRow.Cells[8].Text.ToString();

        Session["chequeno"] = GridView3.SelectedRow.Cells[9].Text.ToString();
        Session["chequedate"] = DateTime.Parse(GridView3.SelectedRow.Cells[11].Text.ToString());
        Session["cheamount"] = double.Parse(GridView3.SelectedRow.Cells[12].Text.ToString());
        Session["chequetype"] = GridView3.SelectedRow.Cells[10].Text.ToString();
        Response.Redirect("~/cashier/selectchqueissueform.aspx");
    }
    protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["hid1"] = int.Parse(GridView4.SelectedRow.Cells[1].Text.ToString());
        Session["oid1"] = int.Parse(GridView4.SelectedRow.Cells[0].Text.ToString());
        Session["bname1"] = GridView4.SelectedRow.Cells[14].Text.ToString();
        Session["bcode1"] = GridView4.SelectedRow.Cells[15].Text.ToString();
        Session["holdername"] = GridView4.SelectedRow.Cells[7].Text.ToString();
        Session["acno"] = GridView4.SelectedRow.Cells[8].Text.ToString();

        Session["chequeno"] = GridView4.SelectedRow.Cells[9].Text.ToString();
        Session["chequedate"] = DateTime.Parse(GridView4.SelectedRow.Cells[11].Text.ToString());
        Session["cheamount"] = double.Parse(GridView4.SelectedRow.Cells[12].Text.ToString());
        Session["chequetype"] = GridView4.SelectedRow.Cells[10].Text.ToString();
        Response.Redirect("~/cashier/selectchqueissueform.aspx");
    }

    protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["hid1"] = int.Parse(GridView5.SelectedRow.Cells[1].Text.ToString());
        Session["oid1"] = int.Parse(GridView5.SelectedRow.Cells[0].Text.ToString());
        Session["bname1"] = GridView5.SelectedRow.Cells[14].Text.ToString();
        Session["bcode1"] = GridView5.SelectedRow.Cells[15].Text.ToString();
        Session["holdername"] = GridView5.SelectedRow.Cells[7].Text.ToString();
        Session["acno"] = GridView5.SelectedRow.Cells[8].Text.ToString();

        Session["chequeno"] = GridView5.SelectedRow.Cells[9].Text.ToString();
        Session["chequedate"] = DateTime.Parse(GridView5.SelectedRow.Cells[11].Text.ToString());
        Session["cheamount"] = double.Parse(GridView5.SelectedRow.Cells[13].Text.ToString());
        Session["chequetype"] = GridView5.SelectedRow.Cells[10].Text.ToString();
        Response.Redirect("~/cashier/selectchqueissueform.aspx");
    }
}
