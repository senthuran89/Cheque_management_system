<%@ Page Language="C#" MasterPageFile="~/cashier/Cashiermain.master" AutoEventWireup="true" CodeFile="customer'sissuechequeview.aspx.cs" Inherits="cashier_customer_sissuechequeview" Title="Untitled Page" %>

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
                        Text="Customer's  IN Cheque Details."></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="ID,Cid" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                            SortExpression="ID" />
                        <asp:BoundField DataField="Cid" HeaderText="Cid" ReadOnly="True" 
                            SortExpression="Cid" />
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
                        <asp:BoundField DataField="Accountno" HeaderText="Accountno" 
                            SortExpression="Accountno" />
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
            <td bgcolor="Silver">
                <asp:Label ID="Label31" runat="server" 
                    Text="All Customer's  IN Cheque Details."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style17" valign="top">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString45 %>" 
                    
                    SelectCommand="SELECT [ID], [Cid], [Firstname], [Companyname], [Companyphone1], [Personalphone], [bankname], [Bankcode], [Branchcode], [Accountno], [holdername], [Chequeno], [Getdate], [Chequetype], [Chequedate], [Amount], [Chequestatus] FROM [cus_InchequeView] WHERE ([Chequestatus] = @Chequestatus)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td bgcolor="Silver" class="style9">
                <asp:Label ID="Label41" runat="server" 
                    
                    
                    Text="Customer's  In cheque Details  Search by Customer Name or Comapany Name "></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style19" bgcolor="#999999" valign="top">
                <asp:Label ID="Label56" runat="server" Text="Customer's Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList3" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="Firstname" 
                    DataValueField="Firstname" Height="29px" Width="261px">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button9" runat="server" Text="Find" Width="85px" 
                    onclick="Button9_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label57" runat="server" Text="Company name"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource3" DataTextField="Companyname" 
                    DataValueField="Companyname" Height="32px" Width="244px">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button10" runat="server" 
                    Text="Find" Width="85px" onclick="Button10_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19" bgcolor="Silver" valign="top">
                <asp:Label ID="Label60" runat="server" 
                    
                    
                    Text=" Customer's  IN Cheque Details Search By Customer's NIC No or Customer's ID."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style19" bgcolor="#999999" valign="top">
                <asp:Label ID="Label58" runat="server" Text="NIC No"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Width="221px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button11" runat="server" Text="Find" Width="85px" 
                    onclick="Button11_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label59" runat="server" Text="Customer's  ID"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="221px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                    ID="Button12" runat="server" Text="Find" Width="85px" 
                    onclick="Button12_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style18" bgcolor="Silver">
                <asp:Label ID="Label45" runat="server" Text="."></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString46 %>" 
                    SelectCommand="SELECT [Firstname] FROM [cus_InchequeView] WHERE ([Chequestatus] = @Chequestatus)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="ID,Cid" DataSourceID="SqlDataSource4" 
                    ForeColor="#333333" GridLines="None" 
                    onselectedindexchanged="GridView2_SelectedIndexChanged">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                            SortExpression="ID" />
                        <asp:BoundField DataField="Cid" HeaderText="Cid" ReadOnly="True" 
                            SortExpression="Cid" />
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
                        <asp:BoundField DataField="Chequetype" HeaderText="Chequetype" 
                            SortExpression="Chequetype" />
                        <asp:BoundField DataField="Chequedate" HeaderText="Chequedate" 
                            SortExpression="Chequedate" />
                        <asp:BoundField DataField="Getdate" HeaderText="Getdate" 
                            SortExpression="Getdate" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" 
                            SortExpression="Amount" />
                        <asp:BoundField DataField="Reson" HeaderText="Reson" SortExpression="Reson" />
                        <asp:BoundField DataField="Chequestatus" HeaderText="Chequestatus" 
                            SortExpression="Chequestatus" />
                        <asp:CommandField ButtonType="Button" SelectText="Issue To" 
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
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString47 %>" 
                    SelectCommand="SELECT [Companyname] FROM [cus_InchequeView] WHERE ([Chequestatus] = @Chequestatus)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="ID,Cid" DataSourceID="SqlDataSource5" 
                    ForeColor="#333333" GridLines="None" 
                    onselectedindexchanged="GridView3_SelectedIndexChanged">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                            SortExpression="ID" />
                        <asp:BoundField DataField="Cid" HeaderText="Cid" ReadOnly="True" 
                            SortExpression="Cid" />
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
                        <asp:BoundField DataField="Chequetype" HeaderText="Chequetype" 
                            SortExpression="Chequetype" />
                        <asp:BoundField DataField="Chequedate" HeaderText="Chequedate" 
                            SortExpression="Chequedate" />
                        <asp:BoundField DataField="Getdate" HeaderText="Getdate" 
                            SortExpression="Getdate" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" 
                            SortExpression="Amount" />
                        <asp:BoundField DataField="Chequestatus" HeaderText="Chequestatus" 
                            SortExpression="Chequestatus" />
                        <asp:CommandField ButtonType="Button" SelectText="Issue To" 
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
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString48 %>" 
                    SelectCommand="SELECT [ID], [Cid], [Firstname], [Companyname], [Companyphone1], [Personalphone], [bankname], [Bankcode], [Branchcode], [holdername], [Accountno], [Chequeno], [Chequetype], [Chequedate], [Getdate], [Amount], [Reson], [Chequestatus] FROM [cus_InchequeView] WHERE (([Chequestatus] = @Chequestatus) AND ([Firstname] = @Firstname))">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                        <asp:SessionParameter Name="Firstname" SessionField="cfn" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="ID,Cid" DataSourceID="SqlDataSource6" 
                    ForeColor="#333333" GridLines="None" 
                    onselectedindexchanged="GridView4_SelectedIndexChanged">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                            SortExpression="ID" />
                        <asp:BoundField DataField="Cid" HeaderText="Cid" ReadOnly="True" 
                            SortExpression="Cid" />
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
                        <asp:BoundField DataField="Chequetype" HeaderText="Chequetype" 
                            SortExpression="Chequetype" />
                        <asp:BoundField DataField="Chequedate" HeaderText="Chequedate" 
                            SortExpression="Chequedate" />
                        <asp:BoundField DataField="Getdate" HeaderText="Getdate" 
                            SortExpression="Getdate" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" 
                            SortExpression="Amount" />
                        <asp:BoundField DataField="Chequestatus" HeaderText="Chequestatus" 
                            SortExpression="Chequestatus" />
                        <asp:BoundField DataField="NICno" HeaderText="NICno" SortExpression="NICno" />
                        <asp:CommandField ButtonType="Button" SelectText="Issue To" 
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
                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="ID,Cid" DataSourceID="SqlDataSource7" 
                    ForeColor="#333333" GridLines="None" 
                    onselectedindexchanged="GridView5_SelectedIndexChanged">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                            SortExpression="ID" />
                        <asp:BoundField DataField="Cid" HeaderText="Cid" ReadOnly="True" 
                            SortExpression="Cid" />
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
                        <asp:BoundField DataField="Chequetype" HeaderText="Chequetype" 
                            SortExpression="Chequetype" />
                        <asp:BoundField DataField="Chequedate" HeaderText="Chequedate" 
                            SortExpression="Chequedate" />
                        <asp:BoundField DataField="Getdate" HeaderText="Getdate" 
                            SortExpression="Getdate" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" 
                            SortExpression="Amount" />
                        <asp:BoundField DataField="Chequestatus" HeaderText="Chequestatus" 
                            SortExpression="Chequestatus" />
                        <asp:CommandField ButtonType="Button" SelectText="Issue To" 
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
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString49 %>" 
                    SelectCommand="SELECT [ID], [Cid], [Firstname], [Companyname], [Companyphone1], [Personalphone], [bankname], [Bankcode], [Branchcode], [holdername], [Accountno], [Chequeno], [Chequetype], [Chequedate], [Getdate], [Amount], [Chequestatus] FROM [cus_InchequeView] WHERE (([Companyname] = @Companyname) AND ([Chequestatus] = @Chequestatus))">
                    <SelectParameters>
                        <asp:SessionParameter Name="Companyname" SessionField="ccn" Type="String" />
                        <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style18">
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString50 %>" 
                    SelectCommand="SELECT [ID], [Cid], [Firstname], [Companyname], [Companyphone1], [Personalphone], [bankname], [Bankcode], [Branchcode], [holdername], [Accountno], [Chequeno], [Chequetype], [Chequedate], [Getdate], [Amount], [Chequestatus], [NICno] FROM [cus_InchequeView] WHERE (([Chequestatus] = @Chequestatus) AND ([NICno] = @NICno))">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                        <asp:SessionParameter Name="NICno" SessionField="cnic" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style18">
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString51 %>" 
                    SelectCommand="SELECT [ID], [Cid], [Firstname], [Companyname], [Companyphone1], [Personalphone], [bankname], [Bankcode], [Branchcode], [holdername], [Accountno], [Chequeno], [Chequetype], [Chequedate], [Getdate], [Amount], [Chequestatus] FROM [cus_InchequeView] WHERE (([Chequestatus] = @Chequestatus) AND ([Cid] = @Cid))">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                        <asp:SessionParameter Name="Cid" SessionField="cid" Type="Int32" />
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

