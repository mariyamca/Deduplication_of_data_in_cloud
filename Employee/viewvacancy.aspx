<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/emp.master"  EnableEventValidation="false" AutoEventWireup="true" CodeFile="viewvacancy.aspx.cs" Inherits="user_viewvacancy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 214px;
        }
        .auto-style2 {
            height: 52px;
            text-align: center;
        }
        .auto-style3 {
            height: 84px;
            text-align: center;
        }
        .auto-style4 {
            color: #CC0000;
        }
        .auto-style5 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <Center><asp:DataList ID="DataList1" runat="server" GridLines="Both" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Font-Bold="True" Font-Size="Larger" Text='<%# Eval("vacancy") %>'></asp:Label>
                        <br />
                        <strong>
                    job code:    <asp:Label ID="Label2" runat="server" CssClass="auto-style5" Text='<%# Eval("jobcode") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                        <br />
                      Experience:  <asp:Label ID="Label4" runat="server" Text='<%# Eval("experience") %>'></asp:Label>
                        &nbsp;Year Experience Required<br /> </strong>
                       
                    </td>
                </tr>
                <tr>
                    <td class="text-center"><strong>Skills:
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("skills") %>'></asp:Label>
                         <br />
                        <br />
                        <br />
                        <br />
                        </strong></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
        </Center>
</asp:Content>

