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

public partial class Accountent_Cusdatechequedetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label33.Text = Session["issueid"].ToString();
        Label41.Text = Session["cuschequeno"].ToString();
        Label42.Text = Session["cuschequeamount"].ToString();
        TextBox4.Text = Session["cuschequedate"].ToString();
        Label43.Text = Session["cuschequetype"].ToString();
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        try
        {
            CashierInsertDetails.Addcusdatechequedetails(int.Parse(Label33.Text.ToString()), Label41.Text.ToString(), TextBox4.Text.ToString(), double.Parse(Label42.Text.ToString()), Label43.Text.ToString());


        }
        catch
        { }
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Accountent/Cusdatechequeupdate.aspx");
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Accountent/Cuschequedetailsinsertform.aspx");
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Accountent/Cusdatechequedetails.aspx");
    }
}
