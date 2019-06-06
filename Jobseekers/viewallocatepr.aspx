<%@ Page Title="" Language="C#" MasterPageFile="~/Jobseekers/job.master" AutoEventWireup="true" CodeFile="viewallocatepr.aspx.cs" Inherits="Distributor1_viewduties" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-head_agile_info_w3l">
		<div class="container">
			<h3>Allocate <span>Products </span></h3>
			<!--/w3_short-->
				 <div class="services-breadcrumb">
						<div class="agile_inner_breadcrumb">

						   <ul class="w3_short">
							
							</ul>
						 </div>
				</div>
	   <!--//w3_short-->
	</div>
</div>
    <br /><br />
    <center>


   <asp:gridview runat="server" ID="gridview1" AutoGenerateColumns="False" Width="1203px" Height="78px" BackColor="White" BorderColor="#2fdab8" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowCommand="gridview1_RowCommand">
        <Columns>
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("allocateddate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
           <%-- <asp:TemplateField HeaderText="Showroom ">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("showroomname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>--%>
            <asp:TemplateField HeaderText="product ">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("model") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Quantity">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" CommandArgument='<%# Eval("allocationid") %>' CommandName="allow" >Submit</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
       </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#2fdab8" Font-Bold="True" ForeColor="Black" />
        <PagerStyle BackColor="#99CCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="Black" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="Black" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:gridview>
        </strong>
   
        <br />
        </center>
</asp:Content>


