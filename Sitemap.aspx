<%@ Page Language="C#" MasterPageFile="~/CMSmain.master" AutoEventWireup="true" CodeFile="Sitemap.aspx.cs" Inherits="Sitemap" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


    .style7
    {
        width: 567px;
    }
        .style17
        {
            width: 497px;
            height: 42px;
        }
        .style16
        {        width: 497px;
    }
        .style23
        {
            height: 163px;
        }
        .style20
        {
            width: 91px;
            height: 35px;
        }
        .style21
        {
            height: 35px;
        }
        .style38
        {
            width: 91px;
            height: 18px;
        }
        .style39
        {
            height: 18px;
        }
        .style19
        {
            width: 91px;
        }
        .style36
        {
            width: 91px;
            height: 14px;
        }
        .style37
        {
            height: 14px;
        }
        .style35
        {
            height: 1px;
        }
        .style18
        {
            height: 312px;
        }
        .style24
        {
            height: 141px;
        }
        .style29
        {
            height: 20px;
        }
        .style32
        {
            width: 91px;
            height: 12px;
        }
        .style33
        {
            height: 12px;
        }
        .style34
        {
            width: 91px;
            height: 1px;
        }
        .style27
        {
            width: 91px;
            height: 26px;
        }
        .style28
        {
            height: 26px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<table style="width: 154%; height: 822px;">
    <tr>
        <td class="style7" bgcolor="White" style="border: thin outset #99CCFF;" 
                valign="top">
            <table style="width: 101%; margin-bottom: 2px; height: 373px;">
                <tr>
                    <td class="style17" 
                            style="font-family: 'Rockwell Extra Bold'; font-size: medium" 
                        valign="top" bgcolor="Silver">
                        &nbsp; CMS&nbsp; (Online)&nbsp;&nbsp; System Site Map</td>
                </tr>
                <tr>
                    <td class="style16" valign="top">
                        <p class="MsoNormal">
                            <b style="mso-bidi-font-weight:normal"><u>
                            <span style="font-size:14.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">
                            CMS Cashier Site</span></u></b></p>
                        <p class="MsoNormal">
                            &nbsp;</p>
                        <p class="MsoNormal">
                            <b style="mso-bidi-font-weight:
normal"><u><span style="font-size:14.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">
                            CMS Accountant Site <o:p></o:p></span></u></b>
                        </p>
                        <p class="MsoNormal">
                            &nbsp;</p>
                        <p class="MsoNormal">
                            <b style="mso-bidi-font-weight:
normal"><u><span style="font-size:14.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">
                            CMS Admin <span style="mso-spacerun:yes">&nbsp;</span>Site <o:p></o:p></span></u></b>
                        </p>
                        <p class="MsoNormal">
                            &nbsp;</p>
                    </td>
                </tr>
            </table>
        </td>
        <td valign="top" nowrap="nowrap">
            <table style="width:1%; height: 888px; margin-left: 0px;" frame="box">
                <tr>
                    <td valign="top" class="style23">
                        <asp:Panel ID="Panel1" runat="server" Height="180px" BorderColor="#99CCFF" 
                                BorderStyle="Outset" BorderWidth="5px" Width="360px">
                            <table style="width: 99%; height: 171px;">
                                <tr>
                                    <td colspan="2" bgcolor="#99CCFF">
                                            &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Cashier Login..."></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style20" valign="middle">
                                        <asp:Label ID="Label6" runat="server" Text="User Name"></asp:Label>
                                    </td>
                                    <td class="style21">
                                        <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="257px" 
                                                ToolTip="Enter The Username"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style38">
                                        <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
                                        <br />
                                    </td>
                                    <td class="style39">
                                        <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="257px" 
                                                TextMode="Password" ToolTip="Enter The Password"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style19">
                                        <asp:Label ID="Label8" runat="server" Text="Staff Code"></asp:Label>
                                        <br />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="257px" 
                                                ToolTip="Enter The StaffCode"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style36">
                                    </td>
                                    <td class="style37">
                                        <asp:Label ID="Label16" runat="server" Font-Size="Small" ForeColor="Red" 
                                                Text="."></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style19" bgcolor="#99CCFF" valign="middle">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton8" runat="server" BackColor="Silver" 
                                            onclick="LinkButton8_Click">Login
                                        </asp:LinkButton>
                                    </td>
                                    <td class="style8" bgcolor="#99CCFF">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label17" runat="server" Text="." Visible="False"></asp:Label>
                                        <asp:Label ID="Label18" runat="server" Text="." Visible="False"></asp:Label>
                                        <asp:LinkButton ID="LinkButton9" runat="server" BackColor="Silver" 
                                            onclick="LinkButton9_Click">Cancel</asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td class="style35">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style18">
                        <asp:Panel ID="Panel2" runat="server" Height="180px" BorderColor="#99CCFF" 
                                BorderStyle="Inset" BorderWidth="5px" Width="360px">
                            <table style="width: 99%; height: 171px;">
                                <tr>
                                    <td bgcolor="#99CCFF" colspan="2">
                                            &nbsp;<asp:Label ID="Label9" runat="server" Font-Bold="True" 
                                                Text="Accountant Login..."></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style20" valign="middle">
                                        <asp:Label ID="Label10" runat="server" Text="User Name"></asp:Label>
                                    </td>
                                    <td class="style21">
                                        <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="257px" 
                                                ToolTip="Enter The Username"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style19">
                                        <asp:Label ID="Label11" runat="server" Text="Password"></asp:Label>
                                        <br />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server" Height="25px" Width="257px" 
                                                TextMode="Password" ToolTip="Enter The Password"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style19">
                                        <asp:Label ID="Label12" runat="server" Text="Staff Code"></asp:Label>
                                        <br />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox6" runat="server" Height="25px" Width="257px" 
                                                ToolTip="Enter The Staff Code"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style19">
                                            &nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label19" runat="server" Font-Size="Small" ForeColor="Red" 
                                                Text="."></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td bgcolor="#99CCFF" class="style19" valign="middle">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton10" runat="server" 
                                            onclick="LinkButton10_Click">Login</asp:LinkButton>
                                    </td>
                                    <td bgcolor="#99CCFF" class="style8">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label20" runat="server" Text="." Visible="False"></asp:Label>
                                        <asp:Label ID="Label21" runat="server" Text="." Visible="False"></asp:Label>
                                        <asp:LinkButton ID="LinkButton11" runat="server" onclick="LinkButton11_Click">Cancel</asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td class="style24">
                        <asp:Panel ID="Panel3" runat="server" Height="148px" BorderColor="#99CCFF" 
                                BorderStyle="Inset" Width="360px">
                            <table style="width: 99%; height: 109px;">
                                <tr>
                                    <td bgcolor="#99CCFF" class="style29" colspan="2">
                                            &nbsp;<asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Admin Login..."></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style32" valign="middle">
                                        <asp:Label ID="Label14" runat="server" Text="User Name"></asp:Label>
                                    </td>
                                    <td class="style33">
                                        <asp:TextBox ID="TextBox7" runat="server" Height="25px" Width="257px" 
                                                ToolTip="Enter The Username"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style34">
                                        <asp:Label ID="Label15" runat="server" Text="Password"></asp:Label>
                                        <br />
                                    </td>
                                    <td class="style35">
                                        <asp:TextBox ID="TextBox8" runat="server" Height="25px" Width="257px" 
                                                TextMode="Password" ToolTip="Enter The Password"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style34">
                                            &nbsp;</td>
                                    <td class="style35">
                                        <asp:Label ID="Label22" runat="server" Font-Size="Small" ForeColor="Red" 
                                                Text="."></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td bgcolor="#99CCFF" class="style27" valign="middle">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton12" runat="server" 
                                            onclick="LinkButton12_Click">Login</asp:LinkButton>
                                    </td>
                                    <td bgcolor="#99CCFF" class="style28">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label23" runat="server" Text="."></asp:Label>
                                        <asp:LinkButton ID="LinkButton13" runat="server" onclick="LinkButton13_Click">Cancel</asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </asp:Panel>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <p>
        &nbsp;</p>
</asp:Content>

