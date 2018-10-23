<%@ Page Language="C#" MasterPageFile="~/CMSmain.master" AutoEventWireup="true" CodeFile="Accountentlogin.aspx.cs" Inherits="Accountentlogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


    .style24
    {
        height: 60px;
        width: 85px;
    }
    .style25
    {
        height: 60px;
    }
    .style16
    {
        height: 58px;
        width: 85px;
    }
        .style15
    {
        height: 58px;
    }
        .style15
        {
            width: 55px;
            height: 18px;
        }
        .style26
    {
        height: 27px;
        width: 85px;
    }
    .style27
    {
        height: 27px;
    }
    .style28
    {
        height: 24px;
        width: 85px;
    }
    .style29
    {
        height: 24px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table bgcolor="Silver" frame="box" style="width: 7%; height: 201px;">
    <tr>
        <td align="left" class="style24">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Size="Medium" ForeColor="#990000" 
                Text="UserName"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td class="style25" colspan="2">
            <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="283px"></asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td align="left" class="style16">
            &nbsp;<asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="#990000" 
                Text="Password"></asp:Label>
            &nbsp;</td>
        <td class="style15" colspan="2">
            <asp:TextBox ID="TextBox2" runat="server" Height="29px" TextMode="Password" 
                Width="280px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="left" class="style16">
            <asp:Label ID="Label5" runat="server" Font-Size="Medium" ForeColor="#990000" 
                Text="Staff Code"></asp:Label>
        </td>
        <td class="style15" colspan="2">
            <asp:TextBox ID="TextBox3" runat="server" Height="29px" TextMode="Password" 
                Width="280px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="left" class="style26">
            <asp:Label ID="Label3" runat="server" Text="." Visible="False"></asp:Label>
&nbsp;<asp:Label ID="Label6" runat="server" Text="." Visible="False"></asp:Label>
        </td>
        <td class="style27" colspan="2">
            <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="."></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style28">
        </td>
        <td bgcolor="Silver" class="style29">
            &nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click1">LOGIN</asp:LinkButton>
        </td>
        <td class="style29">
            <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">CANCEL</asp:LinkButton>
        </td>
    </tr>
</table>
</asp:Content>

