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

public partial class cashier_Custome_date_check_Deposit_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)

    {
        try
        {
            Label33.Text = Session["issueid"].ToString();
            Label41.Text = Session["cuschequeno"].ToString();
            Label42.Text = Session["cuschequeamount"].ToString();
            TextBox4.Text = Session["cuschequedate"].ToString();
            Label43.Text = Session["cuschequetype"].ToString();
        }

        catch { }


       
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/Customer cheque detsils.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
     //   Response.Redirect("~/cashier/Edit Cus date cheque details.aspx");
        Response.Redirect("~/cashier/Edit Cus cheque details.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)

    {

        try
        {
            CashierInsertDetails.Addcusdatechequedetails(int.Parse(Label33.Text.ToString()), Label41.Text.ToString(), TextBox4.Text.ToString(), double.Parse(Label42.Text.ToString()), Label43.Text.ToString());
            Label44.Text = "Data Store In Database";
        
        }
        catch
        { }
       
    }
}
