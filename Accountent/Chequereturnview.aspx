<%@ Page Language="C#" MasterPageFile="~/Accountent/Accountentmain.master" AutoEventWireup="true" CodeFile="Chequereturnview.aspx.cs" Inherits="Accountent_Chequereturnview" Title="Untitled Page" %>

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
                        Text="Customers &amp; Supplier's  Deposit Cheque Details."></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="Silver">
                    <asp:Label ID="Label31" runat="server" 
                    Text="Customer's Deposit  Cheque  Details."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style17" valign="top">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Cid,ID" DataSourceID="SqlDataSource1" 
                        ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="Cid" HeaderText="Cid" ReadOnly="True" 
                                SortExpression="Cid" />
                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                                SortExpression="ID" />
                            <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                                SortExpression="Firstname" />
                            <asp:BoundField DataField="Companyname" HeaderText="Companyname" 
                                SortExpression="Companyname" />
                            <asp:BoundField DataField="Companyphone1" HeaderText="Companyphone1" 
                                SortExpression="Companyphone1" />
                            <asp:BoundField DataField="Personalphone" HeaderText="Personalphone" 
                                SortExpression="Personalphone" />
                            <asp:BoundField DataField="bankname" HeaderText="bankname" 
                                SortExpression="bankname" />
                            <asp:BoundField DataField="Bankcode" HeaderText="Bankcode" 
                                SortExpression="Bankcode" />
                            <asp:BoundField DataField="Branchcode" HeaderText="Branchcode" 
                                SortExpression="Branchcode" />
                            <asp:BoundField DataField="holdername" HeaderText="holdername" 
                                SortExpression="holdername" />
                            <asp:BoundField DataField="Accountno" HeaderText="Accountno" 
                                SortExpression="Accountno" />
                            <asp:BoundField DataField="Chequeno" HeaderText="Chequeno" 
                                SortExpression="Chequeno" />
                            <asp:BoundField DataField="Getdate" HeaderText="Getdate" 
                                SortExpression="Getdate" />
                            <asp:BoundField DataField="Chequetype" HeaderText="Chequetype" 
                                SortExpression="Chequetype" />
                            <asp:BoundField DataField="Chequedate" HeaderText="Chequedate" 
                                SortExpression="Chequedate" />
                            <asp:BoundField DataField="Amount" HeaderText="Amount" 
                                SortExpression="Amount" />
                            <asp:BoundField DataField="Chequestatus" HeaderText="Chequestatus" 
                                SortExpression="Chequestatus" />
                            <asp:CommandField ButtonType="Button" SelectText="Return" 
                                ShowSelectButton="True">
                                <ControlStyle BackColor="Silver" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString166 %>" 
                        SelectCommand="SELECT Cid, ID, Firstname, Companyname, Companyphone1, Personalphone, bankname, Bankcode, Branchcode, holdername, Accountno, Chequeno, Getdate, Chequetype, Chequedate, Amount, Chequestatus FROM cus_InchequeView WHERE (Chequestatus = @Chequestatus)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Deposit" Name="Chequestatus" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td bgcolor="Silver" class="style9">
                    <asp:Label ID="Label41" runat="server" 
                    
                    Text="Customer's  Deposit Cheque Details  Search by Cheque No "></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style19" bgcolor="#999999" valign="top">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label59" runat="server" Text="Cheque No"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="221px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                        ID="Button13" runat="server" Text="Find" Width="75px" 
                        onclick="Button13_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="style18">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Cid,ID" DataSourceID="SqlDataSource2" 
                        ForeColor="#333333" GridLines="None">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="Cid" HeaderText="Cid" ReadOnly="True" 
                                SortExpression="Cid" />
                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                                SortExpression="ID" />
                            <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                                SortExpression="Firstname" />
                            <asp:BoundField DataField="Companyname" HeaderText="Companyname" 
                                SortExpression="Companyname" />
                            <asp:BoundField DataField="Companyphone1" HeaderText="Companyphone1" 
                                SortExpression="Companyphone1" />
                            <asp:BoundField DataField="Personalphone" HeaderText="Personalphone" 
                                SortExpression="Personalphone" />
                            <asp:BoundField DataField="bankname" HeaderText="bankname" 
                                SortExpression="bankname" />
                            <asp:BoundField DataField="Bankcode" HeaderText="Bankcode" 
                                SortExpression="Bankcode" />
                            <asp:BoundField DataField="Branchcode" HeaderText="Branchcode" 
                                SortExpression="Branchcode" />
                            <asp:BoundField DataField="holdername" HeaderText="holdername" 
                                SortExpression="holdername" />
                            <asp:BoundField DataField="Chequeno" HeaderText="Chequeno" 
                                SortExpression="Chequeno" />
                            <asp:BoundField DataField="Getdate" HeaderText="Getdate" 
                                SortExpression="Getdate" />
                            <asp:BoundField DataField="Chequetype" HeaderText="Chequetype" 
                                SortExpression="Chequetype" />
                            <asp:BoundField DataField="Chequedate" HeaderText="Chequedate" 
                                SortExpression="Chequedate" />
                            <asp:BoundField DataField="Amount" HeaderText="Amount" 
                                SortExpression="Amount" />
                            <asp:BoundField DataField="Reson" HeaderText="Reson" SortExpression="Reson" />
                            <asp:CommandField ButtonType="Button" SelectText="Return" 
                                ShowSelectButton="True">
                                <ControlStyle BackColor="Silver" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString167 %>" 
                        SelectCommand="SELECT Cid, ID, Firstname, Companyname, Companyphone1, Personalphone, bankname, Bankcode, Branchcode, holdername, Chequeno, Getdate, Chequetype, Chequedate, Amount, Reson FROM cus_InchequeView WHERE (Chequestatus = @Chequestatus) AND (Chequeno = @Chequeno)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Deposit" Name="Chequestatus" />
                            <asp:Parameter Name="Chequeno" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style17" bgcolor="Silver">
                    <asp:Label ID="Label60" runat="server" 
                    Text="Suppliers's Deposit  Cheque  Details."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style17" bgcolor="White">
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Sid,Id" DataSourceID="SqlDataSource3" 
                        ForeColor="#333333" GridLines="None">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="Sid" HeaderText="Sid" ReadOnly="True" 
                                SortExpression="Sid" />
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                                SortExpression="Id" />
                            <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                                SortExpression="Firstname" />
                            <asp:BoundField DataField="Companyname" HeaderText="Companyname" 
                                SortExpression="Companyname" />
                            <asp:BoundField DataField="Companyaddress" HeaderText="Companyaddress" 
                                SortExpression="Companyaddress" />
                            <asp:BoundField DataField="Companyphone1" HeaderText="Companyphone1" 
                                SortExpression="Companyphone1" />
                            <asp:BoundField DataField="Personalphone" HeaderText="Personalphone" 
                                SortExpression="Personalphone" />
                            <asp:BoundField DataField="Joindate" HeaderText="Joindate" 
                                SortExpression="Joindate" />
                            <asp:BoundField DataField="Chequeno" HeaderText="Chequeno" 
                                SortExpression="Chequeno" />
                            <asp:BoundField DataField="Getdate" HeaderText="Getdate" 
                                SortExpression="Getdate" />
                            <asp:BoundField DataField="Chequetype" HeaderText="Chequetype" 
                                SortExpression="Chequetype" />
                            <asp:BoundField DataField="Chequedate" HeaderText="Chequedate" 
                                SortExpression="Chequedate" />
                            <asp:BoundField DataField="bankname" HeaderText="bankname" 
                                SortExpression="bankname" />
                            <asp:BoundField DataField="Bankcode" HeaderText="Bankcode" 
                                SortExpression="Bankcode" />
                            <asp:BoundField DataField="Branchcode" HeaderText="Branchcode" 
                                SortExpression="Branchcode" />
                            <asp:BoundField DataField="Amount" HeaderText="Amount" 
                                SortExpression="Amount" />
                            <asp:BoundField DataField="Reson" HeaderText="Reson" SortExpression="Reson" />
                            <asp:CommandField ButtonType="Button" SelectText="Return" 
                                ShowSelectButton="True">
                                <ControlStyle BackColor="Silver" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString168 %>" 
                        SelectCommand="SELECT Sid, Id, Firstname, Companyname, Companyaddress, Companyphone1, Personalphone, Joindate, Chequeno, Getdate, Chequetype, Chequedate, bankname, Bankcode, Branchcode, Amount, Reson FROM Sup_InChequeView WHERE (Chequestatus = @Chequestatus)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Deposit" Name="Chequestatus" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style17" bgcolor="Silver">
                    <asp:Label ID="Label61" runat="server" 
                    
                    Text="Supplier's  Deposit Cheque Details  Search by Cheque No "></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style17" bgcolor="Gray">
                    <asp:Label ID="Label62" runat="server" Text="Cheque No"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" 
                    runat="server" Width="221px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                        ID="Button12" runat="server" Text="Find" Width="86px" 
                        onclick="Button12_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td class="style17" bgcolor="White">
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Sid,Id" DataSourceID="SqlDataSource4" 
                        ForeColor="#333333" GridLines="None">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="Sid" HeaderText="Sid" ReadOnly="True" 
                                SortExpression="Sid" />
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                                SortExpression="Id" />
                            <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                                SortExpression="Firstname" />
                            <asp:BoundField DataField="Companyname" HeaderText="Companyname" 
                                SortExpression="Companyname" />
                            <asp:BoundField DataField="Companyaddress" HeaderText="Companyaddress" 
                                SortExpression="Companyaddress" />
                            <asp:BoundField DataField="Companyphone1" HeaderText="Companyphone1" 
                                SortExpression="Companyphone1" />
                            <asp:BoundField DataField="Personalphone" HeaderText="Personalphone" 
                                SortExpression="Personalphone" />
                            <asp:BoundField DataField="Joindate" HeaderText="Joindate" 
                                SortExpression="Joindate" />
                            <asp:BoundField DataField="Chequeno" HeaderText="Chequeno" 
                                SortExpression="Chequeno" />
                            <asp:BoundField DataField="Getdate" HeaderText="Getdate" 
                                SortExpression="Getdate" />
                            <asp:BoundField DataField="Chequetype" HeaderText="Chequetype" 
                                SortExpression="Chequetype" />
                            <asp:BoundField DataField="Chequedate" HeaderText="Chequedate" 
                                SortExpression="Chequedate" />
                            <asp:BoundField DataField="Amount" HeaderText="Amount" 
                                SortExpression="Amount" />
                            <asp:BoundField DataField="bankname" HeaderText="bankname" 
                                SortExpression="bankname" />
                            <asp:BoundField DataField="Bankcode" HeaderText="Bankcode" 
                                SortExpression="Bankcode" />
                            <asp:BoundField DataField="Branchcode" HeaderText="Branchcode" 
                                SortExpression="Branchcode" />
                            <asp:BoundField DataField="Reson" HeaderText="Reson" SortExpression="Reson" />
                            <asp:CommandField ButtonType="Button" SelectText="Return" 
                                ShowSelectButton="True">
                                <ControlStyle BackColor="Silver" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString169 %>" 
                        SelectCommand="SELECT [Sid], [Id], [Firstname], [Companyname], [Companyaddress], [Companyphone1], [Personalphone], [Joindate], [Chequeno], [Getdate], [Chequetype], [Chequedate], [Amount], [bankname], [Bankcode], [Branchcode], [Reson] FROM [Sup_InChequeView] WHERE (([Chequestatus] = @Chequestatus) AND ([Chequeno] = @Chequeno))">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Deposit" Name="Chequestatus" />
                            <asp:Parameter Name="Chequeno" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
</asp:Content>

