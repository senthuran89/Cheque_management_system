<%@ Page Language="C#" MasterPageFile="~/Accountent/Accountentmain.master" AutoEventWireup="true" CodeFile="ownchequeissue.aspx.cs" Inherits="Accountent_ownchequeissue" Title="Untitled Page" %>

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
                <td class="style17" rowspan="2">
                    <asp:Label ID="Label37" runat="server" Text="Issue  Date"></asp:Label>
                </td>
                <td class="style13" rowspan="2">
                    <asp:Label ID="Label57" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style15">
                    <asp:Label ID="Label38" runat="server" Text="Bank Name"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="41px" Width="205px" 
                    DataSourceID="SqlDataSource1" DataTextField="Bankname" 
                    DataValueField="Bankname">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString121 %>" 
                    SelectCommand="SELECT [Bankname] FROM [Bank]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style15">
                    <asp:Label ID="Label39" runat="server" Text="Bank Code"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList6" runat="server" Height="37px" Width="137px" 
                    DataSourceID="SqlDataSource2" DataTextField="Bankcode" 
                    DataValueField="Bankcode">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString122 %>" 
                    SelectCommand="SELECT [Bankcode] FROM [Bank]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    <asp:Label ID="Label40" runat="server" Text="Account No"></asp:Label>
                </td>
                <td class="style13">
                    <asp:DropDownList ID="DropDownList8" runat="server" 
                    DataSourceID="SqlDataSource3" DataTextField="Accountno" 
                    DataValueField="Accountno" Height="16px" Width="244px">
                    </asp:DropDownList>
                </td>
                <td class="style15">
                    &nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString123 %>" 
                    SelectCommand="SELECT [Accountno] FROM [Bank]"></asp:SqlDataSource>
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
                        <asp:ListItem>Cash</asp:ListItem>
                        <asp:ListItem>Date Cheque</asp:ListItem>
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
                    <asp:LinkButton ID="LinkButton6" runat="server" onclick="LinkButton6_Click">Save</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:LinkButton 
                        ID="LinkButton7" runat="server" onclick="LinkButton7_Click">Add New Issue Details</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton8" runat="server" onclick="LinkButton8_Click">Cancel</asp:LinkButton>
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

