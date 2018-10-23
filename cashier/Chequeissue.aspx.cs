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

public partial class cashier_Chequeissue : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox17.Text = DateTime.Today.Date.ToString();

      TextBox10.Text =  Session["hid1"].ToString ();
       TextBox22.Text = Session["oid1"] .ToString ();
       TextBox18.Text = Session["bname1"].ToString ();
        TextBox19.Text =Session["bcode1"].ToString ();
      TextBox1.Text =  Session["holdername"] .ToString ();
       TextBox5.Text = Session["acno"] .ToString ();
       TextBox11.Text = Session["chequeno"] .ToString ();
       TextBox12.Text = Session["chequedate"] .ToString ();
        TextBox13.Text =Session["cheamount"].ToString ();
        TextBox20.Text = Session["chequetype"].ToString();
        TextBox6.Text = Session["bid"].ToString();
        TextBox7.Text = Session["comnama"].ToString();

    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {

        CashierInsertDetails.AddChequeissuedetails(1, int.Parse(TextBox10.Text.ToString()),int.Parse(TextBox22.Text .ToString ()), TextBox1.Text.ToString(), DropDownList5.Text.ToString(), DateTime.Parse(TextBox17.Text.ToString()), TextBox18.Text.ToString(), TextBox19.Text.ToString(), TextBox5.Text.ToString(), TextBox11.Text.ToString(), TextBox20.Text.ToString(), DateTime.Parse(TextBox12.Text.ToString()), double.Parse(TextBox13.Text.ToString()), int.Parse(TextBox6.Text.ToString()), TextBox7.Text.ToString(), TextBox14.Text.ToString(), TextBox15.Text.ToString(), TextBox16.Text.ToString(), TextBox21.Text.ToString(), TextBox8.Text.ToString(), TextBox9.Text.ToString(), Session["sc"].ToString());
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/selectchqueissueform.aspx");
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/options.aspx");
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/options.aspx");
    }
}
