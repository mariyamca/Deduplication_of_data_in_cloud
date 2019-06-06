<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="RequestFile.aspx.cs" Inherits="Admin_RequestFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
       <h1>View and Send Key Requested</h1>
   
    <br />
        </center>
      <center>
    <div class="auto-style1">

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  Width="668px" OnRowCommand="GridView1_RowCommand" CellPadding="4" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="name" HeaderText="Name" />
        <asp:BoundField DataField="filename" HeaderText="File Name" />
        <asp:BoundField DataField="date" HeaderText="Date" />
        <asp:BoundField DataField="email" HeaderText="Email" />
        <asp:TemplateField HeaderText="Send" ShowHeader="False">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" class="fa fa-send-o" style="font-size:38px;color:red" CommandName="rqst" CommandArgument='<%# Eval("upid") %>' Text=""></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
        <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>

</center>
    </div>

</asp:Content>


