﻿using System;
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

public partial class cashier_Supplier_Date_cheque_ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label33.Text = Session["issueid1"].ToString();
        Label41.Text = Session["supchequeno"].ToString();
        Label42.Text = Session["supchequeamount"].ToString();
        TextBox4.Text = Session["supchequedate"].ToString();
        Label43.Text = Session["supchequetype"].ToString();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            CashierInsertDetails.AddSupdatechequedetails(int.Parse(Label33.Text.ToString()), Label41.Text.ToString(), TextBox4.Text.ToString(), double.Parse(Label42.Text.ToString()), Label43.Text.ToString());

        }
        catch { }
      
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/Supplier cheque details .aspx");
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/Supplier cheque details .aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/Edit sup date cheque details.aspx");
    }
}
