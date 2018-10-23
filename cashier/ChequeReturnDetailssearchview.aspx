<%@ Page Language="C#" MasterPageFile="~/cashier/Cashiermain.master" AutoEventWireup="true" CodeFile="ChequeReturnDetailssearchview.aspx.cs" Inherits="cashier_ChequeReturnDetailssearchview" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">




        .style17
        {
            width: 640px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table bgcolor="#EFEFEF" frame="box" style="width: 97%;">
        <tr>
            <td bgcolor="#99CCFF">
                <asp:Label ID="Label30" runat="server" 
                        Text="Customers &amp; Supplier's  Deposit Cheque Return View"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="Silver">
                <asp:Label ID="Label31" runat="server" 
                    Text="Customer's Deposit  Cheque  Return View"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString176 %>" 
                    SelectCommand="SELECT [Firstname] FROM [CusReturnchequeview]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td bgcolor="Silver">
                <asp:Label ID="Label33" runat="server" Text="Customer Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource3" DataTextField="Firstname" 
                    DataValueField="Firstname" Height="16px" Width="191px">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Find" />
            </td>
        </tr>
        <tr>
            <td bgcolor="White">
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource4" 
                    ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="inid" HeaderText="inid" SortExpression="inid" />
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                            SortExpression="Id" />
                        <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                            SortExpression="Firstname" />
                        <asp:BoundField DataField="Lastname" HeaderText="Lastname" 
                            SortExpression="Lastname" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="NICno" HeaderText="NICno" SortExpression="NICno" />
                        <asp:BoundField DataField="Companyname" HeaderText="Companyname" 
                            SortExpression="Companyname" />
                        <asp:BoundField DataField="Companyphone1" HeaderText="Companyphone1" 
                            SortExpression="Companyphone1" />
                        <asp:BoundField DataField="Personalphone" HeaderText="Personalphone" 
                            SortExpression="Personalphone" />
                        <asp:BoundField DataField="chequeno" HeaderText="chequeno" 
                            SortExpression="chequeno" />
                        <asp:BoundField DataField="Bankname" HeaderText="Bankname" 
                            SortExpression="Bankname" />
                        <asp:BoundField DataField="Bankcode" HeaderText="Bankcode" 
                            SortExpression="Bankcode" />
                        <asp:BoundField DataField="Branchcode" HeaderText="Branchcode" 
                            SortExpression="Branchcode" />
                        <asp:BoundField DataField="Chequedate" HeaderText="Chequedate" 
                            SortExpression="Chequedate" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" 
                            SortExpression="Amount" />
                        <asp:BoundField DataField="Returndate" HeaderText="Returndate" 
                            SortExpression="Returndate" />
                        <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString177 %>" 
                    SelectCommand="SELECT * FROM [CusReturnchequeview] WHERE ([Firstname] = @Firstname)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Firstname" SessionField="rcfn" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style17" valign="top">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="inid" HeaderText="inid" SortExpression="inid" />
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                            SortExpression="Id" />
                        <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                            SortExpression="Firstname" />
                        <asp:BoundField DataField="Lastname" HeaderText="Lastname" 
                            SortExpression="Lastname" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="NICno" HeaderText="NICno" SortExpression="NICno" />
                        <asp:BoundField DataField="Companyname" HeaderText="Companyname" 
                            SortExpression="Companyname" />
                        <asp:BoundField DataField="Companyphone1" HeaderText="Companyphone1" 
                            SortExpression="Companyphone1" />
                        <asp:BoundField DataField="Personalphone" HeaderText="Personalphone" 
                            SortExpression="Personalphone" />
                        <asp:BoundField DataField="chequeno" HeaderText="chequeno" 
                            SortExpression="chequeno" />
                        <asp:BoundField DataField="Bankname" HeaderText="Bankname" 
                            SortExpression="Bankname" />
                        <asp:BoundField DataField="Bankcode" HeaderText="Bankcode" 
                            SortExpression="Bankcode" />
                        <asp:BoundField DataField="Branchcode" HeaderText="Branchcode" 
                            SortExpression="Branchcode" />
                        <asp:BoundField DataField="Chequedate" HeaderText="Chequedate" 
                            SortExpression="Chequedate" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" 
                            SortExpression="Amount" />
                        <asp:BoundField DataField="Returndate" HeaderText="Returndate" 
                            SortExpression="Returndate" />
                        <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString174 %>" 
                    SelectCommand="SELECT * FROM [CusReturnchequeview] WHERE ([inid] = @inid)">
                    <SelectParameters>
                        <asp:SessionParameter Name="inid" SessionField="rchid" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style17" bgcolor="Silver">
                <asp:Label ID="Label32" runat="server" 
                    Text="Supplier's Deposit  Cheque  Return View"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString178 %>" 
                    SelectCommand="SELECT Firstname FROM SupChequereturnView">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style17" bgcolor="Silver">
                <asp:Label ID="Label34" runat="server" Text="Supplier Name"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource5" DataTextField="Firstname" 
                    DataValueField="Firstname" Height="16px" Width="202px">
                </asp:DropDownList>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Find" />
            </td>
        </tr>
        <tr>
            <td class="style17" bgcolor="White">
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource6" 
                    ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="inid" HeaderText="inid" SortExpression="inid" />
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                            SortExpression="Id" />
                        <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                            SortExpression="Firstname" />
                        <asp:BoundField DataField="Lastname" HeaderText="Lastname" 
                            SortExpression="Lastname" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="NICno" HeaderText="NICno" SortExpression="NICno" />
                        <asp:BoundField DataField="Companyname" HeaderText="Companyname" 
                            SortExpression="Companyname" />
                        <asp:BoundField DataField="Companyphone1" HeaderText="Companyphone1" 
                            SortExpression="Companyphone1" />
                        <asp:BoundField DataField="Personalphone" HeaderText="Personalphone" 
                            SortExpression="Personalphone" />
                        <asp:BoundField DataField="chequeno" HeaderText="chequeno" 
                            SortExpression="chequeno" />
                        <asp:BoundField DataField="Bankname" HeaderText="Bankname" 
                            SortExpression="Bankname" />
                        <asp:BoundField DataField="Bankcode" HeaderText="Bankcode" 
                            SortExpression="Bankcode" />
                        <asp:BoundField DataField="Branchcode" HeaderText="Branchcode" 
                            SortExpression="Branchcode" />
                        <asp:BoundField DataField="Chequedate" HeaderText="Chequedate" 
                            SortExpression="Chequedate" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" 
                            SortExpression="Amount" />
                        <asp:BoundField DataField="Returndate" HeaderText="Returndate" 
                            SortExpression="Returndate" />
                        <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString179 %>" 
                    SelectCommand="SELECT * FROM [SupChequereturnView] WHERE ([Firstname] = @Firstname)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Firstname" SessionField="rcsfn" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style17" bgcolor="White">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" 
                    ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="inid" HeaderText="inid" SortExpression="inid" />
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                            SortExpression="Id" />
                        <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                            SortExpression="Firstname" />
                        <asp:BoundField DataField="Lastname" HeaderText="Lastname" 
                            SortExpression="Lastname" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="NICno" HeaderText="NICno" SortExpression="NICno" />
                        <asp:BoundField DataField="Companyname" HeaderText="Companyname" 
                            SortExpression="Companyname" />
                        <asp:BoundField DataField="Companyphone1" HeaderText="Companyphone1" 
                            SortExpression="Companyphone1" />
                        <asp:BoundField DataField="Personalphone" HeaderText="Personalphone" 
                            SortExpression="Personalphone" />
                        <asp:BoundField DataField="chequeno" HeaderText="chequeno" 
                            SortExpression="chequeno" />
                        <asp:BoundField DataField="Bankname" HeaderText="Bankname" 
                            SortExpression="Bankname" />
                        <asp:BoundField DataField="Bankcode" HeaderText="Bankcode" 
                            SortExpression="Bankcode" />
                        <asp:BoundField DataField="Branchcode" HeaderText="Branchcode" 
                            SortExpression="Branchcode" />
                        <asp:BoundField DataField="Chequedate" HeaderText="Chequedate" 
                            SortExpression="Chequedate" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" 
                            SortExpression="Amount" />
                        <asp:BoundField DataField="Returndate" HeaderText="Returndate" 
                            SortExpression="Returndate" />
                        <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString175 %>" 
                    SelectCommand="SELECT * FROM [SupChequereturnView] WHERE ([inid] = @inid)">
                    <SelectParameters>
                        <asp:SessionParameter Name="inid" SessionField="rchid" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
</asp:Content>

