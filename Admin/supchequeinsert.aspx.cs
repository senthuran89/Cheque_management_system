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

public partial class Admin_supchequeinsert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label33.Text = Session["sid"].ToString();
        Label51.Text = System.DateTime.Today.ToString();
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        try
        {
            CashierInsertDetails.AddSupchequedetails(1, int.Parse(Label33.Text.ToString()), TextBox1.Text.ToString(), TextBox2.Text.ToString(), TextBox3.Text.ToString(), DateTime.Parse(Label51.Text.ToString()), DropDownList1.Text.ToString(), DateTime.Parse(TextBox4.Text.ToString()), double.Parse(TextBox5.Text.ToString()), DropDownList5.Text.ToString(), DropDownList3.Text.ToString(), DropDownList4.Text.ToString(), TextBox6.Text.ToString(), TextBox7.Text.ToString(), TextBox8.Text.ToString(), TextBox9.Text.ToString(), "Not Deposit", Session["sc"].ToString());
            Label50.Text = CashierInsertDetails.issueid1.ToString();
            Session["issueid1"] = Label50.Text.ToString();
            Session["supchequeno"] = TextBox3.Text.ToString();
            Session["supchequeamount"] = TextBox5.Text.ToString();
            Session["supchequetype"] = DropDownList1.Text.ToString();
            Session["supchequedate"] = TextBox4.Text.ToString();


        }
        catch
        {
        }

      
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Viewandeditsupinchequedata.aspx");
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/SupDatecheque.aspx");
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/supchequeinsert.aspx");
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/supchequeinsert.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["rchid"] = Label33.Text.ToString();
        Response.Redirect("~/Admin/Chequereturnsearchform.aspx");
    }
}
