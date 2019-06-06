<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" enableEventValidation="false" AutoEventWireup="true" CodeFile="Feelancer.aspx.cs" Inherits="Admin_Feelancer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="314px" Width="800px" >
    <Columns>
         <%--<asp:BoundField DataField="regid" HeaderText="regid" />    --%>
        <asp:BoundField DataField="name" HeaderText="Name" />
        <asp:BoundField DataField="phone" HeaderText="contact" />
        <asp:BoundField DataField="email" HeaderText="Email" />
      <%--  <asp:BoundField DataField="designation" HeaderText="Designation" />--%>
       <%-- <asp:BoundField DataField="specializtion" HeaderText="Specializtion" />--%>
      
    <asp:ButtonField DataTextField="Status" HeaderText="Status"  />
         <asp:TemplateField ShowHeader="False" HeaderText="Auherize" >
             <ItemTemplate>
                 <asp:LinkButton ID="LinkButton1" runat="server" CssClass="fa fa-check" CausesValidation="False" CommandArgument='<%# Eval("regid") %>' Text=""></asp:LinkButton>
             </ItemTemplate>
         </asp:TemplateField>
    </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="18pt" ForeColor="#CC0000"></asp:Label>

</asp:Content>

