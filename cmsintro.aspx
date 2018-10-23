<%@ Page Language="C#" MasterPageFile="~/CMSmain.master" AutoEventWireup="true" CodeFile="cmsintro.aspx.cs" Inherits="cmsintro" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style5
    {
    }
    .style6
    {
        width: 207px;
    }
    .style7
    {
        width: 29px;
    }
    .style8
    {
        width: 222px;
    }
    .style9
    {
        width: 303px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BorderColor="Maroon" BorderStyle="Double">
    <table style="width: 99%; height: 143px;">
        <tr>
            <td class="style5" colspan="4">
                <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Size="Medium" 
                    ForeColor="Maroon" Text="Please Choose Your Account :-"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" Height="161px" 
                    ImageAlign="Middle" ImageUrl="~/images/download (1).jpg" 
                    onclick="ImageButton1_Click1" Width="238px" />
            </td>
            <td class="style6">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="161px" 
                    ImageAlign="Middle" ImageUrl="~/images/images (1).jpg" 
                    onclick="ImageButton2_Click" Width="238px" />
            </td>
            <td class="style7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style8">
                &nbsp;
                <asp:ImageButton ID="ImageButton4" runat="server" Height="161px" 
                    ImageAlign="Middle" ImageUrl="~/images/images.jpg" onclick="ImageButton4_Click" 
                    Width="238px" />
                &nbsp;&nbsp;
            </td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>

