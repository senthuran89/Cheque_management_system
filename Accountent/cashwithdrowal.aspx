﻿<%@ Page Language="C#" MasterPageFile="~/Accountent/Accountentmain.master" AutoEventWireup="true" CodeFile="cashwithdrowal.aspx.cs" Inherits="Accountent_cashwithdrowal" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">




        .style10
        {
            width: 112px;
            height: 33px;
        }
        .style12
        {
            width: 289px;
            height: 33px;
        }
        .style14
        {
            width: 153px;
            height: 33px;
        }
        .style11
        {
            height: 33px;
        }
        .style17
        {
            width: 112px;
        }
        .style13
        {
            width: 289px;
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
                        Text="Cash Withdrawal  "></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                    &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="Silver" colspan="4">
                <asp:Label ID="Label31" runat="server" Text="Deposit  Details."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10">
                <asp:Label ID="Label32" runat="server" Text="Bank Name"></asp:Label>
            </td>
            <td class="style12">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="19px" Width="215px" 
                        DataSourceID="SqlDataSource1" DataTextField="Bankname" 
                        DataValueField="Bankname">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString115 %>" 
                        SelectCommand="SELECT [Bankname] FROM [Bank]"></asp:SqlDataSource>
            </td>
            <td class="style14">
                <asp:Label ID="Label44" runat="server" Text="Bank Code"></asp:Label>
            </td>
            <td class="style11">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="19px" Width="132px" 
                        DataSourceID="SqlDataSource2" DataTextField="Bankcode" 
                        DataValueField="Bankcode">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString116 %>" 
                        SelectCommand="SELECT [Bankcode] FROM [Bank]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="Label36" runat="server" Text="Account Number"></asp:Label>
            </td>
            <td class="style13">
                <asp:DropDownList ID="DropDownList3" runat="server" 
                        DataSourceID="SqlDataSource3" DataTextField="Accountno" 
                        DataValueField="Accountno" Height="26px" Width="251px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString117 %>" 
                        SelectCommand="SELECT [Accountno] FROM [Bank]"></asp:SqlDataSource>
            </td>
            <td class="style15" rowspan="3">
                <asp:Label ID="Label39" runat="server" Text="Withdrawal   Date"></asp:Label>
            </td>
            <td rowspan="3">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                        BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                        ForeColor="Black" Height="16px" NextPrevFormat="FullMonth" Width="91px">
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
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="Label46" runat="server" Text="Cheque Number"></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="TextBox9" runat="server" Width="198px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="Label40" runat="server" Text="Cheque Amount"></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="TextBox6" runat="server" Width="148px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="Label45" runat="server" Text="Purpose "></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="TextBox7" runat="server" Height="97px" TextMode="MultiLine" 
                        Width="364px"></asp:TextBox>
            </td>
            <td class="style15">
                <asp:Label ID="Label38" runat="server" Text="Staff  Code"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" Width="184px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="Silver" class="style16" colspan="4">
                    &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style16" colspan="4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click">Save</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton6" runat="server" onclick="LinkButton6_Click">Add New Deposit</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton7" runat="server" onclick="LinkButton7_Click">Cancel</asp:LinkButton>
                <a href="javascript:__doPostBack('LinkButton4','')">&nbsp;</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
        </tr>
    </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
</asp:Content>

