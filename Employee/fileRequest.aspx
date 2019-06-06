<%@ Page Title="" Language="C#" EnableEventValidation="false"  MasterPageFile="~/Employee/emp.master" AutoEventWireup="true" CodeFile="fileRequest.aspx.cs" Inherits="Patients_fileRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        color: #990033;
        font-size: large;
    }
</style>
</asp:Content>

 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <center>
         <h1><b><center>KEY REQUEST</center> </b></h1>
    <div class="text-center">
        <strong>
<asp:Label ID="Label1" runat="server" Text="" CssClass="auto-style1"></asp:Label>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  Width="716px" OnRowCommand="GridView1_RowCommand" Height="209px">
    <Columns>
       
        <asp:BoundField DataField="filename" HeaderText="File Name" />
        <asp:BoundField DataField="date" HeaderText="Date" />
        <asp:TemplateField HeaderText="Request" ShowHeader="False">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" class="fa fa-check" style="font-size:38px;color:red" CausesValidation="False" CommandName="rqst" CommandArgument='<%# Eval("upid") %>' Text=""></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
        </asp:GridView>

        </strong>

</center>
    </div>


</asp:Content>
