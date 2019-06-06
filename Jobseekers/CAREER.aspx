<%@ Page Title="" Language="C#" MasterPageFile="~/Jobseekers/job.master" EnableEventValidation="false"  AutoEventWireup="true" CodeFile="CAREER.aspx.cs" Inherits="showroom_CAREER" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 43px;
        }
        .auto-style3 {
            height: 65px;
        }
        .auto-style4 {
            height: 52px;
        }
        .auto-style5 {
            height: 58px;
        }
        .auto-style6 {
            height: 59px;
        }
        .auto-style7 {
            height: 54px;
        }
        .auto-style8 {
            height: 56px;
        }
        .auto-style9 {
            height: 57px;
        }
        .auto-style10 {
            height: 47px;
        }
        .auto-style12 {
            margin-top: 0px;
        }
        .auto-style13 {
            height: 75px;
        }
        .auto-style14 {
            font-weight: bold;
            color: #660033;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="auto-style1">
        <h2><b><center>Application</center></b></h2>
        <tr>
            <td class="text-center" colspan="3"><strong>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style14"></asp:Label>
                    </strong></td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2">Job Code</td>
            <td class="auto-style2">
                <asp:TextBox ID="txt_appilication" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style3">Refered By</td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_recfer" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style4">Full Name</td>
            <td class="auto-style4">
                <asp:TextBox ID="txt_name" runat="server" required=""></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style5">Dob</td>
            <td class="auto-style5">
                <asp:TextBox ID="txt_dob" runat="server" TextMode="Date" required=""></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style6">Phone</td>
            <td class="auto-style6">
                <asp:TextBox ID="txt_number" runat="server" MaxLength="10" TextMode="Phone" required="" pattern="^[789]\d{9}$"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style7">Email</td>
            <td class="auto-style7">
                <asp:TextBox ID="txt_email" runat="server" required="" Type="email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style8">Address</td>
            <td class="auto-style8">
                <asp:TextBox ID="txt_adrs" runat="server" required=""></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style6">Current/Last Employer</td>
            <td class="auto-style6">
                <asp:TextBox ID="txt_lastemployer" runat="server" required=""></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style9">Current CTC</td>
            <td class="auto-style9">
                <asp:TextBox ID="txt_ctc" runat="server" required=""></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style5">Expected CTC</td>
            <td class="auto-style5">
                <asp:TextBox ID="txt_expctc" runat="server" required=""> </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style10">Minimum Notice period</td>
            <td class="auto-style10">
                <asp:TextBox ID="txt_notice" runat="server" TextMode="Number" required=""></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style13">Upload Your Cv</td>
            <td class="auto-style13">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style12" required="" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <strong>
                <asp:Button ID="Button1" runat="server" Text="Submit Appilication" class="btn btn-dark" OnClick="Button1_Click"/>
                </strong>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <h4>&nbsp;</h4>
            </td>
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

