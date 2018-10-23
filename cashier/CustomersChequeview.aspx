<%@ Page Language="C#" MasterPageFile="~/cashier/Cashiermain.master" AutoEventWireup="true" CodeFile="CustomersChequeview.aspx.cs" Inherits="cashier_CustomersChequeview" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style17
        {
            width: 640px;
        }
        .style18
        {
        }
        .style19
        {
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table bgcolor="#EFEFEF" frame="box" style="width: 97%;">
        <tr>
            <td bgcolor="#99CCFF">
                <asp:Label ID="Label30" runat="server" 
                        Text="Customers Cheque Details"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                    &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="Silver">
                <asp:Label ID="Label31" runat="server" Text="Customer's  Cheque Details."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style17" valign="top">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Cid,ID" DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" CellPadding="4" 
                    ForeColor="#333333" GridLines="None" Width="1643px">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="Cid" HeaderText="Cid" ReadOnly="True" 
                            SortExpression="Cid" />
                        <asp:BoundField DataField="ID" HeaderText="ID" 
                            SortExpression="ID" ReadOnly="True" />
                        <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                            SortExpression="Firstname" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="Companyname" HeaderText="Companyname" 
                            SortExpression="Companyname" />
                        <asp:BoundField DataField="Companyphone1" HeaderText="Companyphone1" 
                            SortExpression="Companyphone1" />
                        <asp:BoundField DataField="Personalphone" HeaderText="Personalphone" 
                            SortExpression="Personalphone" />
                        <asp:BoundField DataField="Email" HeaderText="Email" 
                            SortExpression="Email" />
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
                        <asp:BoundField DataField="Reson" HeaderText="Reson" SortExpression="Reson" />
                        <asp:BoundField DataField="Chequestatus" HeaderText="Chequestatus" 
                            SortExpression="Chequestatus" />
                        <asp:CommandField ButtonType="Button" ShowSelectButton="True" 
                            SelectText="Deposit" >
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
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" 
                    
                    SelectCommand="SELECT [Cid], [ID], [Firstname], [Address], [Companyname], [Companyphone1], [Personalphone], [Email], [bankname], [Bankcode], [Branchcode], [holdername], [Accountno], [Chequeno], [Getdate], [Chequetype], [Chequedate], [Amount], [Reson], [Chequestatus] FROM [cus_InchequeView] WHERE ([Chequestatus] = @Chequestatus)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td bgcolor="Silver" class="style9">
                <asp:Label ID="Label41" runat="server" 
                    
                    Text="Customer's In Cheque  Details  Search by Customer Name or Comapany Name "></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style19" bgcolor="#999999" valign="top">
                <asp:Label ID="Label56" runat="server" Text="Customer's Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList3" runat="server" 
                    DataSourceID="SqlDataSource7" DataTextField="Firstname" 
                    DataValueField="Firstname" Height="29px" Width="261px">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Find" 
                    Width="101px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label57" runat="server" Text="Company name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource4" DataTextField="Companyname" 
                    DataValueField="Companyname" Height="26px" Width="261px">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Find" 
                    Width="101px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19" bgcolor="Silver" valign="top">
                <asp:Label ID="Label60" runat="server" 
                    
                    Text=" Customer's In Cheque  Details Search By Customer's NIC No or Cheque No."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style19" bgcolor="#999999" valign="top">
                <asp:Label ID="Label58" runat="server" Text="NIC No"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Width="221px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Find" 
                    Width="101px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label59" runat="server" Text="Cheque  No"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" Width="221px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Find" 
                    Width="101px" />
                </td>
        </tr>
        <tr>
            <td class="style18" bgcolor="Silver">
                <asp:Label ID="Label45" runat="server" Text="."></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString10 %>" 
                    SelectCommand="SELECT [Companyname] FROM [cus_InchequeView] WHERE ([Chequestatus] = @Chequestatus)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString12 %>" 
                    SelectCommand="SELECT [Firstname] FROM [cus_InchequeView] WHERE ([Chequestatus] = @Chequestatus)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Cid,ID" DataSourceID="SqlDataSource3" 
                    onselectedindexchanged="GridView2_SelectedIndexChanged" CellPadding="4" 
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
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="Companyphone1" HeaderText="Companyphone1" 
                            SortExpression="Companyphone1" />
                        <asp:BoundField DataField="Personalphone" HeaderText="Personalphone" 
                            SortExpression="Personalphone" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
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
                        <asp:CommandField ButtonType="Button" ShowSelectButton="True" 
                            SelectText="Deposit" >
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
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString3 %>" 
                    SelectCommand="SELECT [Cid], [ID], [Firstname], [Companyname], [Address], [Companyphone1], [Personalphone], [Email], [bankname], [Bankcode], [Branchcode], [holdername], [Accountno], [Chequeno], [Getdate], [Chequetype], [Chequedate], [Amount], [Chequestatus] FROM [cus_InchequeView] WHERE ([Firstname] = @Firstname)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Firstname" SessionField="cusfn" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Cid,ID" DataSourceID="SqlDataSource5" 
                    onselectedindexchanged="GridView3_SelectedIndexChanged" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="Cid" HeaderText="Cid" ReadOnly="True" 
                            SortExpression="Cid" />
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                            SortExpression="ID" />
                        <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                            SortExpression="Firstname" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="Companyname" HeaderText="Companyname" 
                            SortExpression="Companyname" />
                        <asp:BoundField DataField="Companyphone1" HeaderText="Companyphone1" 
                            SortExpression="Companyphone1" />
                        <asp:BoundField DataField="Personalphone" HeaderText="Personalphone" 
                            SortExpression="Personalphone" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
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
                        <asp:BoundField DataField="Reson" HeaderText="Reson" SortExpression="Reson" />
                        <asp:BoundField DataField="Chequestatus" HeaderText="Chequestatus" 
                            SortExpression="Chequestatus" />
                        <asp:CommandField ShowSelectButton="True" ButtonType="Button" 
                            SelectText="Deposit" >
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
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString5 %>" 
                    SelectCommand="SELECT [Cid], [ID], [Firstname], [Address], [Companyname], [Companyphone1], [Personalphone], [Email], [bankname], [Bankcode], [Branchcode], [holdername], [Accountno], [Chequeno], [Getdate], [Chequetype], [Chequedate], [Amount], [Reson], [Chequestatus] FROM [cus_InchequeView] WHERE (([Chequestatus] = @Chequestatus) AND ([Companyname] = @Companyname))">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                        <asp:SessionParameter Name="Companyname" SessionField="cuscomname" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style18">
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Cid,ID" DataSourceID="SqlDataSource6" 
                    onselectedindexchanged="GridView4_SelectedIndexChanged" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="Cid" HeaderText="Cid" ReadOnly="True" 
                            SortExpression="Cid" />
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                            SortExpression="ID" />
                        <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                            SortExpression="Firstname" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="Companyname" HeaderText="Companyname" 
                            SortExpression="Companyname" />
                        <asp:BoundField DataField="NICno" HeaderText="NICno" SortExpression="NICno" />
                        <asp:BoundField DataField="Regno" HeaderText="Regno" SortExpression="Regno" />
                        <asp:BoundField DataField="Companyphone1" HeaderText="Companyphone1" 
                            SortExpression="Companyphone1" />
                        <asp:BoundField DataField="Personalphone" HeaderText="Personalphone" 
                            SortExpression="Personalphone" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
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
                        <asp:CommandField ShowSelectButton="True" ButtonType="Button" 
                            SelectText="Deposit" >
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
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString6 %>" 
                    SelectCommand="SELECT [Cid], [ID], [Firstname], [Address], [Companyname], [NICno], [Regno], [Companyphone1], [Personalphone], [Email], [bankname], [Bankcode], [Branchcode], [holdername], [Accountno], [Chequeno], [Getdate], [Chequetype], [Chequedate], [Amount], [Chequestatus] FROM [cus_InchequeView] WHERE (([NICno] = @NICno) AND ([Chequestatus] = @Chequestatus))">
                    <SelectParameters>
                        <asp:SessionParameter Name="NICno" SessionField="cusnic" Type="String" />
                        <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Cid,ID" DataSourceID="SqlDataSource2" 
                    onselectedindexchanged="GridView5_SelectedIndexChanged" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="Cid" HeaderText="Cid" ReadOnly="True" 
                            SortExpression="Cid" />
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                            SortExpression="ID" />
                        <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                            SortExpression="Firstname" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="Companyname" HeaderText="Companyname" 
                            SortExpression="Companyname" />
                        <asp:BoundField DataField="Regno" HeaderText="Regno" SortExpression="Regno" />
                        <asp:BoundField DataField="Companyphone1" HeaderText="Companyphone1" 
                            SortExpression="Companyphone1" />
                        <asp:BoundField DataField="Personalphone" HeaderText="Personalphone" 
                            SortExpression="Personalphone" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
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
                        <asp:CommandField ShowSelectButton="True" ButtonType="Button" 
                            SelectText="Deposit" >
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString11 %>" 
                    
                    SelectCommand="SELECT [Cid], [ID], [Firstname], [Address], [Companyname], [Regno], [Companyphone1], [Personalphone], [Email], [bankname], [Bankcode], [Branchcode], [holdername], [Accountno], [Chequeno], [Getdate], [Chequetype], [Chequedate], [Amount], [Chequestatus] FROM [cus_InchequeView] WHERE (([Chequestatus] = @Chequestatus) AND ([Chequeno] = @Chequeno))">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Not Deposit" Name="Chequestatus" Type="String" />
                        <asp:SessionParameter Name="Chequeno" SessionField="chequeno" Type="String" />
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

