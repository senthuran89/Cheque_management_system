<%@ Page Language="C#" MasterPageFile="~/cashier/Cashiermain.master" AutoEventWireup="true" CodeFile="Supplier cheque details .aspx.cs" Inherits="cashier_Supplier_Check_details_" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style10
        {
            width: 148px;
            height: 23px;
        }
        .style12
        {
            width: 385px;
            height: 23px;
        }
        .style14
        {
            width: 191px;
            height: 23px;
        }
        .style11
        {
            height: 23px;
        }
        .style17
        {
            width: 148px;
        }
        .style13
        {
            width: 385px;
        }
        .style15
        {
        }
        .style18
        {
            width: 191px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table bgcolor="#EFEFEF" frame="box" style="width: 97%;">
            <tr>
                <td bgcolor="#99CCFF" colspan="4">
                    <asp:Label ID="Label30" runat="server" 
                        Text="Supplier's Cheque Details Insert form."></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="Silver" colspan="4">
                    <asp:Label ID="Label31" runat="server" Text="Cheque Details."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Label ID="Label32" runat="server" Text="Supplier's ID"></asp:Label>
                </td>
                <td class="style12">
                    <asp:Label ID="Label33" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="Silver" 
                        onclick="Button1_Click" Text="Find Return Cheques Details" />
                </td>
                <td class="style14">
                    <asp:Label ID="Label34" runat="server" Text="Holder Name"></asp:Label>
                </td>
                <td class="style11">
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" 
                        Width="299px" ValidationGroup="Empty"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Enter Holder Name" 
                        ValidationGroup="Empty"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    <asp:Label ID="Label35" runat="server" Text="Account Number"></asp:Label>
                </td>
                <td class="style13">
                    <asp:TextBox ID="TextBox2" runat="server" Width="278px" ValidationGroup="Empty"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter A/C No" 
                        ValidationGroup="Empty"></asp:RequiredFieldValidator>
                </td>
                <td class="style18">
                    <asp:Label ID="Label36" runat="server" Text="Cheque Number"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="184px" ValidationGroup="Empty"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter Cheque No" 
                        ValidationGroup="Empty"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style17" rowspan="2">
                    <asp:Label ID="Label37" runat="server" Text="Receive  Date"></asp:Label>
                </td>
                <td class="style13" rowspan="2">
                    <asp:Label ID="Label51" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style18">
                    <asp:Label ID="Label38" runat="server" Text="Cheque Type"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="39px" Width="185px">
                        <asp:ListItem>Town</asp:ListItem>
                        <asp:ListItem>Negotiable</asp:ListItem>
                        <asp:ListItem>Crossed</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style18" rowspan="2">
                    <asp:Label ID="Label39" runat="server" Text="Cheque Date"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="style15" rowspan="2">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                        BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" 
                        Font-Size="9pt" ForeColor="Black" Height="128px" NextPrevFormat="ShortMonth" 
                        Width="152px">
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                            Height="8pt" />
                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" 
                            Font-Size="12pt" ForeColor="White" Height="12pt" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    <asp:Label ID="Label40" runat="server" Text="Cheque Amount"></asp:Label>
                </td>
                <td class="style13">
                    <asp:TextBox ID="TextBox5" runat="server" Width="184px" ValidationGroup="Empty"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Enter Amount" 
                        ValidationGroup="Empty"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="Silver" class="style9" colspan="4">
                    <asp:Label ID="Label41" runat="server" Text="Bank Details."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    <asp:Label ID="Label42" runat="server" Text="Bank Name"></asp:Label>
                </td>
                <td class="style13">
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="32px" Width="251px" 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                        DataSourceID="SqlDataSource1" DataTextField="Bankname" 
                        DataValueField="Bankname">
                    </asp:DropDownList>
                </td>
                <td class="style18">
                    <asp:Label ID="Label43" runat="server" Text="Bank Code"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="25px" Width="164px" 
                        DataSourceID="SqlDataSource3" DataTextField="bankcode" 
                        DataValueField="bankcode">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    <asp:Label ID="Label44" runat="server" Text="Branch Code"></asp:Label>
                </td>
                <td class="style13">
                    <asp:DropDownList ID="DropDownList4" runat="server" Height="25px" Width="164px" 
                        DataSourceID="SqlDataSource2" DataTextField="Branchcode" 
                        DataValueField="Branchcode">
                    </asp:DropDownList>
                </td>
                <td class="style18">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="Silver" class="style11" colspan="4">
                    <asp:Label ID="Label45" runat="server" Text="Payee Details."></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString124 %>" 
                        SelectCommand="SELECT [Bankname] FROM [Bankdetails]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString127 %>" 
                        SelectCommand="SELECT [bankcode] FROM [Bankdetails]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString126 %>" 
                        SelectCommand="SELECT [Branchcode] FROM [Bankbranchdetails]">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    <asp:Label ID="Label46" runat="server" Text="Payee  Name"></asp:Label>
                </td>
                <td class="style13">
                    <asp:TextBox ID="TextBox6" runat="server" Width="299px" ValidationGroup="Empty"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Enter Payee Name" 
                        ValidationGroup="Empty"></asp:RequiredFieldValidator>
                </td>
                <td class="style18">
                    <asp:Label ID="Label47" runat="server" Text="NIC No"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Width="224px" ValidationGroup="Empty"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="Enter NIC No" 
                        ValidationGroup="Empty"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    <asp:Label ID="Label48" runat="server" Text="Reason to pay  "></asp:Label>
                </td>
                <td align="left" class="style13" valign="top">
                    <asp:TextBox ID="TextBox8" runat="server" Height="73px" 
                        style="margin-left: 1px; margin-right: 26px" TextMode="MultiLine" Width="341px"></asp:TextBox>
                </td>
                <td class="style18">
                    <asp:Label ID="Label49" runat="server" Text="Note"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" Height="73px" 
                        style="margin-left: 1px; margin-right: 26px" TextMode="MultiLine" Width="341px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td bgcolor="Silver" class="style16" colspan="4">
                    <asp:Label ID="Label50" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="Label52" runat="server" ForeColor="#006600" Text="Label" 
                        Visible="False"></asp:Label>
                    <asp:Label ID="Label53" runat="server" ForeColor="#CC3300" Text="Label" 
                        Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style16" colspan="4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                        ValidationGroup="Empty">Save
                    </asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">View &amp; Edit</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">Insert Date Cheque Data</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton 
                        ID="LinkButton5" runat="server" onclick="LinkButton5_Click">Insert Another 
                    Cheque Data</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">Cancel</asp:LinkButton>
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
</asp:Content>

