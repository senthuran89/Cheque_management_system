﻿<%@ Page Language="C#" MasterPageFile="~/Accountent/Accountentmain.master" AutoEventWireup="true" CodeFile="oldsup.aspx.cs" Inherits="Accountent_oldsup" Title="Untitled Page" %>

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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="Sid" DataSourceID="SqlDataSource1" 
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
                        <asp:BoundField DataField="Regno" HeaderText="Regno" SortExpression="Regno" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString148 %>" 
                    SelectCommand="SELECT [Sid], [Firstname], [Lastname], [City], [Companyname], [Companyaddress], [Companyphone1], [Regno], [Joindate] FROM [Supplier]">
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList3" runat="server" 
                    DataSourceID="SqlDataSource6" DataTextField="Firstname" 
                    DataValueField="Firstname" Height="29px" Width="261px">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Find" Width="71px" 
                    onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label57" runat="server" Text="Company name"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource7" DataTextField="Companyname" 
                    DataValueField="Companyname" Height="32px" Width="244px">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                    ID="Button2" runat="server" Text="Find" Width="71px" 
                    onclick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Find" Width="71px" 
                    onclick="Button3_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label59" runat="server" Text="Customer's  ID"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="221px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button4" runat="server" Text="Find" Width="71px" 
                    onclick="Button4_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style18" bgcolor="Silver">
                <asp:Label ID="Label45" runat="server" Text="."></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString163 %>" 
                    SelectCommand="SELECT [Firstname] FROM [Supplier]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString164 %>" 
                    SelectCommand="SELECT [Companyname] FROM [Supplier]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style18">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="Sid" DataSourceID="SqlDataSource2" 
                    ForeColor="#333333" GridLines="None" 
                    onselectedindexchanged="GridView2_SelectedIndexChanged">
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
                        <asp:BoundField DataField="Regno" HeaderText="Regno" SortExpression="Regno" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString149 %>" 
                    SelectCommand="SELECT [Sid], [Firstname], [Lastname], [City], [Companyname], [Companyaddress], [Companyphone1], [Personalphone], [Regno], [Joindate] FROM [Supplier] WHERE ([Firstname] = @Firstname)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Firstname" SessionField="sfn" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style18">
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="Sid" DataSourceID="SqlDataSource3" 
                    ForeColor="#333333" GridLines="None">
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
                        <asp:BoundField DataField="Regno" HeaderText="Regno" SortExpression="Regno" />
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
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="Sid" DataSourceID="SqlDataSource4" 
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
                        <asp:BoundField DataField="NICno" HeaderText="NICno" SortExpression="NICno" />
                        <asp:BoundField DataField="Companyname" HeaderText="Companyname" 
                            SortExpression="Companyname" />
                        <asp:BoundField DataField="Companyaddress" HeaderText="Companyaddress" 
                            SortExpression="Companyaddress" />
                        <asp:BoundField DataField="Companyphone1" HeaderText="Companyphone1" 
                            SortExpression="Companyphone1" />
                        <asp:BoundField DataField="Personalphone" HeaderText="Personalphone" 
                            SortExpression="Personalphone" />
                        <asp:BoundField DataField="Regno" HeaderText="Regno" SortExpression="Regno" />
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
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString151 %>" 
                    SelectCommand="SELECT [Sid], [Firstname], [Lastname], [City], [Companyname], [Companyaddress], [Companyphone1], [Personalphone], [Regno], [Joindate] FROM [Supplier] WHERE ([Companyname] = @Companyname)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Companyname" SessionField="scn" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style18">
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString153 %>" 
                    SelectCommand="SELECT [Sid], [Firstname], [Lastname], [City], [NICno], [Companyname], [Companyaddress], [Companyphone1], [Personalphone], [Regno], [Joindate] FROM [Supplier] WHERE ([NICno] = @NICno)">
                    <SelectParameters>
                        <asp:SessionParameter Name="NICno" SessionField="snic" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="Sid" DataSourceID="SqlDataSource5" 
                    ForeColor="#333333" GridLines="None" 
                    onselectedindexchanged="GridView5_SelectedIndexChanged1">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="Sid" HeaderText="Sid" InsertVisible="False" 
                            ReadOnly="True" SortExpression="Sid" />
                        <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                            SortExpression="Firstname" />
                        <asp:BoundField DataField="Lastname" HeaderText="Lastname" 
                            SortExpression="Lastname" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="NICno" HeaderText="NICno" SortExpression="NICno" />
                        <asp:BoundField DataField="Companyname" HeaderText="Companyname" 
                            SortExpression="Companyname" />
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
            </td>
        </tr>
        <tr>
            <td class="style18">
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CMSConnectionString155 %>" 
                    SelectCommand="SELECT [Sid], [Firstname], [Lastname], [Address], [City], [NICno], [Companyname], [Companyphone1], [Personalphone], [Joindate] FROM [Supplier] WHERE ([Sid] = @Sid)">
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

