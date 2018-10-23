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

public partial class Accountentlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            try
            {
                // Session["un"] = TextBox1.Text.ToString();
                SqlDataReader dr1 = Logindata.GetCategory("SELECT Firstname,Lastname,Address,Phonenumber,Joindate,Username,Password,Staffcode FROM Accountant where Username='" + TextBox1.Text.ToString() + "'");
                while (dr1.Read())
                {
                    Label3.Text = dr1.GetValue(6).ToString();
                    Label6.Text = dr1.GetValue(7).ToString();
                    Session["cname1"] = dr1.GetValue(0).ToString();
                    Session["cname2"] = dr1.GetValue(1).ToString();
                    Session["address1"] = dr1.GetValue(2).ToString();
                    Session["ph1"] = dr1.GetValue(3).ToString();
                    Session["joindate"] = dr1.GetValue(4).ToString();
                    Session["un"] = dr1.GetValue(5).ToString();
                    Session["sc"] = dr1.GetValue(7).ToString();




                }

                if ((Label3.Text == TextBox2.Text) && (Label6.Text == TextBox3.Text))
                {

                    //TreeView1.Enabled = true;
                    //Response.Redirect("~/Customer/OrderStatus.aspx");
                    Response.Redirect("~/Accountent/intro.aspx");
                    //Label4.Text = Session["cname"].ToString();
                    //Button13.Visible = true;
                    // Panel1.Visible = false;

                    // Master.logMessage = "LogOff" + "(" + TextBox1.Text.ToString() + ")";

                }

                else
                {
                    Label4.Text = "Check your Data";
                }
            }
            catch
            {
                Label4.Text = "Check your Data";
            }
        }
        else
            Label4.Text = "Enter userName";
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cmsintro.aspx");
    }
}

