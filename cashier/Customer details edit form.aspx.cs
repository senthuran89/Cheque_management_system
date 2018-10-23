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

public partial class cashier_Customer_details_edit_form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                SqlDataReader dr = updateclass.Getdetail("select * from Customer where Cid='" + Session["cid"] + "'");
                while (dr.Read())
                {
                    TextBox27.Text = dr.GetValue(0).ToString();
                    TextBox17.Text = dr.GetValue(1).ToString();
                    TextBox18.Text = dr.GetValue(2).ToString();
                    TextBox19.Text = dr.GetValue(3).ToString();
                    TextBox26.Text = dr.GetValue(4).ToString();
                    TextBox4.Text = dr.GetValue(5).ToString();
                    TextBox5.Text = dr.GetValue(6).ToString();
                    TextBox6.Text = dr.GetValue(7).ToString();
                    TextBox7.Text = dr.GetValue(8).ToString();
                    TextBox20.Text = dr.GetValue(9).ToString();
                    TextBox9.Text = dr.GetValue(10).ToString();
                    TextBox10.Text = dr.GetValue(11).ToString();
                    TextBox11.Text = dr.GetValue(12).ToString();
                    TextBox12.Text = dr.GetValue(13).ToString();
                    TextBox13.Text = dr.GetValue(14).ToString();
                    TextBox14.Text = dr.GetValue(15).ToString();
                    TextBox22.Text = dr.GetValue(16).ToString();

                    TextBox24.Text = dr.GetValue(17).ToString();
                    TextBox23.Text = dr.GetValue(18).ToString();
                    TextBox15.Text = dr.GetValue(19).ToString();
                    TextBox25.Text = dr.GetValue(20).ToString();
                    TextBox28.Text = dr.GetValue(21).ToString();

                }


            }
            catch
            {
                Label30.Text = "Customer's data Not Available";

            }

        }
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        try
        {

            updateclass.editcustomer(int.Parse(TextBox27.Text.ToString()), TextBox17.Text.ToString(), TextBox18.Text.ToString(), TextBox19.Text.ToString(), DropDownList1.Text.ToString(), TextBox4.Text.ToString(), TextBox5.Text.ToString(), TextBox6.Text.ToString(), TextBox7.Text.ToString(), TextBox20.Text.ToString(), TextBox9.Text.ToString(), TextBox10.Text.ToString(), TextBox11.Text.ToString(), TextBox12.Text.ToString(), TextBox13.Text.ToString(), TextBox14.Text.ToString(), DropDownList2.Text.ToString(), DropDownList3.Text.ToString(), DropDownList4.Text.ToString(), TextBox15.Text.ToString(), DateTime.Parse(TextBox25.Text.ToString()), TextBox28.Text.ToString(), Session["sc"].ToString());
            Label34.Visible = true;
            Label34.Text = "Update Dats Store In Database ";
        }

        catch
        {
            Label33.Text = "Check All Data";
        }
    }
}
