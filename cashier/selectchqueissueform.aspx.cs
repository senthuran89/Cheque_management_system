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

public partial class cashier_selectchqueissueform : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)

    {
        GridView1.Visible = false ;
        GridView3.Visible = false;
        GridView2.Visible = false;
        GridView4.Visible = false;
        GridView5.Visible = false;
        GridView6.Visible = false;
        GridView7.Visible = false;
        GridView8.Visible = false ;
        GridView9.Visible = false ;
        GridView10.Visible = false;
       TextBox10 .Text = Session["hid1"].ToString ();
       TextBox20.Text = Session["oid1"] .ToString ();
       TextBox18.Text = Session["bname1"] .ToString ();
      TextBox19 .Text =  Session["bcode1"].ToString ();
       TextBox1.Text = Session["holdername"].ToString ();
       TextBox5.Text = Session["acno"] .ToString ();

        TextBox11.Text =Session["chequeno"] .ToString ();
           TextBox12.Text = Session["chequedate"].ToString ();
        TextBox13 .Text =Session["cheamount"] .ToString ();
        TextBox17.Text = Session["chequetype"].ToString();
    }
    protected void TextBox20_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        Session["cfn"] = DropDownList1.Text.ToString();
        GridView2.Visible = true;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        Session["ccn"] = DropDownList2.Text.ToString();
        GridView3.Visible = true;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        Session["cnic"] = TextBox21.Text.ToString();
        GridView4.Visible = true;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        Session["cid"] = TextBox22.Text.ToString();
        GridView5.Visible = true;
    }
    protected void GridView6_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["bid"] = int.Parse(GridView6.SelectedRow.Cells[0].Text.ToString());
        Session["comnama"] = GridView6.SelectedRow.Cells[4].Text.ToString();
        Response.Redirect("~/cashier/Chequeissue.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        GridView6.Visible = true;
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Session["cfn"] = DropDownList3.Text.ToString();
        GridView7.Visible = true;
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Session["ccn"] = DropDownList4.Text.ToString();
        GridView8.Visible = true;
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Session["cnic"] = TextBox23.Text.ToString();
        GridView9.Visible = true;
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        Session["cid"] = TextBox24.Text.ToString();
        GridView10.Visible = true;

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["bid"] = int.Parse(GridView1.SelectedRow.Cells[0].Text.ToString());
        Session["comnama"] = GridView1.SelectedRow.Cells[3].Text.ToString();
        Response.Redirect("~/cashier/Chequeissue.aspx");
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["bid"] = int.Parse(GridView2.SelectedRow.Cells[0].Text.ToString());
        Session["comnama"] = GridView2.SelectedRow.Cells[4].Text.ToString();
        Response.Redirect("~/cashier/Chequeissue.aspx");
    }
    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["bid"] = int.Parse(GridView3.SelectedRow.Cells[0].Text.ToString());
        Session["comnama"] = GridView3.SelectedRow.Cells[4].Text.ToString();
        Response.Redirect("~/cashier/Chequeissue.aspx");
    }
    protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["bid"] = int.Parse(GridView4.SelectedRow.Cells[0].Text.ToString());
        Session["comnama"] = GridView4.SelectedRow.Cells[4].Text.ToString();
        Response.Redirect("~/cashier/Chequeissue.aspx");
    }
    protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["bid"] = int.Parse(GridView5.SelectedRow.Cells[0].Text.ToString());
        Session["comnama"] = GridView5.SelectedRow.Cells[4].Text.ToString();
        Response.Redirect("~/cashier/Chequeissue.aspx");
    }
    protected void GridView7_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["bid"] = int.Parse(GridView7.SelectedRow.Cells[0].Text.ToString());
        Session["comnama"] = GridView7.SelectedRow.Cells[4].Text.ToString();
        Response.Redirect("~/cashier/Chequeissue.aspx");
    }
    protected void GridView8_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["bid"] = int.Parse(GridView8.SelectedRow.Cells[0].Text.ToString());
        Session["comnama"] = GridView8.SelectedRow.Cells[4].Text.ToString();
        Response.Redirect("~/cashier/Chequeissue.aspx");
    }
    protected void GridView9_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["bid"] = int.Parse(GridView9.SelectedRow.Cells[0].Text.ToString());
        Session["comnama"] = GridView9.SelectedRow.Cells[4].Text.ToString();
        Response.Redirect("~/cashier/Chequeissue.aspx");
    }
    protected void GridView10_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["bid"] = int.Parse(GridView10.SelectedRow.Cells[0].Text.ToString());
        Session["comnama"] = GridView10.SelectedRow.Cells[4].Text.ToString();
        Response.Redirect("~/cashier/Chequeissue.aspx");
    }
    protected void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Session["bid"] = int.Parse(GridView2.SelectedRow.Cells[0].Text.ToString());
        Session["comnama"] = GridView2.SelectedRow.Cells[4].Text.ToString();
        Response.Redirect("~/cashier/Chequeissue.aspx");
    }
}
