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

public partial class Sitemap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            try
            {
                // Session["un"] = TextBox1.Text.ToString();
                SqlDataReader dr1 = Logindata.GetCategory("SELECT Firstname,Lastname,Address,Phonenumber,Joindate,Username,Password,Staffcode FROM Cashier where Username='" + TextBox1.Text.ToString() + "'");
                while (dr1.Read())
                {
                    Label17.Text = dr1.GetValue(6).ToString();
                    Label18.Text = dr1.GetValue(7).ToString();
                    Session["cname1"] = dr1.GetValue(0).ToString();
                    Session["cname2"] = dr1.GetValue(1).ToString();
                    Session["address1"] = dr1.GetValue(2).ToString();
                    Session["ph1"] = dr1.GetValue(3).ToString();
                    Session["joindate"] = dr1.GetValue(4).ToString();
                    Session["un"] = dr1.GetValue(5).ToString();
                    Session["sc"] = dr1.GetValue(7).ToString();




                }

                if ((Label17.Text == TextBox2.Text) && (Label18.Text == TextBox3.Text))
                {

                    //TreeView1.Enabled = true;
                    //Response.Redirect("~/Customer/OrderStatus.aspx");
                    Response.Redirect("~/Cashier/intro.aspx");
                    //Label4.Text = Session["cname"].ToString();
                    //Button13.Visible = true;
                    // Panel1.Visible = false;

                    // Master.logMessage = "LogOff" + "(" + TextBox1.Text.ToString() + ")";

                }

                else
                {
                    Label16.Text = "Enter The Correct Data";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                }
            }
            catch
            {
                Label16.Text = "Enter The Correct Data";
                TextBox2.Text = "";
                TextBox3.Text = "";
            }
        }
        else
            Label16.Text = "Enter userName";
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/home.aspx");
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        if (TextBox4.Text != "")
        {
            try
            {
                // Session["un"] = TextBox1.Text.ToString();
                SqlDataReader dr1 = Logindata.GetCategory("SELECT Firstname,Lastname,Address,Phonenumber,Joindate,Username,Password,Staffcode FROM Accountant where Username='" + TextBox4.Text.ToString() + "'");
                while (dr1.Read())
                {
                    Label20.Text = dr1.GetValue(6).ToString();
                    Label21.Text = dr1.GetValue(7).ToString();
                    Session["cname1"] = dr1.GetValue(0).ToString();
                    Session["cname2"] = dr1.GetValue(1).ToString();
                    Session["address1"] = dr1.GetValue(2).ToString();
                    Session["ph1"] = dr1.GetValue(3).ToString();
                    Session["joindate"] = dr1.GetValue(4).ToString();
                    Session["un"] = dr1.GetValue(5).ToString();
                    Session["sc"] = dr1.GetValue(7).ToString();




                }

                if ((Label20.Text == TextBox5.Text) && (Label21.Text == TextBox6.Text))
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
                    Label19.Text = "Enter The Correct Data";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                }
            }
            catch
            {
                Label19.Text = "Enter The Correct Data";
                TextBox5.Text = "";
                TextBox6.Text = "";
            }
        }
        else
            Label19.Text = "Enter userName";
    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/home.aspx");
    }
    protected void LinkButton12_Click(object sender, EventArgs e)
    {
        if (TextBox7.Text != "")
        {
            try
            {
                // Session["un"] = TextBox1.Text.ToString();
                SqlDataReader dr1 = Logindata.GetCategory("SELECT UserName,Password FROM Admin where UserName='" + TextBox7.Text.ToString() + "'");
                while (dr1.Read())
                {
                    Label23.Text = dr1.GetValue(1).ToString();
                    Session["cname"] = dr1.GetValue(0).ToString();


                }

                if (Label23.Text == TextBox8.Text)
                {

                    //TreeView1.Enabled = true;
                    //Response.Redirect("~/Customer/OrderStatus.aspx");
                    Response.Redirect("~/Admin/adminintro.aspx");
                    //Label4.Text = Session["cname"].ToString();
                    //Button13.Visible = true;
                    // Panel1.Visible = false;

                    // Master.logMessage = "LogOff" + "(" + TextBox1.Text.ToString() + ")";

                }

                else
                {
                    Label22.Text = "Enter The Correct Data";
                    TextBox8.Text = "";

                }
            }
            catch
            {
                Label22.Text = "Enter The Correct Data";
                TextBox8.Text = "";

            }
        }
        else
            Label22.Text = "Enter userName";
    }
    protected void LinkButton13_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/home.aspx");
    }
}
