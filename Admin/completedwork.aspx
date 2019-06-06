<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="completedwork.aspx.cs" Inherits="Admin_View_Work" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
     <br />
     <br />
          <br />
     <br />
          <br />
         <h1><b><center>WORK COMPLETED</center> </b></h1>
 
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" Width="861px" OnRowCommand="GridView1_RowCommand"  BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" Height="100px">
        <Columns>
              
           <%-- <asp:ButtonField DataTextField="status" HeaderText="Status" CommandName="Cancel" Text="Cancel"   CssClass="fa fa-x fa-thumbs-up" />--%>
<%--    <asp:ButtonField   ControlStyle-CssClass="fa fa-send-o" HeaderText="Send " commandname="DataCommand" commandargument='<%# Eval("wid" )%>' >
                 
<ControlStyle CssClass="fa fa-send-o"></ControlStyle>
            </asp:ButtonField>
                 --%>
              
            <asp:BoundField DataField="wid" HeaderText="wid" Visible="False"/>

            <asp:BoundField DataField="tyid" HeaderText="tyid" Visible="False" />
            <asp:BoundField DataField="projectname" HeaderText="Project Name" />
            <asp:BoundField DataField="workdetails" HeaderText="workdetails " />
            <asp:BoundField DataField="startdate" HeaderText="startdate" />
            <asp:BoundField DataField="enddate" HeaderText="enddate" />
            <asp:BoundField DataField="name" HeaderText="Name" />

             <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderText="Download">
                <ItemTemplate>
                    <asp:LinkButton ID="lnkDownload1" CssClass="fa fa-download" runat="server" Text=""  CommandName="Download"
                            CommandArgument='<%#"/wrkup/"+ Eval("wrkfile") %>'></asp:LinkButton>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:TemplateField>

        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#33d4da" Font-Bold="True" ForeColor="Black" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <br />
    <br />
     </center>
    <center>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="18pt" ForeColor="#33d4da"></asp:Label>
    </center>
     
</asp:Content>


