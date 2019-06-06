<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Work.aspx.cs" Inherits="Clinet_Work" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        color: #FFFFFF;
        font-weight: bold;
        background-color: #33CCFF;
    }
        .auto-style3 {
            height: 46px;
        }
        .auto-style5 {
            height: 54px;
        }
        .auto-style6 {
            height: 53px;
        }
        .auto-style7 {
            height: 75px;
        }
        .auto-style9 {
            height: 59px;
        }
        .auto-style10 {
            height: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
           
   

    <div class="middlesection-w3pvt-lau py-5" id="stats">
		<div class="container py-xl-5 py-lg-3">
			
               </div>
        </div>


    <table align="center" class="auto-style9" style="border:thick solid #a7a7a7; width: 100%;height: 100%">   
        <h1><b><center>ADD WORK</center> </b></h1>
 
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
            <span data-letters="Short Codes">
            <td class="auto-style3">Freelancer Type</td>
            <td class="auto-style3"><span data-letters="Short Codes">
                <asp:DropDownList ID="ddl_wrktype" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl_wrktype_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            </span>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style10">Project Name</td>
            <td class="auto-style10">
                <asp:TextBox ID="txt_pname" runat="server" Height="27px" type="textarea" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Work Details</td>
            <td>
                <asp:TextBox ID="txt_details" runat="server" Height="62px" type="textarea" TextMode="MultiLine" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style7">Contact no</td>
            <td class="auto-style7"><span data-letters="Short Codes">
                <asp:TextBox ID="txt_ph0" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style7">Email</td>
            <td class="auto-style7"><span data-letters="Short Codes">
                <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style5">Start Date</td>
            <td class="auto-style5"><span data-letters="Short Codes">
                <asp:TextBox ID="txt_Startdate" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style5">End Date</td>
            <td class="auto-style5"><span data-letters="Short Codes">
                <asp:TextBox ID="txt_enddate" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style1" OnClick="Button1_Click" Text="SAVE" Width="194px"  />
                <br />
                <br />
                </strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="Red" ></asp:Label>
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

