<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/emp.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Download.aspx.cs" Inherits="Patients_Download" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 622px;
        }
        .auto-style3 {
            width: 622px;
            text-align: right;
        height: 139px;
    }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            margin-right: 134;
        }
    .auto-style6 {
        height: 139px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table class="auto-style1">
         <h1><b><center>DOWNLOAD FILE</center> </b></h1>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style3">Key</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Submit" OnClick="Button1_Click" />
            </td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style5" Height="249px" TextMode="MultiLine" Width="788px" Visible="False"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
  <center>
    <div class="auto-style4">
    <br />
    <br />
        <center>

            <asp:LinkButton ID="LinkButton1" class="fa fa-download" Style="font-size:38px" Visible="False" runat="server" OnClick="LinkButton1_Click1"></asp:LinkButton>
        </center>
    </div>
</center>
</asp:Content>

