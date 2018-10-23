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

public partial class Accountent_Chequereturnsearchform : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        GridView3.Visible = false;
        GridView4.Visible = false;

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        Session["rcsfn"] = DropDownList2.Text.ToString();
        GridView4.Visible = true;
         GridView1.Visible = false;
         GridView2.Visible = false;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["rcfn"] = DropDownList1.Text.ToString();
        GridView3.Visible = true;
        GridView1.Visible = false;
        GridView2.Visible = false;
    }
}
