<%@ Page Language="C#" MasterPageFile="~/Accountent/Accountentmain.master" AutoEventWireup="true" CodeFile="ViewChequeissues.aspx.cs" Inherits="Accountent_ViewChequeissues" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">



        .style9
        {
            height: 18px;
        }
        .style16
        {
            height: 21px;
            }
        .style12
        {
            height: 21px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table style="width: 100%; height: 138px;">
            <tr>
                <td bgcolor="Silver" class="style9" colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="View All Cheque Issues Data" 
                        Width="203px"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" Text="."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style16" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" 
                        ForeColor="#333333" GridLines="None">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
                                ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="Holderid" HeaderText="Holderid" 
                                SortExpression="Holderid" />
                            <asp:BoundField DataField="oid" HeaderText="oid" SortExpression="oid" />
                            <asp:BoundField DataField="Holdername" HeaderText="Holdername" 
                                SortExpression="Holdername" />
                            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                            <asp:BoundField DataField="Issuedate" HeaderText="Issuedate" 
                                SortExpression="Issuedate" />
                            <asp:BoundField DataField="Bankname" HeaderText="Bankname" 
                                SortExpression="Bankname" />
                            <asp:BoundField DataField="Bankcode" HeaderText="Bankcode" 
                                SortExpression="Bankcode" />
                            <asp:BoundField DataField="Accountno" HeaderText="Accountno" 
                                SortExpression="Accountno" />
                            <asp:BoundField DataField="Chequeno" HeaderText="Chequeno" 
                                SortExpression="Chequeno" />
                            <asp:BoundField DataField="Chequetype" HeaderText="Chequetype" 
                                SortExpression="Chequetype" />
                            <asp:BoundField DataField="Chequedate" HeaderText="Chequedate" 
                                SortExpression="Chequedate" />
                            <asp:BoundField DataField="Amount" HeaderText="Amount" 
                                SortExpression="Amount" />
                            <asp:BoundField DataField="Reciverid" HeaderText="Reciverid" 
                                SortExpression="Reciverid" />
                            <asp:BoundField DataField="companyname" HeaderText="companyname" 
                                SortExpression="companyname" />
                            <asp:BoundField DataField="Recivername" HeaderText="Recivername" 
                                SortExpression="Recivername" />
                            <asp:BoundField DataField="NICno" HeaderText="NICno" SortExpression="NICno" />
                            <asp:BoundField DataField="Phoneno" HeaderText="Phoneno" 
                                SortExpression="Phoneno" />
                            <asp:BoundField DataField="Chequestatus" HeaderText="Chequestatus" 
                                SortExpression="Chequestatus" />
                            <asp:BoundField DataField="Reson" HeaderText="Reson" SortExpression="Reson" />
                            <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                            <asp:BoundField DataField="Staffcode" HeaderText="Staffcode" 
                                SortExpression="Staffcode" />
                        </Columns>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString104 %>" 
                        SelectCommand="SELECT * FROM [Cheque_issuedetails]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td bgcolor="Silver" class="style16">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td bgcolor="Silver" class="style12">
&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

