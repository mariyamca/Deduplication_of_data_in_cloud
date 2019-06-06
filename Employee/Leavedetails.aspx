<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/emp.master" AutoEventWireup="true" CodeFile="Leavedetails.aspx.cs" Inherits="Student_Leavedetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1><b>STATUS</b></h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="613px" Height="112px">
        <Columns>
            <asp:TemplateField HeaderText="No">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                     <asp:Label ID="Label5" runat="server" Text='<%# Container.DataItemIndex + 1 %>' Font-Bold="True"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:BoundField DataField="date" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Date" />
            <asp:BoundField DataField="reason" HeaderText="Reason" />
            <asp:BoundField DataField="status" HeaderText="Status" />
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
    
</asp:Content>

