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

public partial class cashier_Change_Password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Session["un"].ToString(); 
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataReader dr = Usercontrol.Getdetail("select Password,Id from Cashier where Username='" + TextBox1.Text.ToString() + "'");
            while (dr.Read())
            {
                TextBox5.Text = dr.GetValue(0).ToString();
                TextBox6.Text = dr.GetValue(1).ToString();
            }
            if (TextBox2.Text == TextBox5.Text)
            {
                if (TextBox3.Text == TextBox4.Text)
                {
                   Usercontrol .editcashierpw(int.Parse(TextBox6.Text.ToString()), TextBox3.Text.ToString());
                    Label6.Text = "";
                    Label7.Text = "";
                    Label8.Text = "Updated Suecssed";
                }
                else
                    Label6.Text = "Reenter your new Password";
            }
            else
                Label7.Text = "Check your Old Password";

        }
        catch
        { }
            
            
      
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cashier/Change Password.aspx");
    }
}
