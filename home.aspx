<%@ Page Language="C#" MasterPageFile="~/CMSmain.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" Title="Untitled Page" %>

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
        .style18
        {
            height: 258px;
        width: 374px;
    }
        .style19
        {
            width: 91px;
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
        .style23
        {
        height: 34px;
        width: 374px;
    }
        .style24
        {
            height: 256px;
        width: 374px;
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
        .style35
        {
            height: 1px;
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
        .style38
        {
            width: 91px;
            height: 18px;
        }
        .style39
        {
            height: 18px;
        }
    .style40
    {
        height: 1px;
        width: 374px;
    }
    .style41
    {
        width: 374px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
   
    <br />
   
<table style="width: 154%; height: 822px;">
        <tr>
            <td class="style7" bgcolor="White" style="border: thin outset #99CCFF;" 
                valign="top">
                <table style="width: 101%; margin-bottom: 2px; height: 373px;">
                    <tr>
                        <td class="style17" 
                            style="font-family: 'Rockwell Extra Bold'; font-size: medium" valign="top" 
                            bgcolor="Silver">
                            &nbsp;Welcome&nbsp; to&nbsp; CMS&nbsp; (Online)&nbsp;&nbsp; System</td>
                    </tr>
                    <tr>
                        <td class="style16">
                            <p class="MsoNormal">
                                <span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;">The fully fledged Jaffna (E) library caters to the Members 
                                and students by housing a wide range of books relating to Accounting, Auditing, 
                                Management, Economics, Commerce, Taxation and Law etc. <o:p></o:p>
                                </span>
                            </p>
                            <p class="MsoNormal">
                                <span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;">It holds past question papers, suggested answers, examiners 
                                comments and study packs, CDs/DVDs and newspaper articles too. <o:p></o:p>
                                </span>
                            </p>
                            <p class="MsoNormal">
                                <span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;">Facility of online searching, checking the availability of 
                                books, reservations, extending, and host of other in-house library services are 
                                now at your fingertips <o:p></o:p></span>
                            </p>
                            <p class="MsoNormal">
                                <span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;">&nbsp;</span><b><span style="font-size:12.0pt;line-height:115%;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">Jaffna 
                                Appz<br />
                                </span></b>
                                <span style="font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;">&nbsp;AB16, Jaffna,<br />
                                &nbsp;Sri Lanka.
                                <br />
                                &nbsp;Tel:+94-21-2226028 /2356030 - Ext 365/219<br />
                                &nbsp;Fax:+94-21-2226027<br />
                                &nbsp;Email :<u><span style="color:blue">Appz<a 
                                    href="mailto:librarian@Ejaffnalibrary.lk">@Jaffnaappz.lk</a></span></u></span></p>
                            <p class="MsoNormal">
                                <asp:Image ID="Image2" runat="server" Height="357px" 
                                    ImageUrl="~/images/accountant.jpg" Width="561px" />
                            </p>
                        </td>
                    </tr>
                </table>
            </td>
            <td valign="top" nowrap="nowrap">
                <table style="width:1%; height: 888px; margin-left: 0px;" frame="box">
                    <tr>
                        <td valign="top" class="style23" bgcolor="Gray">
                            <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Size="Large" 
                                Text="User Login Panal(Select the Account)."></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" class="style23">
                            <asp:Panel ID="Panel4" runat="server" BackColor="#99CCFF" BorderColor="#33CCFF" 
                                Height="30px" Width="363px">
                                &nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton8" runat="server" BackColor="#666666" 
                                    Font-Bold="True" Font-Size="Large" ForeColor="White" Height="24px" 
                                    onclick="LinkButton8_Click" Width="63px">Admin
                                </asp:LinkButton>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton9" runat="server" BackColor="#666666" 
                                    Font-Bold="True" Font-Size="Large" ForeColor="White" Height="24px" 
                                    onclick="LinkButton9_Click">Accountant
                                </asp:LinkButton>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton10" runat="server" BackColor="#666666" 
                                    BorderColor="Gray" Font-Bold="True" Font-Size="Large" ForeColor="White" 
                                    Height="24px" onclick="LinkButton10_Click">Casher</asp:LinkButton>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td class="style40">
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
                                            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="Gray" 
                                                Font-Bold="True" ForeColor="White" Height="20px" Width="50px" 
                                                onclick="LinkButton1_Click">Login..</asp:LinkButton>
                                        </td>
                                        <td class="style8" bgcolor="#99CCFF">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton2" runat="server" BackColor="Gray" 
                                                Font-Bold="True" ForeColor="White" Height="20px" Width="50px" 
                                                onclick="LinkButton2_Click">Cancel</asp:LinkButton>
                                            <asp:Label ID="Label17" runat="server" Text="." Visible="False"></asp:Label>
                                            <asp:Label ID="Label18" runat="server" Text="." Visible="False"></asp:Label>
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
                        <td class="style40">
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
                                            <asp:LinkButton ID="LinkButton3" runat="server" BackColor="Gray" 
                                                Font-Bold="True" ForeColor="White" Height="20px" Width="50px" 
                                                onclick="LinkButton3_Click">Login..</asp:LinkButton>
                                        </td>
                                        <td bgcolor="#99CCFF" class="style8">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton6" runat="server" BackColor="Gray" 
                                                Font-Bold="True" ForeColor="White" Height="20px" Width="50px" 
                                                onclick="LinkButton6_Click">Cancel</asp:LinkButton>
                                            <asp:Label ID="Label20" runat="server" Text="." Visible="False"></asp:Label>
                                            <asp:Label ID="Label21" runat="server" Text="." Visible="False"></asp:Label>
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
                            </asp:Panel>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style40">
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
                                            <asp:LinkButton ID="LinkButton5" runat="server" BackColor="Gray" 
                                                Font-Bold="True" ForeColor="White" Height="20px" Width="50px" 
                                                onclick="LinkButton5_Click">Login..</asp:LinkButton>
                                        </td>
                                        <td bgcolor="#99CCFF" class="style28">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton7" runat="server" BackColor="Gray" 
                                                Font-Bold="True" ForeColor="White" Height="20px" Width="50px" 
                                                onclick="LinkButton7_Click">Cancel</asp:LinkButton>
                                            <asp:Label ID="Label23" runat="server" Text="."></asp:Label>
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
                        </td>
                    </tr>
                    <tr>
                        <td class="style18" valign="top">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="254px" 
                                ImageUrl="~/images/part-time-administrator-job-description.ashx.jpg" 
                                onclick="ImageButton1_Click" Width="359px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style24" valign="top">
                            <asp:ImageButton ID="ImageButton2" runat="server" Height="254px" 
                                ImageUrl="~/images/urlasd.jpg" onclick="ImageButton2_Click" Width="359px" />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" class="style41">
                            <asp:ImageButton ID="ImageButton3" runat="server" Height="254px" 
                                ImageUrl="~/images/Store-clerk-female1.jpg" onclick="ImageButton3_Click" 
                                Width="359px" />
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


