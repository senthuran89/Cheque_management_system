using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient ;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Accountent_Cuschequedetailsinsertform : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label33.Text = Session["cid"].ToString();
        Label51.Text = System.DateTime.Today.ToString();
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        CashierInsertDetails.Addcuschequedetails(1, int.Parse(Label33.Text.ToString()), TextBox1.Text.ToString(), TextBox2.Text.ToString(), TextBox3.Text.ToString(), DateTime.Parse(Label51.Text.ToString()), DropDownList1.Text.ToString(), DateTime.Parse(TextBox4.Text.ToString()), double.Parse(TextBox5.Text.ToString()), DropDownList2.Text.ToString(), DropDownList3.Text.ToString(), DropDownList4.Text.ToString(), TextBox6.Text.ToString(), TextBox7.Text.ToString(), TextBox8.Text.ToString(), TextBox9.Text.ToString(), "Not Deposit", Session["sc"].ToString());
        Label50.Text = CashierInsertDetails.issueid.ToString();
        Session["issueid"] = Label50.Text.ToString();
        Session["cuschequeno"] = TextBox3.Text.ToString();
        Session["cuschequeamount"] = TextBox5.Text.ToString();
        Session["cuschequetype"] = DropDownList1.Text.ToString();
        Session["cuschequedate"] = TextBox4.Text.ToString();
        Label51.Text = System.DateTime.Today.ToString();
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Accountent/CuschequedetailsEdit.aspx");
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Accountent/Cusdatechequedetails.aspx");
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Accountent/Cuschequedetailsinsertform.aspx");
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Accountent/Cuschequedetailsinsertform.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["rchid"] = Label33.Text.ToString();
        Response.Redirect("~/Accountent/Chequereturnsearchform.aspx");
    }
}
