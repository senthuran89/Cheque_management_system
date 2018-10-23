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

public partial class Admin_ViewBranchdetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = false ;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["bankname"] = DropDownList1.Text.ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["bankname"] = DropDownList1.Text .ToString();
        GridView1.Visible = true;
    }
}
