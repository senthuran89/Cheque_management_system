﻿<%@ Page Language="C#" MasterPageFile="~/cashier/Cashiermain.master" AutoEventWireup="true" CodeFile="Edit Cus cheque details.aspx.cs" Inherits="cashier_Edit_Cus_cheque_details" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style10
        {
            width: 160px;
            height: 23px;
        }
        .style12
        {
            width: 385px;
            height: 23px;
        }
        .style14
        {
            width: 223px;
            height: 23px;
        }
        .style11
        {
            height: 23px;
        }
        .style17
        {
            width: 160px;
        }
        .style13
        {
            width: 385px;
        }
        .style15
        {
            width: 223px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table bgcolor="#EFEFEF" frame="box" style="width: 97%;">
            <tr>
                <td bgcolor="#99CCFF" colspan="4">
                    <asp:Label ID="Label30" runat="server" 
                        Text="Customer's Cheque Details  Update Form."></asp:Label>
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
                    <asp:Label ID="Label32" runat="server" Text="Customer's ID"></asp:Label>
                </td>
                <td class="style12">
                    <asp:Label ID="Label33" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label51" runat="server" Text="Operation ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label52" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style14">
                    <asp:Label ID="Label34" runat="server" Text="Account Holder Name"></asp:Label>
                </td>
                <td class="style11">
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 1px" 
                        Width="299px" ValidationGroup="empty"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Enter Holder Name" 
                        ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    <asp:Label ID="Label35" runat="server" Text="Account Number"></asp:Label>
                </td>
                <td class="style13">
                    <asp:TextBox ID="TextBox2" runat="server" Width="278px" ValidationGroup="empty"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter A/C Number" 
                        ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
                <td class="style15">
                    <asp:Label ID="Label36" runat="server" Text="Cheque Number"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="184px" ValidationGroup="empty"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter Cheque No" 
                        ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style17" rowspan="3">
                    <asp:Label ID="Label37" runat="server" Text="Receive  Date"></asp:Label>
                </td>
                <td class="style13" rowspan="3">
                    <asp:TextBox ID="TextBox10" runat="server" Width="229px" 
                        ValidationGroup="empty"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox10" ErrorMessage="Enter Date" ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
                <td class="style15">
                    <asp:Label ID="Label38" runat="server" Text="Cheque Type"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox14" runat="server" Width="164px" 
                        ValidationGroup="empty"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="33px" Width="142px">
                        <asp:ListItem>Town</asp:ListItem>
                        <asp:ListItem>Negotiable</asp:ListItem>
                        <asp:ListItem>Crossed</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox14" ErrorMessage="Select  a Cheque Type" 
                        ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style15">
                    <asp:Label ID="Label39" runat="server" Text="Cheque Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" BackColor="White" Width="184px" 
                        ValidationGroup="empty"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Enter Cheque Date" 
                        ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style15">
                    <asp:Label ID="Label40" runat="server" Text="Cheque Amount"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="184px" ValidationGroup="empty"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Enter Amount" 
                        ValidationGroup="empty"></asp:RequiredFieldValidator>
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
                    <asp:TextBox ID="TextBox11" runat="server" Width="187px" 
                        ValidationGroup="empty"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="31px" Width="167px" 
                        DataSourceID="SqlDataSource1" DataTextField="Bankname" 
                        DataValueField="Bankname">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBox11" ErrorMessage="Select a Bank Name" 
                        ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
                <td class="style15">
                    <asp:Label ID="Label43" runat="server" Text="Bank Code"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox13" runat="server" ValidationGroup="empty"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="26px" Width="115px" 
                        DataSourceID="SqlDataSource2" DataTextField="bankcode" 
                        DataValueField="bankcode">
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TextBox13" ErrorMessage="Select a  Bank Code" 
                        ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    <asp:Label ID="Label44" runat="server" Text="Branch Code"></asp:Label>
                </td>
                <td class="style13">
                    <asp:TextBox ID="TextBox12" runat="server" ValidationGroup="empty"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList4" runat="server" Height="26px" Width="129px" 
                        DataSourceID="SqlDataSource3" DataTextField="Branchcode" 
                        DataValueField="Branchcode">
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="TextBox12" ErrorMessage="Select a Branch Code" 
                        ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
                <td class="style15">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="Silver" class="style11" colspan="4">
                    <asp:Label ID="Label45" runat="server" Text="Payee Details."></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString109 %>" 
                        SelectCommand="SELECT [Bankname] FROM [Bankdetails]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString111 %>" 
                        SelectCommand="SELECT [Branchcode] FROM [Bankbranchdetails]">
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString110 %>" 
                        SelectCommand="SELECT [bankcode] FROM [Bankdetails]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    <asp:Label ID="Label46" runat="server" Text="Payee  Name"></asp:Label>
                </td>
                <td class="style13">
                    <asp:TextBox ID="TextBox6" runat="server" Width="299px" ValidationGroup="empty"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Enter Payee Name" 
                        ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
                <td class="style15">
                    <asp:Label ID="Label47" runat="server" Text="NIC No"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Width="224px" ValidationGroup="empty"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="Enter NIC No" 
                        ValidationGroup="empty"></asp:RequiredFieldValidator>
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
                    <asp:Label ID="Label50" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="Label53" runat="server" ForeColor="#009900" Text="Label" 
                        Visible="False"></asp:Label>
                    <asp:Label ID="Label54" runat="server" ForeColor="#CC3300" Text="Label" 
                        Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style16" colspan="4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton 
                        ID="LinkButton6" runat="server" 
                        onclick="LinkButton6_Click" ValidationGroup="empty">Update</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" 
                        onclick="LinkButton7_Click">View &amp; Edit
                    </asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton8" runat="server" 
                        onclick="LinkButton8_Click">Update Date Cheque Details</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton11" runat="server" 
                        onclick="LinkButton11_Click">Insert Date Cheque Details
                    </asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton9" runat="server" onclick="LinkButton9_Click">Insert 
                    Another Cheque Data</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton10" runat="server" 
                        onclick="LinkButton10_Click">Cancel</asp:LinkButton>
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
</asp:Content>

