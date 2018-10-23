<%@ Page Language="C#" MasterPageFile="~/cashier/Cashiermain.master" AutoEventWireup="true" CodeFile="selectchqueissueform.aspx.cs" Inherits="cashier_selectchqueissueform" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style10
        {
            width: 112px;
            height: 23px;
        }
        .style12
        {
            width: 385px;
            height: 23px;
        }
        .style14
        {
            width: 153px;
            height: 23px;
        }
        .style11
        {
            height: 23px;
        }
        .style15
        {
            width: 153px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table bgcolor="#EFEFEF" frame="box" style="width: 97%;">
            <tr>
                <td bgcolor="#99CCFF" colspan="4">
                    <asp:Label ID="Label30" runat="server" 
                        Text="Cheque Isssue Details Insert form."></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="Silver" colspan="4">
                    <asp:Label ID="Label31" runat="server" Text="Cheque Issue TO" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Label ID="Label56" runat="server" Text=" Operation  ID"></asp:Label>
                </td>
                <td class="style12">
                    <asp:TextBox ID="TextBox20" runat="server" 
                        ontextchanged="TextBox20_TextChanged" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="style14">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Label ID="Label32" runat="server" Text="Holder's ID"></asp:Label>
                </td>
                <td class="style12">
                    <asp:TextBox ID="TextBox10" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="style14">
                    <asp:Label ID="Label34" runat="server" Text="Account Holder Name"></asp:Label>
                </td>
                <td class="style11">
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" 
                        Width="299px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style17" colspan="4">
                    <asp:Label ID="Label38" runat="server" Text="Bank Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox18" runat="server" ReadOnly="True"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label39" runat="server" Text="Bank Code"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox19" runat="server" ReadOnly="True"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="style17" colspan="4">
                    <asp:Label ID="Label40" runat="server" Text="Account No"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server" Width="199px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td bgcolor="Silver" class="style9" colspan="4">
                    <asp:Label ID="Label41" runat="server" Text="Cheque  Details."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    <asp:Label ID="Label42" runat="server" Text="Cheque No"></asp:Label>
                </td>
                <td class="style13">
                    <asp:TextBox ID="TextBox11" runat="server" Width="168px" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="style15">
                    <asp:Label ID="Label43" runat="server" Text="Cheque Type"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox17" runat="server" ReadOnly="True" Width="148px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    <asp:Label ID="Label44" runat="server" Text="Cheque Date"></asp:Label>
                </td>
                <td class="style13">
                    <asp:TextBox ID="TextBox12" runat="server" Width="199px" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="style15">
                    <asp:Label ID="Label51" runat="server" Text="Cheque Amount"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox13" runat="server" Width="156px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td bgcolor="Silver" class="style11" colspan="4">
                    <asp:Label ID="Label45" runat="server" Text="Beneficiary Details " 
                        Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td bgcolor="Silver" class="style11" colspan="4">
                    <asp:Label ID="Label57" runat="server" Text="Customers Details ."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style17" bgcolor="#CCCCCC" colspan="4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="20px" Text="View All Customers" 
                        Width="171px" onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label58" runat="server" Text="Customer Name"></asp:Label>
&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="Firstname" 
                        DataValueField="Firstname" Height="20px" Width="170px">
                    </asp:DropDownList>
&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Find" Width="55px" 
                        onclick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label59" runat="server" Text="Company Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="20px" Width="170px" 
                        DataSourceID="SqlDataSource2" DataTextField="Companyname" 
                        DataValueField="Companyname">
                    </asp:DropDownList>
&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Find" Width="62px" 
                        onclick="Button3_Click" />
                </td>
            </tr>
            <tr>
                <td class="style17" bgcolor="#CCCCCC" colspan="4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label60" runat="server" Text="NIC No"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox21" runat="server" Width="168px"></asp:TextBox>
&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="Find" Width="51px" 
                        onclick="Button4_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label61" runat="server" Text="Customer ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox22" runat="server" Width="166px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button5" runat="server" Text="Find" Width="60px" 
                        onclick="Button5_Click" />
                </td>
            </tr>
            <tr>
                <td class="style17" colspan="4">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString59 %>" 
                        SelectCommand="SELECT [Firstname] FROM [Customer]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString60 %>" 
                        SelectCommand="SELECT [Companyname] FROM [Customer]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style17" colspan="4">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Cid" DataSourceID="SqlDataSource3" 
                        ForeColor="#333333" GridLines="None" AllowPaging="True" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="Cid" HeaderText="Cid" InsertVisible="False" 
                                ReadOnly="True" SortExpression="Cid" />
                            <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                                SortExpression="Firstname" />
                            <asp:BoundField DataField="Lastname" HeaderText="Lastname" 
                                SortExpression="Lastname" />
                            <asp:BoundField DataField="Companyname" HeaderText="Companyname" 
                                SortExpression="Companyname" />
                            <asp:BoundField DataField="NICno" HeaderText="NICno" SortExpression="NICno" />
                            <asp:BoundField DataField="Companyaddress" HeaderText="Companyaddress" 
                                SortExpression="Companyaddress" />
                            <asp:BoundField DataField="Companyphone1" HeaderText="Companyphone1" 
                                SortExpression="Companyphone1" />
                            <asp:BoundField DataField="Companyphone2" HeaderText="Companyphone2" 
                                SortExpression="Companyphone2" />
                            <asp:BoundField DataField="Personalphone" HeaderText="Personalphone" 
                                SortExpression="Personalphone" />
                            <asp:BoundField DataField="Bankname" HeaderText="Bankname" 
                                SortExpression="Bankname" />
                            <asp:BoundField DataField="Accountno" HeaderText="Accountno" 
                                SortExpression="Accountno" />
                            <asp:BoundField DataField="Joindate" HeaderText="Joindate" 
                                SortExpression="Joindate" />
                            <asp:CommandField ButtonType="Button" SelectText="Conform" 
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
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString61 %>" 
                        SelectCommand="SELECT [Cid], [Firstname], [Lastname], [Companyname], [NICno], [Companyaddress], [Companyphone1], [Companyphone2], [Personalphone], [Bankname], [Accountno], [Joindate] FROM [Customer]">
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Cid" DataSourceID="SqlDataSource4" 
                        ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView2_SelectedIndexChanged1">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="Cid" HeaderText="Cid" InsertVisible="False" 
                                ReadOnly="True" SortExpression="Cid" />
                            <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                                SortExpression="Firstname" />
                            <asp:BoundField DataField="Lastname" HeaderText="Lastname" 
                                SortExpression="Lastname" />
                            <asp:BoundField DataField="NICno" HeaderText="NICno" SortExpression="NICno" />
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
                            <asp:BoundField DataField="Website" HeaderText="Website" 
                                SortExpression="Website" />
                            <asp:BoundField DataField="Accountno" HeaderText="Accountno" 
                                SortExpression="Accountno" />
                            <asp:BoundField DataField="Joindate" HeaderText="Joindate" 
                                SortExpression="Joindate" />
                            <asp:CommandField ButtonType="Button" SelectText="Conform" 
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
                <td class="style17" colspan="4">
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString62 %>" 
                        
                        SelectCommand="SELECT [Cid], [Firstname], [Lastname], [NICno], [Companyname], [Companyaddress], [Companyphone1], [Companyphone2], [Personalphone], [Website], [Accountno], [Joindate] FROM [Customer] WHERE ([Firstname] = @Firstname)">
                        <SelectParameters>
                            <asp:SessionParameter Name="Firstname" SessionField="cfn" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style17" colspan="4">
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Cid" DataSourceID="SqlDataSource5" 
                        ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView3_SelectedIndexChanged">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="Cid" HeaderText="Cid" InsertVisible="False" 
                                ReadOnly="True" SortExpression="Cid" />
                            <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                                SortExpression="Firstname" />
                            <asp:BoundField DataField="Lastname" HeaderText="Lastname" 
                                SortExpression="Lastname" />
                            <asp:BoundField DataField="NICno" HeaderText="NICno" SortExpression="NICno" />
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
                            <asp:BoundField DataField="Bankname" HeaderText="Bankname" 
                                SortExpression="Bankname" />
                            <asp:BoundField DataField="Accountno" HeaderText="Accountno" 
                                SortExpression="Accountno" />
                            <asp:BoundField DataField="Joindate" HeaderText="Joindate" 
                                SortExpression="Joindate" />
                            <asp:CommandField ButtonType="Button" SelectText="Conform" 
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
                        CellPadding="4" DataKeyNames="Cid" DataSourceID="SqlDataSource6" 
                        ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView4_SelectedIndexChanged">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="Cid" HeaderText="Cid" InsertVisible="False" 
                                ReadOnly="True" SortExpression="Cid" />
                            <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                                SortExpression="Firstname" />
                            <asp:BoundField DataField="Lastname" HeaderText="Lastname" 
                                SortExpression="Lastname" />
                            <asp:BoundField DataField="NICno" HeaderText="NICno" SortExpression="NICno" />
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
                            <asp:BoundField DataField="Bankname" HeaderText="Bankname" 
                                SortExpression="Bankname" />
                            <asp:BoundField DataField="Accountno" HeaderText="Accountno" 
                                SortExpression="Accountno" />
                            <asp:BoundField DataField="Joindate" HeaderText="Joindate" 
                                SortExpression="Joindate" />
                            <asp:CommandField ButtonType="Button" SelectText="Conform" 
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
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString63 %>" 
                        SelectCommand="SELECT [Cid], [Firstname], [Lastname], [NICno], [Companyname], [Companyaddress], [Companyphone1], [Companyphone2], [Personalphone], [Bankname], [Accountno], [Joindate] FROM [Customer] WHERE ([Companyname] = @Companyname)">
                        <SelectParameters>
                            <asp:SessionParameter Name="Companyname" SessionField="ccn" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style17" colspan="4">
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString64 %>" 
                        SelectCommand="SELECT [Cid], [Firstname], [Lastname], [NICno], [Companyname], [Companyaddress], [Companyphone1], [Companyphone2], [Personalphone], [Bankname], [Accountno], [Joindate] FROM [Customer] WHERE ([NICno] = @NICno)">
                        <SelectParameters>
                            <asp:SessionParameter Name="NICno" SessionField="cnic" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Cid" DataSourceID="SqlDataSource7" 
                        ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView5_SelectedIndexChanged">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="Cid" HeaderText="Cid" InsertVisible="False" 
                                ReadOnly="True" SortExpression="Cid" />
                            <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                                SortExpression="Firstname" />
                            <asp:BoundField DataField="Lastname" HeaderText="Lastname" 
                                SortExpression="Lastname" />
                            <asp:BoundField DataField="NICno" HeaderText="NICno" SortExpression="NICno" />
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
                            <asp:BoundField DataField="Bankname" HeaderText="Bankname" 
                                SortExpression="Bankname" />
                            <asp:BoundField DataField="Accountno" HeaderText="Accountno" 
                                SortExpression="Accountno" />
                            <asp:BoundField DataField="Joindate" HeaderText="Joindate" 
                                SortExpression="Joindate" />
                            <asp:CommandField ButtonType="Button" SelectText="Conform" 
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
                <td class="style17" colspan="4">
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString65 %>" 
                        SelectCommand="SELECT [Cid], [Firstname], [Lastname], [NICno], [Companyname], [Companyaddress], [Companyphone1], [Companyphone2], [Personalphone], [Bankname], [Accountno], [Joindate] FROM [Customer] WHERE ([Cid] = @Cid)">
                        <SelectParameters>
                            <asp:SessionParameter Name="Cid" SessionField="cid" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style17" bgcolor="Silver" colspan="4">
                    <asp:Label ID="Label55" runat="server" Text="Suppliers Details "></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style17" bgcolor="#CCCCCC" colspan="4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button6" runat="server" Height="20px" Text="View All Suppliers" 
                        Width="171px" onclick="Button6_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label62" runat="server" Text="Supplier Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="20px" Width="170px" 
                        DataSourceID="SqlDataSource9" DataTextField="Firstname" 
                        DataValueField="Firstname">
                    </asp:DropDownList>
&nbsp;&nbsp;
                    <asp:Button ID="Button7" runat="server" Text="Find" Width="55px" 
                        onclick="Button7_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label63" runat="server" Text="Company Name"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList4" runat="server" Height="20px" 
                        Width="170px" DataSourceID="SqlDataSource10" DataTextField="Companyname" 
                        DataValueField="Companyname">
                    </asp:DropDownList>
&nbsp;&nbsp;
                    <asp:Button ID="Button8" runat="server" Text="Find" Width="62px" 
                        onclick="Button8_Click" />
                </td>
                </tr>
            <tr>
                <td class="style17" bgcolor="#CCCCCC" colspan="4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label64" runat="server" Text="NIC No"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox23" runat="server" Width="168px"></asp:TextBox>
&nbsp;&nbsp;
                    <asp:Button ID="Button9" runat="server" Text="Find" Width="51px" 
                        onclick="Button9_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label65" runat="server" Text="Supplier ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox24" runat="server" Width="166px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button10" runat="server" Text="Find" Width="60px" 
                        onclick="Button10_Click" />
                </td>
                </tr>
            <tr>
                <td class="style17" colspan="4">
                    <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString67 %>" 
                        SelectCommand="SELECT [Firstname] FROM [Supplier]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource10" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString68 %>" 
                        SelectCommand="SELECT [Companyname] FROM [Supplier]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style17" colspan="4">
                    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Sid" DataSourceID="SqlDataSource8" 
                        ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView6_SelectedIndexChanged">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="Sid" HeaderText="Sid" InsertVisible="False" 
                                ReadOnly="True" SortExpression="Sid" />
                            <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                                SortExpression="Firstname" />
                            <asp:BoundField DataField="Lastname" HeaderText="Lastname" 
                                SortExpression="Lastname" />
                            <asp:BoundField DataField="NICno" HeaderText="NICno" SortExpression="NICno" />
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
                            <asp:BoundField DataField="Bankname" HeaderText="Bankname" 
                                SortExpression="Bankname" />
                            <asp:BoundField DataField="Accountno" HeaderText="Accountno" 
                                SortExpression="Accountno" />
                            <asp:BoundField DataField="Joindate" HeaderText="Joindate" 
                                SortExpression="Joindate" />
                            <asp:CommandField ButtonType="Button" SelectText="Conform" 
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
                        CellPadding="4" DataKeyNames="Sid" DataSourceID="SqlDataSource11" 
                        ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView7_SelectedIndexChanged">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="Sid" HeaderText="Sid" InsertVisible="False" 
                                ReadOnly="True" SortExpression="Sid" />
                            <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                                SortExpression="Firstname" />
                            <asp:BoundField DataField="Lastname" HeaderText="Lastname" 
                                SortExpression="Lastname" />
                            <asp:BoundField DataField="NICno" HeaderText="NICno" SortExpression="NICno" />
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
                            <asp:BoundField DataField="Bankname" HeaderText="Bankname" 
                                SortExpression="Bankname" />
                            <asp:BoundField DataField="Accountno" HeaderText="Accountno" 
                                SortExpression="Accountno" />
                            <asp:BoundField DataField="Joindate" HeaderText="Joindate" 
                                SortExpression="Joindate" />
                            <asp:CommandField ButtonType="Button" SelectText="Conform" 
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
                    <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Sid" DataSourceID="SqlDataSource12" 
                        ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView8_SelectedIndexChanged">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="Sid" HeaderText="Sid" InsertVisible="False" 
                                ReadOnly="True" SortExpression="Sid" />
                            <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                                SortExpression="Firstname" />
                            <asp:BoundField DataField="Lastname" HeaderText="Lastname" 
                                SortExpression="Lastname" />
                            <asp:BoundField DataField="NICno" HeaderText="NICno" SortExpression="NICno" />
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
                            <asp:BoundField DataField="Bankname" HeaderText="Bankname" 
                                SortExpression="Bankname" />
                            <asp:BoundField DataField="Accountno" HeaderText="Accountno" 
                                SortExpression="Accountno" />
                            <asp:BoundField DataField="Joindate" HeaderText="Joindate" 
                                SortExpression="Joindate" />
                            <asp:CommandField ButtonType="Button" SelectText="Conform" 
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
                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString66 %>" 
                        SelectCommand="SELECT [Sid], [Firstname], [Lastname], [NICno], [Companyname], [Companyaddress], [Companyphone1], [Companyphone2], [Personalphone], [Bankname], [Accountno], [Joindate] FROM [Supplier]">
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Sid" DataSourceID="SqlDataSource13" 
                        ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView9_SelectedIndexChanged">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="Sid" HeaderText="Sid" InsertVisible="False" 
                                ReadOnly="True" SortExpression="Sid" />
                            <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                                SortExpression="Firstname" />
                            <asp:BoundField DataField="Lastname" HeaderText="Lastname" 
                                SortExpression="Lastname" />
                            <asp:BoundField DataField="NICno" HeaderText="NICno" SortExpression="NICno" />
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
                            <asp:BoundField DataField="Bankname" HeaderText="Bankname" 
                                SortExpression="Bankname" />
                            <asp:BoundField DataField="Accountno" HeaderText="Accountno" 
                                SortExpression="Accountno" />
                            <asp:CommandField ButtonType="Button" SelectText="Conform" 
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
                    <asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Sid" DataSourceID="SqlDataSource14" 
                        ForeColor="#333333" GridLines="None" 
                        onselectedindexchanged="GridView10_SelectedIndexChanged">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="Sid" HeaderText="Sid" InsertVisible="False" 
                                ReadOnly="True" SortExpression="Sid" />
                            <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                                SortExpression="Firstname" />
                            <asp:BoundField DataField="Lastname" HeaderText="Lastname" 
                                SortExpression="Lastname" />
                            <asp:BoundField DataField="NICno" HeaderText="NICno" SortExpression="NICno" />
                            <asp:BoundField DataField="Companyname" HeaderText="Companyname" 
                                SortExpression="Companyname" />
                            <asp:BoundField DataField="Companyaddress" HeaderText="Companyaddress" 
                                SortExpression="Companyaddress" />
                            <asp:BoundField DataField="Companyphone1" HeaderText="Companyphone1" 
                                SortExpression="Companyphone1" />
                            <asp:BoundField DataField="Companyphone2" HeaderText="Companyphone2" 
                                SortExpression="Companyphone2" />
                            <asp:BoundField DataField="Bankname" HeaderText="Bankname" 
                                SortExpression="Bankname" />
                            <asp:BoundField DataField="Accountno" HeaderText="Accountno" 
                                SortExpression="Accountno" />
                            <asp:BoundField DataField="Joindate" HeaderText="Joindate" 
                                SortExpression="Joindate" />
                            <asp:CommandField ButtonType="Button" SelectText="Conform" 
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
                <td class="style17" colspan="4">
                    <asp:SqlDataSource ID="SqlDataSource11" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString69 %>" 
                        SelectCommand="SELECT [Sid], [Firstname], [Lastname], [NICno], [Companyname], [Companyaddress], [Companyphone1], [Companyphone2], [Personalphone], [Bankname], [Accountno], [Joindate] FROM [Supplier] WHERE ([Firstname] = @Firstname)">
                        <SelectParameters>
                            <asp:SessionParameter Name="Firstname" SessionField="cfn" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style17" colspan="4">
                    <asp:SqlDataSource ID="SqlDataSource12" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString70 %>" 
                        SelectCommand="SELECT [Sid], [Firstname], [Lastname], [NICno], [Companyname], [Companyaddress], [Companyphone1], [Companyphone2], [Personalphone], [Bankname], [Accountno], [Joindate] FROM [Supplier] WHERE ([Companyname] = @Companyname)">
                        <SelectParameters>
                            <asp:SessionParameter Name="Companyname" SessionField="ccn" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style17" colspan="4">
                    <asp:SqlDataSource ID="SqlDataSource13" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString71 %>" 
                        SelectCommand="SELECT [Sid], [Firstname], [Lastname], [NICno], [Companyname], [Companyaddress], [Companyphone1], [Companyphone2], [Personalphone], [Bankname], [Accountno] FROM [Supplier] WHERE ([NICno] = @NICno)">
                        <SelectParameters>
                            <asp:SessionParameter Name="NICno" SessionField="cnic" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style17" colspan="4">
                    <asp:SqlDataSource ID="SqlDataSource14" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString72 %>" 
                        SelectCommand="SELECT [Sid], [Firstname], [Lastname], [NICno], [Companyname], [Companyaddress], [Companyphone1], [Companyphone2], [Bankname], [Accountno], [Joindate] FROM [Supplier] WHERE ([Sid] = @Sid)">
                        <SelectParameters>
                            <asp:SessionParameter Name="Sid" SessionField="cid" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td bgcolor="Silver" class="style16" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="White" class="style16" colspan="4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
</asp:Content>

