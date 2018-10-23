<%@ Page Language="C#" MasterPageFile="~/cashier/Cashiermain.master" AutoEventWireup="true" CodeFile="Cheque payments.aspx.cs" Inherits="cashier_Cheque_payments" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style10
        {
            width: 112px;
            height: 23px;
        }
        .style12
        {
            width: 385px;
            height: 23px;
        }
        .style14
        {
            width: 153px;
            height: 23px;
        }
        .style11
        {
            height: 23px;
        }
        .style17
        {
    }
        .style13
        {
    }
        .style15
        {
            width: 153px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table bgcolor="#EFEFEF" frame="box" style="width: 97%;">
        <tr>
            <td bgcolor="#99CCFF" colspan="4">
                <asp:Label ID="Label30" runat="server" 
                        Text="Cheque IsssueDetails Insert form."></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                    &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="Silver" colspan="4">
                <asp:Label ID="Label31" runat="server" Text="Holder's Details."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10">
                <asp:Label ID="Label32" runat="server" Text="Holder's ID"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
            <td class="style14">
                <asp:Label ID="Label34" runat="server" Text="Account Holder Name"></asp:Label>
            </td>
            <td class="style11">
                <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" 
                        Width="299px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="Label35" runat="server" Text="Cheque Category"></asp:Label>
            </td>
            <td class="style13">
                <asp:DropDownList ID="DropDownList5" runat="server" Height="16px" Width="191px">
                    <asp:ListItem>Own Cheque</asp:ListItem>
                    <asp:ListItem>Customer&#39;s Cheque</asp:ListItem>
                    <asp:ListItem>Supplier&#39;s Cheque</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17" rowspan="3">
                <asp:Label ID="Label37" runat="server" Text="Issue  Date"></asp:Label>
            </td>
            <td class="style13" rowspan="3">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                        BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                        ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" 
                        style="margin-left: 0px" Width="235px">
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                            VerticalAlign="Bottom" />
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                            Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                </asp:Calendar>
            </td>
            <td class="style15">
                <asp:Label ID="Label38" runat="server" Text="Bank Name"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="41px" Width="205px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="Label39" runat="server" Text="Bank Code"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList6" runat="server" Height="37px" Width="137px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="Label40" runat="server" Text="Account No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="199px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="Silver" class="style9" colspan="4">
                <asp:Label ID="Label41" runat="server" Text="Cheque  Details."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="Label42" runat="server" Text="Cheque No"></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="TextBox11" runat="server" Width="168px"></asp:TextBox>
            </td>
            <td class="style15">
                <asp:Label ID="Label43" runat="server" Text="Cheque Type"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" Height="26px" Width="182px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="Label44" runat="server" Text="Cheque Date"></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="TextBox12" runat="server" Width="199px"></asp:TextBox>
            </td>
            <td class="style15">
                <asp:Label ID="Label51" runat="server" Text="Cheque Amount"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox13" runat="server" Width="156px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="Silver" class="style11" colspan="4">
                <asp:Label ID="Label45" runat="server" Text="Beneficiary Details "></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="Label46" runat="server" Text="Beneficiary ID"></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="TextBox6" runat="server" Width="98px"></asp:TextBox>
            </td>
            <td class="style15">
                <asp:Label ID="Label47" runat="server" Text="Company Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Width="224px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="Label52" runat="server" Text="Receiver  Name"></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="TextBox14" runat="server" Width="233px"></asp:TextBox>
            </td>
            <td class="style15">
                <asp:Label ID="Label53" runat="server" Text="NIC No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox15" runat="server" Width="191px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="Label54" runat="server" Text="Phone No"></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="TextBox16" runat="server" Width="202px"></asp:TextBox>
            </td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17" bgcolor="Silver" colspan="4">
                <asp:Label ID="Label55" runat="server" Text="Other Details "></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="Label56" runat="server" Text="Cheque Status"></asp:Label>
            </td>
            <td class="style13">
                <asp:DropDownList ID="DropDownList7" runat="server" Height="17px" Width="115px">
                    <asp:ListItem>Paid</asp:ListItem>
                    <asp:ListItem>Unpaid</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="Label48" runat="server" Text="Reason to pay  "></asp:Label>
            </td>
            <td align="left" class="style13" valign="top">
                <asp:TextBox ID="TextBox8" runat="server" Height="73px" 
                        style="margin-left: 1px; margin-right: 26px" TextMode="MultiLine" Width="341px"></asp:TextBox>
            </td>
            <td class="style15">
                <asp:Label ID="Label49" runat="server" Text="Note"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" Height="73px" 
                        style="margin-left: 1px; margin-right: 26px" TextMode="MultiLine" Width="341px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="Silver" class="style16" colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style16" colspan="4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Save</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server">View &amp; Edit</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:LinkButton 
                        ID="LinkButton3" runat="server">Add New Issue Details</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton4" runat="server">Cancel</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
        </tr>
    </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
</asp:Content>

