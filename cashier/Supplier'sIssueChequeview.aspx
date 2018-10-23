<%@ Page Language="C#" MasterPageFile="~/cashier/Cashiermain.master" AutoEventWireup="true" CodeFile="Supplier'sIssueChequeview.aspx.cs" Inherits="cashier_Supplier_sIssueChequeview" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">




        .style17
        {
            width: 640px;
        }
        .style18
        {
            height: 16px;
        }
        .style19
        {
            height: 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table bgcolor="#EFEFEF" frame="box" style="width: 97%;">
            <tr>
                <td bgcolor="#99CCFF">
                    <asp:Label ID="Label30" runat="server" 
                        Text="Supplier's in Cheque details"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="Silver">
                    <asp:Label ID="Label31" runat="server" Text="All In Cheque details"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style17" valign="top">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Id,Sid" DataSourceID="SqlDataSource3" 
                        ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                                SortExpression="Id" />
                            <asp:BoundField DataField="Sid" HeaderText="Sid" ReadOnly="True" 
                                SortExpression="Sid" />
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
                            <asp:BoundField DataField="Holdername" HeaderText="Holdername" 
                                SortExpression="Holdername" />
                            <asp:BoundField DataField="Accountno" HeaderText="Accountno" 
                                SortExpression="Accountno" />
                            <asp:BoundField DataField="Chequeno" HeaderText="Chequeno" 
                                SortExpression="Chequeno" />
                            <asp:BoundField DataField="Chequetype" HeaderText="Chequetype" 
                                SortExpression="Chequetype" />
                            <asp:BoundField DataField="Chequedate" HeaderText="Chequedate" 
                                SortExpression="Chequedate" />
                            <asp:BoundField DataField="Getdate" HeaderText="Getdate" 
                                SortExpression="Getdate" />
                            <asp:BoundField DataField="Amount" HeaderText="Amount" 
                                SortExpression="Amount" />
                            <asp:BoundField DataField="bankname" HeaderText="bankname" 
                                SortExpression="bankname" />
                            <asp:BoundField DataField="Bankcode" HeaderText="Bankcode" 
                                SortExpression="Bankcode" />
                            <asp:BoundField DataField="Branchcode" HeaderText="Branchcode" 
                                SortExpression="Branchcode" />
                            <asp:BoundField DataField="Chequestatus" HeaderText="Chequestatus" 
                                SortExpression="Chequestatus" />
                            <asp:CommandField ButtonType="Button" SelectText="IN Cheque" 
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
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString54 %>" 
                        SelectCommand="SELECT [Id], [Sid], [Firstname], [Companyname], [Companyaddress], [Companyphone1], [Personalphone], [Holdername], [Accountno], [Chequeno], [Chequetype], [Chequedate], [Getdate], [Amount], [bankname], [Bankcode], [Branchcode], [Chequestatus] FROM [Sup_InChequeView] WHERE ([Chequestatus] = @Chequestatus)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td bgcolor="Silver" class="style9">
                    <asp:Label ID="Label41" runat="server" 
                    
                    
                        Text="Supplier's In Cheque  Details  Search by Supplier Name or Comapany Name "></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style19" bgcolor="#999999" valign="top">
                    <asp:Label ID="Label56" runat="server" Text="Supplier's Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList3" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="Firstname" 
                    DataValueField="Firstname" Height="29px" Width="261px">
                    </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button13" runat="server" Text="Find" Width="89px" 
                        onclick="Button13_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label61" runat="server" Text="Company Name"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="Companyname" 
                    DataValueField="Companyname" Height="32px" Width="244px">
                    </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button14" runat="server" Text="Find" Width="89px" 
                        onclick="Button14_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
            </tr>
            <tr>
                <td class="style19" bgcolor="Silver" valign="top">
                    <asp:Label ID="Label60" runat="server" 
                    
                    
                        Text="Supplier's  IN Cheque Details Search By Supplier's NIC No or Supplier's ID."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style19" bgcolor="#999999" valign="top">
                    <asp:Label ID="Label58" runat="server" Text="NIC No"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Width="221px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                        ID="Button15" runat="server" Text="Find" 
                        Width="89px" onclick="Button15_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label59" runat="server" Text="Supplier's  ID"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:TextBox ID="TextBox2" runat="server" Width="221px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                        ID="Button16" runat="server" Text="Find" Width="89px" 
                        onclick="Button16_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="style18" bgcolor="Silver">
                    <asp:Label ID="Label45" runat="server" Text="."></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString52 %>" 
                        SelectCommand="SELECT [Firstname] FROM [Sup_InChequeView] WHERE ([Chequestatus] = @Chequestatus)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString53 %>" 
                        SelectCommand="SELECT [Companyname] FROM [Sup_InChequeView] WHERE ([Chequestatus] = @Chequestatus)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Not deposit" Name="Chequestatus" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Id,Sid" DataSourceID="SqlDataSource4" 
                        ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView2_SelectedIndexChanged">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                                SortExpression="Id" />
                            <asp:BoundField DataField="Sid" HeaderText="Sid" ReadOnly="True" 
                                SortExpression="Sid" />
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
                            <asp:BoundField DataField="Holdername" HeaderText="Holdername" 
                                SortExpression="Holdername" />
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
                            <asp:BoundField DataField="Getdate" HeaderText="Getdate" 
                                SortExpression="Getdate" />
                            <asp:BoundField DataField="bankname" HeaderText="bankname" 
                                SortExpression="bankname" />
                            <asp:BoundField DataField="Bankcode" HeaderText="Bankcode" 
                                SortExpression="Bankcode" />
                            <asp:BoundField DataField="Branchcode" HeaderText="Branchcode" 
                                SortExpression="Branchcode" />
                            <asp:BoundField DataField="Chequestatus" HeaderText="Chequestatus" 
                                SortExpression="Chequestatus" />
                            <asp:CommandField ButtonType="Button" SelectText="IN Cheque" 
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
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Id,Sid" DataSourceID="SqlDataSource5" 
                        ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView3_SelectedIndexChanged">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                                SortExpression="Id" />
                            <asp:BoundField DataField="Sid" HeaderText="Sid" ReadOnly="True" 
                                SortExpression="Sid" />
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
                            <asp:BoundField DataField="Holdername" HeaderText="Holdername" 
                                SortExpression="Holdername" />
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
                            <asp:BoundField DataField="Getdate" HeaderText="Getdate" 
                                SortExpression="Getdate" />
                            <asp:BoundField DataField="bankname" HeaderText="bankname" 
                                SortExpression="bankname" />
                            <asp:BoundField DataField="Bankcode" HeaderText="Bankcode" 
                                SortExpression="Bankcode" />
                            <asp:BoundField DataField="Branchcode" HeaderText="Branchcode" 
                                SortExpression="Branchcode" />
                            <asp:BoundField DataField="Chequestatus" HeaderText="Chequestatus" 
                                SortExpression="Chequestatus" />
                            <asp:CommandField ButtonType="Button" SelectText="IN Cheque" 
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
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Id,Sid" DataSourceID="SqlDataSource6" 
                        ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView4_SelectedIndexChanged">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                                SortExpression="Id" />
                            <asp:BoundField DataField="Sid" HeaderText="Sid" ReadOnly="True" 
                                SortExpression="Sid" />
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
                            <asp:BoundField DataField="Holdername" HeaderText="Holdername" 
                                SortExpression="Holdername" />
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
                            <asp:BoundField DataField="Getdate" HeaderText="Getdate" 
                                SortExpression="Getdate" />
                            <asp:BoundField DataField="bankname" HeaderText="bankname" 
                                SortExpression="bankname" />
                            <asp:BoundField DataField="Bankcode" HeaderText="Bankcode" 
                                SortExpression="Bankcode" />
                            <asp:BoundField DataField="Branchcode" HeaderText="Branchcode" 
                                SortExpression="Branchcode" />
                            <asp:BoundField DataField="Chequestatus" HeaderText="Chequestatus" 
                                SortExpression="Chequestatus" />
                            <asp:CommandField ButtonType="Button" SelectText="IN Cheque" 
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
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString55 %>" 
                        SelectCommand="SELECT [Id], [Sid], [Firstname], [Companyname], [Companyaddress], [Companyphone1], [Personalphone], [Holdername], [Accountno], [Chequeno], [Chequetype], [Chequedate], [Amount], [Getdate], [bankname], [Bankcode], [Branchcode], [Chequestatus] FROM [Sup_InChequeView] WHERE (([Chequestatus] = @Chequestatus) AND ([Firstname] = @Firstname))">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                            <asp:SessionParameter Name="Firstname" SessionField="sfn" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style18">
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString56 %>" 
                        SelectCommand="SELECT [Id], [Sid], [Firstname], [Companyname], [Companyaddress], [Companyphone1], [Personalphone], [Holdername], [Accountno], [Chequeno], [Chequetype], [Chequedate], [Amount], [Getdate], [bankname], [Bankcode], [Branchcode], [Chequestatus] FROM [Sup_InChequeView] WHERE (([Chequestatus] = @Chequestatus) AND ([Companyname] = @Companyname))">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                            <asp:SessionParameter Name="Companyname" SessionField="scn" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style18">
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString57 %>" 
                        SelectCommand="SELECT [Id], [Sid], [Firstname], [Companyname], [Companyaddress], [Companyphone1], [Personalphone], [Holdername], [Accountno], [Chequeno], [Chequetype], [Chequedate], [Amount], [Getdate], [bankname], [Bankcode], [Branchcode], [Chequestatus] FROM [Sup_InChequeView] WHERE (([NICno] = @NICno) AND ([Chequestatus] = @Chequestatus))">
                        <SelectParameters>
                            <asp:SessionParameter Name="NICno" SessionField="snic" Type="String" />
                            <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Id,Sid" DataSourceID="SqlDataSource7" 
                        ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView5_SelectedIndexChanged">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                                SortExpression="Id" />
                            <asp:BoundField DataField="Sid" HeaderText="Sid" ReadOnly="True" 
                                SortExpression="Sid" />
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
                            <asp:BoundField DataField="Holdername" HeaderText="Holdername" 
                                SortExpression="Holdername" />
                            <asp:BoundField DataField="Accountno" HeaderText="Accountno" 
                                SortExpression="Accountno" />
                            <asp:BoundField DataField="Chequeno" HeaderText="Chequeno" 
                                SortExpression="Chequeno" />
                            <asp:BoundField DataField="Chequetype" HeaderText="Chequetype" 
                                SortExpression="Chequetype" />
                            <asp:BoundField DataField="Chequedate" HeaderText="Chequedate" 
                                SortExpression="Chequedate" />
                            <asp:BoundField DataField="Getdate" HeaderText="Getdate" 
                                SortExpression="Getdate" />
                            <asp:BoundField DataField="Amount" HeaderText="Amount" 
                                SortExpression="Amount" />
                            <asp:BoundField DataField="bankname" HeaderText="bankname" 
                                SortExpression="bankname" />
                            <asp:BoundField DataField="Bankcode" HeaderText="Bankcode" 
                                SortExpression="Bankcode" />
                            <asp:BoundField DataField="Branchcode" HeaderText="Branchcode" 
                                SortExpression="Branchcode" />
                            <asp:BoundField DataField="Chequestatus" HeaderText="Chequestatus" 
                                SortExpression="Chequestatus" />
                            <asp:CommandField ButtonType="Button" SelectText="IN Cheque" 
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
                </td>
            </tr>
            <tr>
                <td class="style18">
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString58 %>" 
                        SelectCommand="SELECT [Id], [Sid], [Firstname], [Companyname], [Companyaddress], [Companyphone1], [Personalphone], [Holdername], [Accountno], [Chequeno], [Chequetype], [Chequedate], [Getdate], [Amount], [bankname], [Bankcode], [Branchcode], [Chequestatus] FROM [Sup_InChequeView] WHERE (([Chequestatus] = @Chequestatus) AND ([Sid] = @Sid))">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                            <asp:SessionParameter Name="Sid" SessionField="sid" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style17" bgcolor="Silver">
                &nbsp;</td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
</asp:Content>

