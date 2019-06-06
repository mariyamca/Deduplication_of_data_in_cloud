<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master"   EnableEventValidation="false" AutoEventWireup="true" CodeFile="Worktype.aspx.cs" Inherits="Admin_Worktype" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table align="center" class="auto-style9" style="border:thick solid #a7a7a7; width: 100%;height: 100%">   

 
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Work type</td>
            <td>
                <asp:TextBox ID="txt_type" runat="server" Height="20px" Width="307px"></asp:TextBox>
            </td>
        </tr>
       
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style1" OnClick="Button1_Click" Text="SAVE" Width="108px" style="color: #FFFFFF; font-weight: bold; background-color: #3399FF" />
                </strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="Red"></asp:Label>
		    </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

