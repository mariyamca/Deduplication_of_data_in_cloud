<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Viewjobappilications.aspx.cs" Inherits="Logistic_Viewjobappilications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            width: 100%;
            height: 237px;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-head_agile_info_w3l">
		<div class="container">
			<h1><b><center> View Application</center> </b></h1>
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
    <div class="auto-style3">
       

        <strong>
       

    <asp:gridview runat="server" ID="gridview1" AutoGenerateColumns="False" Width="835px" Height="78px" BackColor="White" BorderColor="#2fdab8" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
             
            <asp:TemplateField HeaderText="Select">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>       
             <asp:TemplateField  >
             <ItemTemplate>
             <asp:HiddenField ID="hdnId"  runat="server" Value='<%# Eval("cid") %>' Visible="false" />
             </ItemTemplate>
                 <HeaderStyle Width="0px" />
                 <ItemStyle Width="0px" />
             </asp:TemplateField>



<%--             <asp:TemplateField>
            <ItemTemplate> 

                <asp:HiddenField ID="hdnId" runat="server" 
                    Value='<%#Eval("cid")%>'/>

            </ItemTemplate>
          </asp:TemplateField>--%>
            <asp:BoundField DataField="name" HeaderText="name" />
            <asp:BoundField DataField="ph" HeaderText="ph" />
            <asp:BoundField DataField="email" HeaderText="email" />
            <asp:BoundField DataField="lastemployer" HeaderText="lastemployer" />
            <asp:BoundField DataField="currentctc" HeaderText="currentctc " />
            <asp:BoundField DataField="expectedctc" HeaderText="expectedctc" />
     <asp:TemplateField ItemStyle-HorizontalAlign="Center">  
                    <ItemTemplate>  
                        <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="DownloadFile"  
                            CommandArgument='<%# Eval("uploadcv") %>'></asp:LinkButton>  
                    </ItemTemplate>  

<ItemStyle HorizontalAlign="Center"></ItemStyle>
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
      </div>
        </center>
    <br />
    <br />
         <center>
    <asp:Button ID="Button1" runat="server" Text="Interview Schedule " CssClass="btn btn-success" OnClick="Button1_Click" style="Width:500px" />

    <br />
    <br />
    <div class="item-info-product">
        <asp:Panel ID="Panel1" runat="server" Height="235px" Width="728px" Visible="False">
            <div class="auto-style1">
                <table class="auto-style2">
                    <tr>
                        <td>Place</td>
                        <td>
                            <asp:TextBox ID="txt_place" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Interview Date</td>
                        <td>
                            <asp:TextBox ID="txt_date" runat="server" TextMode="Date"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;From Time</td>
                        <td>
                            <asp:TextBox ID="txt_fromtime" runat="server" TextMode="Time"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;To&nbsp; Time</td>
                        <td>
                            <asp:TextBox ID="txt_totime" runat="server" TextMode="Time"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" CssClass="btn btn-danger"/>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
        </asp:Panel>
    </div>
    <br />
     </center>
</asp:Content>

