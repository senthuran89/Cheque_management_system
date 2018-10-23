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

public partial class cashier_Cash_Withdrowal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)

    {
        try
        {
            CashierInsertDetails.Addcashwithdrwaldetails(DropDownList1.Text.ToString(), DropDownList2.Text.ToString(), DropDownList3.Text.ToString(), DateTime.Parse(Calendar1.SelectedDate.ToString()), TextBox9.Text.ToString(), double.Parse(TextBox6.Text.ToString()), TextBox7.Text.ToString(), TextBox8.Text.ToString(), Session["sc"].ToString());
    
        }
        catch { }
     
    
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/cashier/Cash Withdrowal.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/Cash Withdrowal.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
}

