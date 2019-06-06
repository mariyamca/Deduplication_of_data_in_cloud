<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" EnableEventValidation="false" AutoEventWireup="true"  ValidateRequest="false" CodeFile="Uploading.aspx.cs" Inherits="Service_Provier_Uploading" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 352px;
    }
        .auto-style2 {
            width: 352px;
            height: 74px;
        }
        .auto-style3 {
            height: 74px;
        }
        .auto-style4 {
            width: 352px;
            height: 92px;
        }
        .auto-style5 {
            height: 92px;
        }
        .auto-style6 {
            width: 352px;
            height: 96px;
        }
        .auto-style7 {
            height: 96px;
        }
        .auto-style8 {
            width: 352px;
            height: 81px;
        }
        .auto-style9 {
            height: 81px;
        }
        .auto-style10 {
            font-size: large;
            color: #990033;
        }
        .auto-style11 {
            width: 352px;
            height: 100px;
        }
        .auto-style12 {
            height: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
        <h1><b><center>FILE UPLOAD</center> </b></h1>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">Select&nbsp; File</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" /> 
<br />
<asp:Button ID="btnUpload" Text="Upload" runat="server" OnClick="Upload" Style="display: none" />
        </td>
    </tr>
    <tr>
        <td class="auto-style1">File Name</td>
        <td>

             <asp:TextBox ID="txt_filename" runat="server" AutoPostBack="True" Enabled="False"></asp:TextBox>
            
        </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">public Parameter</td>
        <td>
            <asp:TextBox ID="txt_publicparam" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">File data</td>
        <td>
            <asp:TextBox ID="txt_content" runat="server" Height="180px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
         <tr>
        <td class="auto-style11">Verion</td>
        <td class="auto-style12">
            <asp:TextBox ID="txt_verion" runat="server"></asp:TextBox>
        </td>
    <tr>
        <td class="auto-style2">Select Attributes</td>
        <td class="auto-style3">
            <asp:DropDownList ID="ddl_project" runat="server">
            </asp:DropDownList>
	 
	    </td>
    </tr>
    <tr>
        <td class="auto-style4">Select Language</td>
        <td class="auto-style5">
            <asp:DropDownList ID="ddl_language" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl_language_SelectedIndexChanged">
               <asp:ListItem>Select</asp:ListItem>
                
                   <asp:ListItem>java</asp:ListItem>
                <asp:ListItem>Asp.net</asp:ListItem>
                <asp:ListItem>pythen</asp:ListItem>
                <asp:ListItem>php</asp:ListItem>
            </asp:DropDownList>
	 
	        <strong>
            <asp:Label ID="lbl_alrdy" runat="server" CssClass="auto-style10"></asp:Label>
            </strong>
	 
	    </td>
    </tr>
        
    </tr>
    <tr>
        <td class="auto-style6">Cipher Text (CT)</td>
        <td class="auto-style7">
            <asp:TextBox ID="txt_ciphertext" runat="server"></asp:TextBox>
	 
	    </td>
    </tr>
    <tr>
        <td class="auto-style8">Tag (T)</td>
        <td class="auto-style9">
            <asp:TextBox ID="txt_tag" runat="server"></asp:TextBox>
	 
	    </td>
    </tr>
       
    <tr>
        <td class="auto-style6">Label (L)</td>
        <td class="auto-style7">
            <asp:TextBox ID="txt_label" runat="server"></asp:TextBox>
	 
	    </td>
    </tr>
    <tr>
        <td class="auto-style4">Proof(Pf)</td>
        <td class="auto-style5">
            <asp:TextBox ID="txt_proof" runat="server"></asp:TextBox>
	 
	    </td>
    </tr>
    <tr>
        <td class="auto-style1">Trapdoor Key(skt)</td>
        <td>
            <asp:TextBox ID="txt_trapdoor" runat="server"></asp:TextBox>
	 
	    </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server"  CssClass="btn btn-danger" Text ="SAVE" OnClick="Button1_Click1" />
            <strong>
    <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
        </strong>
	 
	    </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

    <script type="text/javascript">
    function UploadFile(fileUpload) {
        if (fileUpload.value != '') {
            document.getElementById("<%=btnUpload.ClientID %>").click();
        }
    }
</script>
</asp:Content>

