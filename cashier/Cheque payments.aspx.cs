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

public partial class cashier_Cheque_payments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        CashierInsertDetails.AddChequeissuedetails(1, int.Parse(TextBox10.Text.ToString()),0, TextBox1.Text.ToString(), DropDownList5.Text.ToString(), DateTime.Parse(Calendar1.SelectedDate.ToString()), DropDownList1.Text.ToString(), DropDownList6.Text.ToString(), TextBox5.Text.ToString(), TextBox11.Text.ToString(), DropDownList3.Text.ToString(), DateTime.Parse(TextBox12.Text.ToString()), double.Parse(TextBox13.Text.ToString()), int.Parse(TextBox6.Text.ToString()), TextBox7.Text.ToString(), TextBox14.Text.ToString(), TextBox15.Text.ToString(), TextBox16.Text.ToString(), DropDownList7.Text.ToString(), TextBox9.Text.ToString(), TextBox8.Text.ToString(), Session["sc"].ToString());
    }
}
