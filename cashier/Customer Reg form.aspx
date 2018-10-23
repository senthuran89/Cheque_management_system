<%@ Page Language="C#" MasterPageFile="~/cashier/Cashiermain.master" AutoEventWireup="true" CodeFile="Customer Reg form.aspx.cs" Inherits="cashier_Customer_Reg_form" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            height: 3px;
        }
        .style15
        {
            width: 393px;
        }
        .style19
        {
            width: 393px;
            height: 48px;
        }
        .style31
        {
            width: 393px;
            height: 35px;
        }
        .style33
        {
            width: 393px;
            height: 31px;
        }
        .style37
        {
            width: 393px;
            height: 45px;
        }
        .style38
        {
            height: 18px;
        }
        .style39
        {
            width: 647px;
            height: 48px;
        }
        .style40
        {
            width: 647px;
            height: 45px;
        }
        .style41
        {
            width: 647px;
            height: 35px;
        }
        .style42
        {
        }
        .style43
        {
        }
        .style44
        {
            width: 357px;
            height: 48px;
        }
        .style45
        {
            width: 357px;
            height: 45px;
        }
        .style46
        {
            width: 357px;
            height: 35px;
        }
        .style47
        {
            width: 357px;
        }
        .style55
        {
            width: 479px;
            height: 48px;
        }
        .style56
        {
            width: 479px;
            height: 31px;
        }
        .style57
        {
            width: 479px;
            height: 45px;
        }
        .style58
        {
            width: 479px;
            height: 35px;
        }
        .style59
        {
            width: 479px;
        }
        .style60
        {
            width: 647px;
        }
        .style61
        {
            height: 7px;
        }
        .style62
        {
            height: 13px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table style="width:97%;" bgcolor="#EFEFEF" frame="box">
            <tr>
                <td bgcolor="#99CCFF" class="style62" colspan="4">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" 
                        Text="Customer's Register Form."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style10" colspan="4">
                </td>
            </tr>
            <tr>
                <td bgcolor="Silver" class="style61" colspan="4">
                    <asp:Label ID="Label4" runat="server" Text="Personal Details"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style39" valign="top">
                    <asp:Label ID="Label5" runat="server" Text="First Name"></asp:Label>
                </td>
                <td class="style44" valign="top">
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" 
                        Width="300px" ValidationGroup="empty"></asp:TextBox>
                    &nbsp;<br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Enter First Name" 
                        ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
                <td class="style55" valign="top">
                    <asp:Label ID="Label6" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td class="style19" valign="top">
                    <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px" 
                        Width="300px" ValidationGroup="empty"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter Last Name" 
                        ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style39" valign="top" rowspan="2">
                    <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="style44" valign="top" rowspan="2">
                    <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px" 
                        Width="340px" Height="69px" ontextchanged="TextBox3_TextChanged" 
                        TextMode="MultiLine" ValidationGroup="empty"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter Address" 
                        ValidationGroup="empty"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="style56" valign="top">
                    <asp:Label ID="Label8" runat="server" Text="City"></asp:Label>
                </td>
                <td class="style33" valign="top">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="172px" 
                        ValidationGroup="empty">
                        <asp:ListItem>Jaffna</asp:ListItem>
                        <asp:ListItem>Manipay</asp:ListItem>
                        <asp:ListItem>Kanday</asp:ListItem>
                        <asp:ListItem>Colombo</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="*" ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style56" valign="top">
                    <asp:Label ID="Label9" runat="server" Text="ZIP Code"></asp:Label>
                </td>
                <td class="style33" valign="top">
                    <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 0px; margin-top: 9px;" 
                        Width="170px" ValidationGroup="empty"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Enter Zip Code" 
                        ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style40" valign="top">
                    <asp:Label ID="Label10" runat="server" Text="NIC No"></asp:Label>
                </td>
                <td class="style45" valign="top">
                    <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 0px; margin-top: 9px;" 
                        Width="170px" ValidationGroup="empty"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Enter NIC No" 
                        ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
                <td class="style57" valign="top">
                </td>
                <td class="style37" valign="top">
                </td>
            </tr>
            <tr>
                <td class="style38" valign="top" bgcolor="Silver" colspan="4">
                    <asp:Label ID="Label11" runat="server" Text="Customer's Company Details"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style41" valign="top">
                    <asp:Label ID="Label12" runat="server" Text="Company Name"></asp:Label>
                </td>
                <td class="style46" valign="top">
                    <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 1px" 
                        Width="300px" ValidationGroup="empty"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Enter Company Name" 
                        ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
                <td class="style58" valign="top">
                    <asp:Label ID="Label13" runat="server" Text="Register No"></asp:Label>
                </td>
                <td class="style31" valign="top">
                    <asp:TextBox ID="TextBox7" runat="server" style="margin-left: 0px; margin-top: 9px;" 
                        Width="170px" ValidationGroup="empty"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="Enter Reg No" 
                        ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style60" valign="top">
                    <asp:Label ID="Label14" runat="server" Text="Company  Address"></asp:Label>
                </td>
                <td class="style47" valign="top">
                    <asp:TextBox ID="TextBox8" runat="server" style="margin-left: 3px" 
                        Width="340px" Height="69px" ontextchanged="TextBox3_TextChanged" 
                        TextMode="MultiLine" ValidationGroup="empty"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="Enter Address" 
                        ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
                <td class="style59" valign="top">
                    &nbsp;</td>
                <td class="style15" valign="top">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style42" valign="top" bgcolor="Silver" colspan="4">
                    <asp:Label ID="Label15" runat="server" Text="Contacts  Details"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style60" valign="top">
                    <asp:Label ID="Label16" runat="server" Text="Company PhoneNo1"></asp:Label>
                </td>
                <td class="style47" valign="top">
                    <asp:TextBox ID="TextBox9" runat="server" style="margin-left: 1px" 
                        Width="251px" ValidationGroup="empty"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TextBox9" ErrorMessage="Enter Ph No" 
                        ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
                <td class="style59" valign="top">
                    <asp:Label ID="Label17" runat="server" Text="Company PhoneNo2"></asp:Label>
                </td>
                <td class="style15" valign="top">
                    <asp:TextBox ID="TextBox10" runat="server" style="margin-left: 1px" 
                        Width="251px" ValidationGroup="empty"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="TextBox10" ErrorMessage="Enter Ph no" 
                        ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style60" valign="top">
                    <asp:Label ID="Label18" runat="server" Text="Personal Phone No"></asp:Label>
                </td>
                <td class="style47" valign="top">
                    <asp:TextBox ID="TextBox11" runat="server" style="margin-left: 1px" 
                        Width="251px" ValidationGroup="empty"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="TextBox11" ErrorMessage="Enter Ph No" 
                        ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
                <td class="style59" valign="top">
                    <asp:Label ID="Label19" runat="server" Text="Fax"></asp:Label>
                </td>
                <td class="style15" valign="top">
                    <asp:TextBox ID="TextBox12" runat="server" style="margin-left: 1px" 
                        Width="251px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style60" valign="top">
                    <asp:Label ID="Label20" runat="server" Text="E-Mail ID"></asp:Label>
                </td>
                <td class="style47" valign="top">
                    <asp:TextBox ID="TextBox13" runat="server" style="margin-left: 1px" 
                        Width="326px" Height="22px"></asp:TextBox>
                </td>
                <td class="style59" valign="top">
                    <asp:Label ID="Label21" runat="server" Text="Web Site Address"></asp:Label>
                </td>
                <td class="style15" valign="top">
                    <asp:TextBox ID="TextBox14" runat="server" style="margin-left: 1px" 
                        Width="326px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style42" valign="top" bgcolor="Silver" colspan="4">
                    <asp:Label ID="Label22" runat="server" Text="Bank Details"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style60" valign="top">
                    <asp:Label ID="Label23" runat="server" Text="Bank Name"></asp:Label>
                </td>
                <td class="style47" valign="top">
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="172px" 
                        ValidationGroup="empty" DataSourceID="SqlDataSource1" 
                        DataTextField="Bankname" DataValueField="Bankname">
                        <asp:ListItem>HNB</asp:ListItem>
                        <asp:ListItem>People&#39;s Bank</asp:ListItem>
                        <asp:ListItem>BOC</asp:ListItem>
                        <asp:ListItem>DFCC</asp:ListItem>
                        <asp:ListItem>Com Bank</asp:ListItem>
                        <asp:ListItem>HSBC</asp:ListItem>
                        <asp:ListItem>NTB</asp:ListItem>
                        <asp:ListItem>Sampath Bank</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString134 %>" 
                        SelectCommand="SELECT [Bankname] FROM [Bankdetails]"></asp:SqlDataSource>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                        ControlToValidate="DropDownList2" ErrorMessage="*" ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
                <td class="style59" valign="top">
                    <asp:Label ID="Label24" runat="server" Text="Bank Code"></asp:Label>
                </td>
                <td class="style15" valign="top">
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="107px" 
                        ValidationGroup="empty" DataSourceID="SqlDataSource2" 
                        DataTextField="bankcode" DataValueField="bankcode">
                        <asp:ListItem>0160</asp:ListItem>
                        <asp:ListItem>011</asp:ListItem>
                        <asp:ListItem>021</asp:ListItem>
                        <asp:ListItem>024</asp:ListItem>
                        <asp:ListItem>012</asp:ListItem>
                        <asp:ListItem>021</asp:ListItem>
                        <asp:ListItem>014</asp:ListItem>
                        <asp:ListItem Value="0211">0211</asp:ListItem>
                        <asp:ListItem>0156</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString135 %>" 
                        SelectCommand="SELECT [bankcode] FROM [Bankdetails]"></asp:SqlDataSource>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                        ControlToValidate="DropDownList3" ErrorMessage="*" ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style60" valign="top">
                    <asp:Label ID="Label25" runat="server" Text="Bank Branch Code"></asp:Label>
                </td>
                <td class="style47" valign="top">
                    <asp:DropDownList ID="DropDownList4" runat="server" Height="20px" Width="138px" 
                        ValidationGroup="empty" DataSourceID="SqlDataSource3" 
                        DataTextField="Branchcode" DataValueField="Branchcode">
                        <asp:ListItem>HNB</asp:ListItem>
                        <asp:ListItem>People&#39;s Bank</asp:ListItem>
                        <asp:ListItem>BOC</asp:ListItem>
                        <asp:ListItem>DFCC</asp:ListItem>
                        <asp:ListItem>Com Bank</asp:ListItem>
                        <asp:ListItem>HSBC</asp:ListItem>
                        <asp:ListItem>NTB</asp:ListItem>
                        <asp:ListItem>Sampath Bank</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CMSConnectionString136 %>" 
                        SelectCommand="SELECT [Branchcode] FROM [Bankbranchdetails]">
                    </asp:SqlDataSource>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                        ControlToValidate="DropDownList4" ErrorMessage="*" ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
                <td class="style59" valign="top">
                    <asp:Label ID="Label26" runat="server" Text="Account NO"></asp:Label>
                </td>
                <td class="style15" valign="top">
                    <asp:TextBox ID="TextBox15" runat="server" style="margin-left: 1px" 
                        Width="302px" ValidationGroup="empty"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                        ControlToValidate="TextBox15" ErrorMessage="Enter A/C Number" 
                        ValidationGroup="empty"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style42" valign="top" bgcolor="Silver" colspan="4">
                    <asp:Label ID="Label27" runat="server" Text="Other Details"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style60" valign="top">
                    <asp:Label ID="Label28" runat="server" Text="Date "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style47" valign="top">
                    <asp:Label ID="Label31" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style59" valign="top">
                    <asp:Label ID="Label29" runat="server" Text="Note"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style15" valign="top">
                    <asp:TextBox ID="TextBox16" runat="server" style="margin-left: 3px" 
                        Width="394px" Height="83px" ontextchanged="TextBox3_TextChanged" 
                        TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style43" valign="top" bgcolor="Silver" colspan="4">
                    <asp:Label ID="Label30" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="Label32" runat="server" ForeColor="#009900" Text="Label" 
                        Visible="False"></asp:Label>
                    <asp:Label ID="Label33" runat="server" ForeColor="#CC3300" Text="Label" 
                        Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style43" valign="top" colspan="4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" ValidationGroup="empty" 
                        onclick="LinkButton1_Click">Save Data</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
                        Enabled="False">View &amp; Edit Data</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click" 
                        Enabled="False">Insert 
                    Cheque Data</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click">Cancel
                    </asp:LinkButton>
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
</asp:Content>

