using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class cashier_Check_deposit_detsils : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label33.Text = Session["cid"].ToString();
        Label51.Text = System.DateTime.Today.ToString();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/Edit Cus cheque details.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/Custome date cheque details.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/Customer cheque detsils.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/Customer cheque detsils.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {

            CashierInsertDetails.Addcuschequedetails(1, int.Parse(Label33.Text.ToString()), TextBox1.Text.ToString(), TextBox2.Text.ToString(), TextBox3.Text.ToString(), DateTime.Parse(Label51.Text.ToString()), DropDownList1.Text.ToString(), DateTime.Parse(Calendar1.SelectedDate.ToString()), double.Parse(TextBox5.Text.ToString()), DropDownList2.Text.ToString(), DropDownList3.Text.ToString(), DropDownList4.Text.ToString(), TextBox6.Text.ToString(), TextBox7.Text.ToString(), TextBox8.Text.ToString(), TextBox9.Text.ToString(), "Not Deposit", Session["sc"].ToString());
            Label50.Text = CashierInsertDetails.issueid.ToString();
            Session["issueid"] = Label50.Text.ToString();
            Session["cuschequeno"] = TextBox3.Text.ToString();
            Session["cuschequeamount"] = TextBox5.Text.ToString();
            Session["cuschequetype"] = DropDownList1.Text.ToString();
            Session["cuschequedate"] = Calendar1.SelectedDate.ToString();
            Label51.Text = System.DateTime.Today.ToString();
            Label52.Visible = true;
            Label52.Text = "Data Store In Database Cheque Transition ID:" + Label50.Text.ToString ();
            LinkButton2.Enabled = true;
            LinkButton3.Enabled = true;
        }
        catch {
            Label53.Visible = true;
            Label53.Text = "Data Not Store Check Your All Data";
        }
        
       
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["rchid"] = Label33.Text.ToString();
        Response.Redirect("~/cashier/ChequeReturnDetailssearchview.aspx");

    }
}
