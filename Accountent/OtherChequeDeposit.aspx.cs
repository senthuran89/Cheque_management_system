﻿using System;
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

public partial class Accountent_OtherChequeDeposit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label50.Text = System.DateTime.Today.ToString();
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        try
        {
            CashierInsertDetails.AddChequedepositdetails(TextBox5.Text.ToString(), DropDownList1.Text.ToString(), DropDownList2.Text.ToString(), DateTime.Parse(Label50.Text.ToString()), TextBox9.Text.ToString(), DateTime.Parse(TextBox10.Text.ToString()), double.Parse(TextBox6.Text.ToString()), int.Parse(TextBox11.Text.ToString()), int.Parse(TextBox12.Text.ToString()), TextBox7.Text.ToString(), TextBox8.Text.ToString(), Session["sc"].ToString());


        }
        catch { }
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Accountent/OtherChequeDeposit.aspx");
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Accountent/OtherChequeDeposit.aspx");
    }
}
