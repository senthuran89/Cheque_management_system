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

public partial class cashier_Edit_Cus_cheque_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                SqlDataReader dr = updateclass.Getdetail("select * from Customers_inchequedetails where ID='" + Session["issueid"] + "'");
                while (dr.Read())
                {
                    Label33.Text = dr.GetValue(1).ToString();
                    Label52.Text = dr.GetValue(0).ToString();
                    TextBox1.Text = dr.GetValue(2).ToString();
                    TextBox2.Text = dr.GetValue(3).ToString();
                    TextBox3.Text = dr.GetValue(4).ToString();
                    TextBox10.Text = dr.GetValue(5).ToString();

                    TextBox14.Text = dr.GetValue(6).ToString();
                    TextBox4.Text = dr.GetValue(7).ToString();
                    TextBox5.Text = dr.GetValue(8).ToString();

                    TextBox11.Text = dr.GetValue(9).ToString();
                    TextBox12.Text = dr.GetValue(10).ToString();
                    TextBox13.Text = dr.GetValue(11).ToString();

                    TextBox6.Text = dr.GetValue(12).ToString();
                    TextBox7.Text = dr.GetValue(13).ToString();
                    TextBox8.Text = dr.GetValue(14).ToString();
                    TextBox9.Text = dr.GetValue(15).ToString();
                   
                                

                }


            }
            catch
            {
                //Label30.Text = "Supplier's data Not Available";

            }

        }
    }
    protected void LinkButton6_Click(object sender, EventArgs e)

    {

        try
        {
            updateclass.Editcuschequedetails(int.Parse(Label52.Text.ToString()), int.Parse(Label33.Text.ToString()), TextBox1.Text.ToString(), TextBox2.Text.ToString(), TextBox3.Text.ToString(), DateTime.Parse(TextBox10.Text.ToString()), DropDownList1.Text.ToString(), DateTime.Parse(TextBox4.Text.ToString()), double.Parse(TextBox5.Text.ToString()), DropDownList2.Text.ToString(), DropDownList3.Text.ToString(), DropDownList4.Text.ToString(), TextBox6.Text.ToString(), TextBox7.Text.ToString(), TextBox8.Text.ToString(), TextBox9.Text.ToString(), "Not Deposit", Session["sc"].ToString());

            Session["issueid"] = Label52.Text.ToString();
            Session["cuschequeno"] = TextBox3.Text.ToString();
            Session["cuschequeamount"] = TextBox5.Text.ToString();
            Session["cuschequetype"] = TextBox14.Text.ToString();
            Session["cuschequedate"] = TextBox4.Text.ToString();
            Label53.Visible = true;
            Label53.Text = "Update Data Store In Data Base";

        }
        catch {
            Label54.Visible = true;
            Label54.Text = "Check All Data ";
        }

       
    
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/Edit Cus cheque details.aspx");
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/Edit Cus date cheque details.aspx");
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/Customer cheque detsils.aspx");
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/Customer cheque detsils.aspx");
    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/Custome date cheque details.aspx");
    }
}
