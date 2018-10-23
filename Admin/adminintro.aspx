<%@ Page Language="C#" MasterPageFile="~/Admin/Adminmain.master" AutoEventWireup="true" CodeFile="adminintro.aspx.cs" Inherits="Admin_adminintro" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style10
    {
        height: 17px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table style="width:100%;">
        <tr>
            <td>
                <table style="width:100%;">
                    <tr>
                        <td bgcolor="Silver">
                                &nbsp;<asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Dear  :"></asp:Label>
&nbsp;&nbsp;
                                <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" 
                                    ForeColor="Blue"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label9" runat="server" Font-Bold="True" 
                                    Text="Welcome To CMS  Admin Site"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" Width="80px">LOG 
                                OUT</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td class="style10" bgcolor="#CCCCCC">
                            <asp:Label ID="Label13" runat="server" Text="System Date :"></asp:Label>
                            <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10" bgcolor="#CCCCCC">
                            Staff Code&nbsp; :
                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="Silver">
                            <asp:Label ID="Label11" runat="server" Font-Bold="True" 
                                    Text="Income Date Cheque Details."></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#CCCCCC">
                            <asp:Label ID="Label15" runat="server" Text="Customer's IN Date Cheque Details"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="White">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                                GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged1">
                                <RowStyle BackColor="#EFF3FB" />
                                <Columns>
                                    <asp:BoundField DataField="Cid" HeaderText="Cid" SortExpression="Cid" />
                                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
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
                                    <asp:BoundField DataField="Chequedate" HeaderText="Chequedate" 
                                        SortExpression="Chequedate" />
                                    <asp:BoundField DataField="Amount" HeaderText="Amount" 
                                        SortExpression="Amount" />
                                    <asp:BoundField DataField="Reson" HeaderText="Reson" SortExpression="Reson" />
                                    <asp:BoundField DataField="Chequestatus" HeaderText="Chequestatus" 
                                        SortExpression="Chequestatus" />
                                    <asp:CommandField ButtonType="Button" SelectText="Deposit" 
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
                                ConnectionString="<%$ ConnectionStrings:CMSConnectionString83 %>" 
                                
                                SelectCommand="SELECT * FROM [cusdate_Chequeview] WHERE (([Chequestatus] = @Chequestatus) AND ([Chequedate] = @Chequedate))">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                                    <asp:SessionParameter Name="Chequedate" SessionField="todayadate" 
                                        Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="Silver">
                            <asp:Label ID="Label16" runat="server" 
                                    Text="Customer's Deposit  Date Cheque Details"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="White">
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" 
                                GridLines="None">
                                <RowStyle BackColor="#EFF3FB" />
                                <Columns>
                                    <asp:BoundField DataField="Cid" HeaderText="Cid" SortExpression="Cid" />
                                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
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
                                    <asp:BoundField DataField="Chequedate" HeaderText="Chequedate" 
                                        SortExpression="Chequedate" />
                                    <asp:BoundField DataField="Amount" HeaderText="Amount" 
                                        SortExpression="Amount" />
                                    <asp:BoundField DataField="Reson" HeaderText="Reson" SortExpression="Reson" />
                                    <asp:BoundField DataField="Chequestatus" HeaderText="Chequestatus" 
                                        SortExpression="Chequestatus" />
                                </Columns>
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <EditRowStyle BackColor="#2461BF" />
                                <AlternatingRowStyle BackColor="White" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:CMSConnectionString84 %>" 
                                SelectCommand="SELECT * FROM [cusdate_Chequeview] WHERE (([Chequestatus] = @Chequestatus) AND ([Chequedate] = @Chequedate))">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="Deposit" Name="Chequestatus" Type="String" />
                                    <asp:SessionParameter Name="Chequedate" SessionField="todayadate" 
                                        Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="Silver">
                            <asp:Label ID="Label17" runat="server" Text="Supplier's IN Date Cheque Details"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="White">
                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" 
                                GridLines="None" onselectedindexchanged="GridView3_SelectedIndexChanged">
                                <RowStyle BackColor="#EFF3FB" />
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                                    <asp:BoundField DataField="Sid" HeaderText="Sid" SortExpression="Sid" />
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
                                    <asp:BoundField DataField="Accountno" HeaderText="Accountno" 
                                        SortExpression="Accountno" />
                                    <asp:BoundField DataField="Holdername" HeaderText="Holdername" 
                                        SortExpression="Holdername" />
                                    <asp:BoundField DataField="bankname" HeaderText="bankname" 
                                        SortExpression="bankname" />
                                    <asp:BoundField DataField="Bankcode" HeaderText="Bankcode" 
                                        SortExpression="Bankcode" />
                                    <asp:BoundField DataField="Chequeno" HeaderText="Chequeno" 
                                        SortExpression="Chequeno" />
                                    <asp:BoundField DataField="Chequedate" HeaderText="Chequedate" 
                                        SortExpression="Chequedate" />
                                    <asp:BoundField DataField="Amount" HeaderText="Amount" 
                                        SortExpression="Amount" />
                                    <asp:BoundField DataField="Chequetype" HeaderText="Chequetype" 
                                        SortExpression="Chequetype" />
                                    <asp:BoundField DataField="Reson" HeaderText="Reson" SortExpression="Reson" />
                                    <asp:BoundField DataField="Chequestatus" HeaderText="Chequestatus" 
                                        SortExpression="Chequestatus" />
                                    <asp:CommandField ButtonType="Button" SelectText="Deposit" 
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
                                ConnectionString="<%$ ConnectionStrings:CMSConnectionString85 %>" 
                                SelectCommand="SELECT * FROM [Supdate_chequedetailsview] WHERE (([Chequestatus] = @Chequestatus) AND ([Chequedate] = @Chequedate))">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                                    <asp:SessionParameter Name="Chequedate" SessionField="todayadate" 
                                        Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="Silver">
                            <asp:Label ID="Label18" runat="server" 
                                    Text="Supplier's Deposit  Date Cheque Details"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="White">
                            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" 
                                GridLines="None">
                                <RowStyle BackColor="#EFF3FB" />
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                                    <asp:BoundField DataField="Sid" HeaderText="Sid" SortExpression="Sid" />
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
                                    <asp:BoundField DataField="Accountno" HeaderText="Accountno" 
                                        SortExpression="Accountno" />
                                    <asp:BoundField DataField="Holdername" HeaderText="Holdername" 
                                        SortExpression="Holdername" />
                                    <asp:BoundField DataField="bankname" HeaderText="bankname" 
                                        SortExpression="bankname" />
                                    <asp:BoundField DataField="Bankcode" HeaderText="Bankcode" 
                                        SortExpression="Bankcode" />
                                    <asp:BoundField DataField="Chequeno" HeaderText="Chequeno" 
                                        SortExpression="Chequeno" />
                                    <asp:BoundField DataField="Chequedate" HeaderText="Chequedate" 
                                        SortExpression="Chequedate" />
                                    <asp:BoundField DataField="Amount" HeaderText="Amount" 
                                        SortExpression="Amount" />
                                    <asp:BoundField DataField="Chequetype" HeaderText="Chequetype" 
                                        SortExpression="Chequetype" />
                                    <asp:BoundField DataField="Reson" HeaderText="Reson" SortExpression="Reson" />
                                    <asp:BoundField DataField="Chequestatus" HeaderText="Chequestatus" 
                                        SortExpression="Chequestatus" />
                                </Columns>
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <EditRowStyle BackColor="#2461BF" />
                                <AlternatingRowStyle BackColor="White" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:CMSConnectionString86 %>" 
                                SelectCommand="SELECT * FROM [Supdate_chequedetailsview] WHERE (([Chequestatus] = @Chequestatus) AND ([Chequedate] = @Chequedate))">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="Deposit" Name="Chequestatus" Type="String" />
                                    <asp:SessionParameter Name="Chequedate" SessionField="todayadate" 
                                        Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="White">
                                &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</p>
</asp:Content>

