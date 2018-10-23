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

public partial class Accountent_cuschequeview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["cid1"] = int.Parse(GridView1.SelectedRow.Cells[0].Text.ToString());
        Session["tfrid"] = int.Parse(GridView1.SelectedRow.Cells[1].Text.ToString());
        Session["chequeno"] = GridView1.SelectedRow.Cells[13].Text.ToString();
        Session["chequedate"] = DateTime.Parse(GridView1.SelectedRow.Cells[16].Text.ToString());
        Session["cheamount"] = double.Parse(GridView1.SelectedRow.Cells[17].Text.ToString());

        Response.Redirect("~/Accountent/ChequeDeposit.aspx");
    }
}
