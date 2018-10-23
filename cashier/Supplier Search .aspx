<%@ Page Language="C#" MasterPageFile="~/cashier/Cashiermain.master" AutoEventWireup="true" CodeFile="Supplier Search .aspx.cs" Inherits="cashier_Supplier_Search_" Title="Untitled Page" %>

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
                        Text="Suppliers  Data"></asp:Label>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="Sid" DataSourceID="SqlDataSource3" 
                    ForeColor="#333333" GridLines="None" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="Sid" HeaderText="Sid" InsertVisible="False" 
                            ReadOnly="True" SortExpression="Sid" />
                        <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                            SortExpression="Firstname" />
                        <asp:BoundField DataField="Lastname" HeaderText="Lastname" 
                            SortExpression="Lastname" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="Companyname" HeaderText="Companyname" 
                            SortExpression="Companyname" />
                        <asp:BoundField DataField="Companyaddress" HeaderText="Companyaddress" 
                            SortExpression="Companyaddress" />
                        <asp:BoundField DataField="Companyphone1" HeaderText="Companyphone1" 
                            SortExpression="Companyphone1" />
                        <asp:BoundField DataField="Companyphone2" HeaderText="Companyphone2" 
                            SortExpression="Companyphone2" />
                        <asp:BoundField DataField="Personalphone" HeaderText="Personalphone" 
                            SortExpression="Personalphone" />
                        <asp:BoundField DataField="Joindate" HeaderText="Joindate" 
                            SortExpression="Joindate" />
                        <asp:CommandField ButtonType="Button" SelectText="In Cheque" 
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
                    &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="Silver">
                <asp:Label ID="Label31" runat="server" Text="Supplier's  Details."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style17" valign="top">
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString23 %>" 
                    SelectCommand="SELECT [Sid], [Firstname], [Lastname], [City], [Companyname], [Companyaddress], [Companyphone1], [Companyphone2], [Personalphone], [Joindate], [Notes] FROM [Supplier]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td bgcolor="Silver" class="style9">
                <asp:Label ID="Label41" runat="server" 
                    
                    Text="Supplier's  Details  Search by Supplier Name or Comapany Name "></asp:Label>
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
                <asp:Button ID="Button9" runat="server" Text="Find" Width="88px" 
                    onclick="Button9_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label57" runat="server" Text="Company name"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="Companyname" 
                    DataValueField="Companyname" Height="32px" Width="244px">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button11" runat="server" 
                    Text="Find" Width="88px" onclick="Button11_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19" bgcolor="Silver" valign="top">
                <asp:Label ID="Label60" runat="server" 
                    
                    Text="Supplier's  Details Search By Supplier's NIC No or Supplier's ID."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style19" bgcolor="#999999" valign="top">
                <asp:Label ID="Label58" runat="server" Text="NIC No"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Width="221px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                    ID="Button10" runat="server" Text="Find" Width="88px" 
                    onclick="Button10_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label59" runat="server" 
                    Text="Supplier's  ID"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" Width="221px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button12" runat="server" Text="Find" Width="88px" 
                    onclick="Button12_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style18" bgcolor="Silver">
                <asp:Label ID="Label45" runat="server" Text="."></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString21 %>" 
                    SelectCommand="SELECT [Firstname] FROM [Supplier]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString22 %>" 
                    SelectCommand="SELECT [Companyname] FROM [Supplier]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style18">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="Sid" DataSourceID="SqlDataSource4" 
                    ForeColor="#333333" GridLines="None" 
                    onselectedindexchanged="GridView2_SelectedIndexChanged1">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="Sid" HeaderText="Sid" InsertVisible="False" 
                            ReadOnly="True" SortExpression="Sid" />
                        <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                            SortExpression="Firstname" />
                        <asp:BoundField DataField="Lastname" HeaderText="Lastname" 
                            SortExpression="Lastname" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
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
                        <asp:CommandField ButtonType="Button" SelectText="In Cheque" 
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
                    CellPadding="4" DataKeyNames="Sid" DataSourceID="SqlDataSource5" 
                    ForeColor="#333333" GridLines="None" 
                    onselectedindexchanged="GridView3_SelectedIndexChanged">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="Sid" HeaderText="Sid" InsertVisible="False" 
                            ReadOnly="True" SortExpression="Sid" />
                        <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                            SortExpression="Firstname" />
                        <asp:BoundField DataField="Lastname" HeaderText="Lastname" 
                            SortExpression="Lastname" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="Companyname" HeaderText="Companyname" 
                            SortExpression="Companyname" />
                        <asp:BoundField DataField="Companyaddress" HeaderText="Companyaddress" 
                            SortExpression="Companyaddress" />
                        <asp:BoundField DataField="Companyphone1" HeaderText="Companyphone1" 
                            SortExpression="Companyphone1" />
                        <asp:BoundField DataField="Companyphone2" HeaderText="Companyphone2" 
                            SortExpression="Companyphone2" />
                        <asp:BoundField DataField="Personalphone" HeaderText="Personalphone" 
                            SortExpression="Personalphone" />
                        <asp:BoundField DataField="Joindate" HeaderText="Joindate" 
                            SortExpression="Joindate" />
                        <asp:CommandField />
                        <asp:CommandField ButtonType="Button" SelectText="In cheque" 
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
                    CellPadding="4" DataKeyNames="Sid" DataSourceID="SqlDataSource6" 
                    ForeColor="#333333" GridLines="None" 
                    onselectedindexchanged="GridView4_SelectedIndexChanged">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="Sid" HeaderText="Sid" InsertVisible="False" 
                            ReadOnly="True" SortExpression="Sid" />
                        <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                            SortExpression="Firstname" />
                        <asp:BoundField DataField="Lastname" HeaderText="Lastname" 
                            SortExpression="Lastname" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="Companyname" HeaderText="Companyname" 
                            SortExpression="Companyname" />
                        <asp:BoundField DataField="Companyaddress" HeaderText="Companyaddress" 
                            SortExpression="Companyaddress" />
                        <asp:BoundField DataField="Companyphone1" HeaderText="Companyphone1" 
                            SortExpression="Companyphone1" />
                        <asp:BoundField DataField="Personalphone" HeaderText="Personalphone" 
                            SortExpression="Personalphone" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Joindate" HeaderText="Joindate" 
                            SortExpression="Joindate" />
                        <asp:BoundField DataField="NICno" HeaderText="NICno" SortExpression="NICno" />
                        <asp:CommandField />
                        <asp:CommandField ButtonType="Button" SelectText="In Cheque" 
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
                    CellPadding="4" DataKeyNames="Sid" DataSourceID="SqlDataSource7" 
                    ForeColor="#333333" GridLines="None" 
                    onselectedindexchanged="GridView5_SelectedIndexChanged">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="Sid" HeaderText="Sid" InsertVisible="False" 
                            ReadOnly="True" SortExpression="Sid" />
                        <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                            SortExpression="Firstname" />
                        <asp:BoundField DataField="Lastname" HeaderText="Lastname" 
                            SortExpression="Lastname" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="NICno" HeaderText="NICno" SortExpression="NICno" />
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
                        <asp:CommandField />
                        <asp:CommandField ButtonType="Button" SelectText="In Cheque" 
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
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString24 %>" 
                    SelectCommand="SELECT [Sid], [Firstname], [Lastname], [City], [Companyname], [Companyaddress], [Companyphone1], [Personalphone], [Joindate] FROM [Supplier] WHERE ([Firstname] = @Firstname)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Firstname" SessionField="sfn" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style18">
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString25 %>" 
                    SelectCommand="SELECT [Sid], [Firstname], [Lastname], [City], [Companyname], [Companyaddress], [Companyphone1], [Companyphone2], [Personalphone], [Joindate] FROM [Supplier] WHERE ([Companyname] = @Companyname)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Companyname" SessionField="scn" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString26 %>" 
                    SelectCommand="SELECT [Sid], [Firstname], [Lastname], [City], [Companyname], [Companyaddress], [Companyphone1], [Personalphone], [Email], [Joindate], [NICno] FROM [Supplier] WHERE ([NICno] = @NICno)">
                    <SelectParameters>
                        <asp:SessionParameter Name="NICno" SessionField="snic" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style18">
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString27 %>" 
                    SelectCommand="SELECT [Sid], [Firstname], [Lastname], [City], [NICno], [Companyname], [Companyaddress], [Companyphone1], [Personalphone], [Joindate] FROM [Supplier] WHERE ([Sid] = @Sid)">
                    <SelectParameters>
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

