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

public partial class Accountent_ownchequeissue : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label57.Text = System.DateTime.Today.ToString();
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        try
        {
            CashierInsertDetails.AddChequeissuedetails(1, int.Parse(TextBox10.Text.ToString()), 0, TextBox1.Text.ToString(), DropDownList5.Text.ToString(), DateTime.Parse(Label57.Text.ToString()), DropDownList1.Text.ToString(), DropDownList6.Text.ToString(), DropDownList8.Text.ToString(), TextBox11.Text.ToString(), DropDownList3.Text.ToString(), DateTime.Parse(TextBox12.Text.ToString()), double.Parse(TextBox13.Text.ToString()), int.Parse(TextBox6.Text.ToString()), TextBox7.Text.ToString(), TextBox14.Text.ToString(), TextBox15.Text.ToString(), TextBox16.Text.ToString(), DropDownList7.Text.ToString(), TextBox9.Text.ToString(), TextBox8.Text.ToString(), Session["sc"].ToString());

        }
        catch { }
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Accountent/ownchequeissue.aspx");
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Accountent/ownchequeissue.aspx");
    }
}
