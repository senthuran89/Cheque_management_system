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

public partial class Accountent_chquereturndetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox13.Text = Session["hid1"].ToString();
        TextBox14.Text = Session["oid1"].ToString();
        TextBox15.Text = Session["bname1"].ToString();
        TextBox16.Text = Session["bcode1"].ToString();
        TextBox5.Text = Session["bbcode1"].ToString();

        TextBox6.Text = Session["chequeno"].ToString();
        TextBox10.Text = Session["chequedate"].ToString();
        TextBox9.Text = Session["cheamount"].ToString();
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        try
        {
            CashierInsertDetails.Addchequereturndetails(int.Parse(TextBox13.Text.ToString()), int.Parse(TextBox14.Text.ToString()), TextBox6.Text.ToString(), TextBox15.Text.ToString(), TextBox16.Text.ToString(), TextBox5.Text.ToString(), DateTime.Parse(TextBox10.Text.ToString()), double.Parse(TextBox9.Text.ToString()), DateTime.Parse(Calendar1.SelectedDate.ToString()), TextBox7.Text.ToString(), Session["sc"].ToString());


        }
        catch { }
    
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Accountent/Chequereturnview.aspx");
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Accountent/Chequereturnview.aspx");
    }
}
