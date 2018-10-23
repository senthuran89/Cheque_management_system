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

public partial class Accountent_addnewsuppliers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label31.Text = System.DateTime.Today.ToString();
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        CashierInsertDetails.Addsuppliers(1, TextBox17.Text.ToString(), TextBox18.Text.ToString(), TextBox19.Text.ToString(), DropDownList1.Text.ToString(), TextBox4.Text.ToString(), TextBox5.Text.ToString(), TextBox6.Text.ToString(), TextBox7.Text.ToString(), TextBox20.Text.ToString(), TextBox9.Text.ToString(), TextBox10.Text.ToString(), TextBox11.Text.ToString(), TextBox12.Text.ToString(), TextBox13.Text.ToString(), TextBox14.Text.ToString(), DropDownList2.Text.ToString(), DropDownList3.Text.ToString(), DropDownList4.Text.ToString(), TextBox15.Text.ToString(), DateTime.Parse(Label31.Text.ToString()), TextBox21.Text.ToString(), Session["sc"].ToString());
        Label30.Text = CashierInsertDetails.Sno.ToString();
        Session["sid"] = Label30.Text.ToString();
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Accountent/updatesupdetails.aspx");
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Accountent/Supchequeinsert.aspx");
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Accountent/addnewsuppliers.aspx");
    }
}
