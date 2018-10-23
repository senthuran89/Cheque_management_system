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

public partial class cashier_Customer_Reg_form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label31.Text = System.DateTime.Today.ToString();
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/Customer cheque detsils.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/Customer Reg form.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/Customer details edit form.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)

    {
      
        try
        {
            CashierInsertDetails.Addcustomer(1, TextBox1.Text.ToString(), TextBox2.Text.ToString(), TextBox3.Text.ToString(), DropDownList1.Text.ToString(), TextBox4.Text.ToString(), TextBox5.Text.ToString(), TextBox6.Text.ToString(), TextBox7.Text.ToString(), TextBox8.Text.ToString(), TextBox9.Text.ToString(), TextBox10.Text.ToString(), TextBox11.Text.ToString(), TextBox12.Text.ToString(), TextBox13.Text.ToString(), TextBox14.Text.ToString(), DropDownList2.Text.ToString(), DropDownList3.Text.ToString(), DropDownList4.Text.ToString(), TextBox15.Text.ToString(), DateTime.Parse(Label31.Text.ToString ()), TextBox16.Text.ToString(), Session["sc"].ToString());
            Label30.Text = CashierInsertDetails.cno.ToString();
            Session["cid"] = Label30.Text.ToString();
            Label32.Visible = true;
            Label32.Text = "Customer's Details Store In Database , Customer ID:" + Session["cid"] ;
            LinkButton2.Enabled = true;
            LinkButton3.Enabled = true;
        
        }
        catch {
            Label33.Visible = true;
            Label33.Text = "Data Not Store Check all values then Save";
        }


    }
}
