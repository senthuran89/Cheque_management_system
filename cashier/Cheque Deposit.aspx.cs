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

public partial class cashier_Cheque_Deposit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        TextBox11.Text = Session["cid1"].ToString();
        TextBox6.Text = Session["cheamount"].ToString ();
        TextBox9.Text = Session["chequeno"].ToString();
        TextBox12.Text = Session["tfrid"].ToString();
        TextBox10.Text = Session["chequedate"].ToString();


    }
    protected void LinkButton1_Click(object sender, EventArgs e)

    {

        try
        {
            CashierInsertDetails.AddChequedepositdetails(DropDownList3.Text.ToString(), DropDownList1.Text.ToString(), DropDownList2.Text.ToString(), DateTime.Parse(Calendar1.SelectedDate.ToString()), TextBox9.Text.ToString(), DateTime.Parse(TextBox10.Text.ToString()), double.Parse(TextBox6.Text.ToString()), int.Parse(TextBox11.Text.ToString()), int.Parse(TextBox12.Text.ToString()), TextBox7.Text.ToString(), TextBox8.Text.ToString(), Session["sc"].ToString());
   
        }
        catch { 
        }
      
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/Cheque Deposit.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/Cheque Deposit.aspx");
    }
}
