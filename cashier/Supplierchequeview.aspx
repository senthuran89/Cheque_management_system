<%@ Page Language="C#" MasterPageFile="~/cashier/Cashiermain.master" AutoEventWireup="true" CodeFile="Supplierchequeview.aspx.cs" Inherits="cashier_Supplierchequeview" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style17
        {
            width: 640px;
        }
        .style18
    {
        height: 308px;
    }
    .style19
    {
        height: 37px;
    }
    .style20
    {
        height: 17px;
    }
    .style21
    {
        height: 23px;
    }
        .style22
        {
            height: 610px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table bgcolor="#EFEFEF" frame="box" style="width: 97%;">
            <tr>
                <td bgcolor="#99CCFF">
                    <asp:Label ID="Label30" runat="server" 
                        Text="Supplier Cheque Details"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="Silver">
                    <asp:Label ID="Label31" runat="server" Text="Supplier's  Cheque Details."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style17" valign="top">
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Sid,Id" DataSourceID="SqlDataSource1" 
                        ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView3_SelectedIndexChanged">
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
                            <asp:BoundField DataField="Chequestatus" HeaderText="Chequestatus" 
                                SortExpression="Chequestatus" />
                            <asp:CommandField ButtonType="Button" SelectText="Deposit " 
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
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString34 %>" 
                        SelectCommand="SELECT [Sid], [Id], [Firstname], [Companyname], [Companyaddress], [Companyphone1], [Personalphone], [Chequeno], [Getdate], [Chequetype], [Chequedate], [Amount], [bankname], [Bankcode], [Branchcode], [Chequestatus] FROM [Sup_InChequeView] WHERE ([Chequestatus] = @Chequestatus)">
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
                    DataSourceID="SqlDataSource2" DataTextField="Firstname" 
                    DataValueField="Firstname" Height="29px" Width="261px">
                    </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button7" runat="server" 
                        onclick="Button5_Click" Text="Find" Width="74px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label57" runat="server" Text="Company name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource3" DataTextField="Companyname" 
                    DataValueField="Companyname" Height="26px" Width="261px">
                    </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button9" runat="server" 
                        onclick="Button9_Click" Text="Find" Width="66px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
            </tr>
            <tr>
                <td class="style19" bgcolor="Silver" valign="top">
                    <asp:Label ID="Label60" runat="server" 
                    
                    Text="Supplier's In Cheque  Details Search By Supplier's NIC No or Cheque No."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style20" bgcolor="#999999" valign="top">
                    <asp:Label ID="Label58" runat="server" Text="NIC No"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="221px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button10" runat="server" onclick="Button10_Click" Text="Find" 
                        Width="77px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label59" runat="server" Text="Cheque  No"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" Width="221px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button11" runat="server" onclick="Button11_Click" Text="Find" 
                        Width="76px" />
                </td>
            </tr>
            <tr>
                <td class="style21" bgcolor="Silver">
                    <asp:Label ID="Label45" runat="server" Text="."></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString37 %>" 
                        SelectCommand="SELECT [Firstname] FROM [Sup_InChequeView] WHERE ([Chequestatus] = @Chequestatus)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString38 %>" 
                        SelectCommand="SELECT [Companyname] FROM [Sup_InChequeView] WHERE ([Chequestatus] = @Chequestatus)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style18">
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Sid,Id" DataSourceID="SqlDataSource4" 
                        ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView4_SelectedIndexChanged1">
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
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString39 %>" 
                        SelectCommand="SELECT [Sid], [Id], [Firstname], [Companyname], [Companyaddress], [Companyphone1], [Personalphone], [Joindate], [Chequeno], [Getdate], [Chequetype], [Chequedate], [Amount], [bankname], [Bankcode], [Branchcode], [Chequestatus] FROM [Sup_InChequeView] WHERE (([Chequestatus] = @Chequestatus) AND ([Firstname] = @Firstname))">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                            <asp:SessionParameter Name="Firstname" SessionField="supfn" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style22">
                    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Sid,Id" DataSourceID="SqlDataSource5" 
                        ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView5_SelectedIndexChanged">
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
                    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Sid,Id" DataSourceID="SqlDataSource6" 
                        ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView6_SelectedIndexChanged">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="Sid" HeaderText="Sid" ReadOnly="True" 
                                SortExpression="Sid" />
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                                SortExpression="Id" />
                            <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                                SortExpression="Firstname" />
                            <asp:BoundField DataField="NICno" HeaderText="NICno" SortExpression="NICno" />
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
                    <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Sid,Id" DataSourceID="SqlDataSource7" 
                        ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView7_SelectedIndexChanged">
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
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString40 %>" 
                        SelectCommand="SELECT [Sid], [Id], [Firstname], [Companyname], [Companyaddress], [Companyphone1], [Personalphone], [Joindate], [Chequeno], [Getdate], [Chequetype], [Chequedate], [Amount], [bankname], [Bankcode], [Branchcode], [Chequestatus] FROM [Sup_InChequeView] WHERE (([Chequestatus] = @Chequestatus) AND ([Companyname] = @Companyname))">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                            <asp:SessionParameter Name="Companyname" SessionField="supcn" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString41 %>" 
                        SelectCommand="SELECT [Sid], [Id], [Firstname], [NICno], [Companyname], [Companyaddress], [Companyphone1], [Personalphone], [Accountno], [Chequeno], [Getdate], [Chequetype], [Chequedate], [Amount], [bankname], [Bankcode], [Branchcode] FROM [Sup_InChequeView] WHERE (([Chequestatus] = @Chequestatus) AND ([NICno] = @NICno))">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                            <asp:SessionParameter Name="NICno" SessionField="supnic" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString42 %>" 
                        SelectCommand="SELECT [Sid], [Id], [Firstname], [Companyname], [Companyaddress], [Companyphone1], [Personalphone], [Chequeno], [Getdate], [Chequetype], [Chequedate], [Amount], [bankname], [Bankcode], [Branchcode] FROM [Sup_InChequeView] WHERE (([Chequestatus] = @Chequestatus) AND ([Chequeno] = @Chequeno))">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                            <asp:SessionParameter Name="Chequeno" SessionField="supid" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style17" bgcolor="Silver">
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
</asp:Content>

