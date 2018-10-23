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

public partial class cashier_Supplier_Reg_form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label31.Text = System.DateTime.Today.ToString();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            CashierInsertDetails.Addsuppliers(1, TextBox17.Text.ToString(), TextBox18.Text.ToString(), TextBox19.Text.ToString(), DropDownList1.Text.ToString(), TextBox4.Text.ToString(), TextBox5.Text.ToString(), TextBox6.Text.ToString(), TextBox7.Text.ToString(), TextBox20.Text.ToString(), TextBox9.Text.ToString(), TextBox10.Text.ToString(), TextBox11.Text.ToString(), TextBox12.Text.ToString(), TextBox13.Text.ToString(), TextBox14.Text.ToString(), DropDownList2.Text.ToString(), DropDownList3.Text.ToString(), DropDownList4.Text.ToString(), TextBox15.Text.ToString(), DateTime.Parse(Label31.Text.ToString()), TextBox21.Text.ToString(), Session["sc"].ToString());
            Label30.Text = CashierInsertDetails.Sno.ToString();
            Session["sid"] = Label30.Text.ToString();
            Label32.Visible = true;
            Label32.Text = "Supplier's Data Store In Database. Supplier ID :" + Label30.Text;
            LinkButton2.Enabled = true;
            LinkButton3.Enabled = true;

        }
        catch
        {
            Label33.Visible = true;
            Label33.Text = "Data Not Store In Database .Please Check The Data"; 
        }


    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/Supplier details Edit form.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/Supplier cheque details .aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/Supplier Reg form.aspx");
    }
}
