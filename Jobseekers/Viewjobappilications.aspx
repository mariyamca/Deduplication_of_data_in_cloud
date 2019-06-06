<%@ Page Title="" Language="C#" MasterPageFile="~/Jobseekers/job.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Viewjobappilications.aspx.cs" Inherits="Logistic_Viewjobappilications" %>

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
			<h3>Job <span>Appilication </span></h3>
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
       

    <asp:gridview runat="server" ID="gridview1" AutoGenerateColumns="False" Width="835px" Height="78px" BackColor="White" BorderColor="#2FDAB8" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
             


<%--             <asp:TemplateField>
            <ItemTemplate> 

                <asp:HiddenField ID="hdnId" runat="server" 
                    Value='<%#Eval("cid")%>'/>

            </ItemTemplate>
          </asp:TemplateField>--%>
            <asp:BoundField DataField="name" HeaderText="name" />
            <asp:BoundField DataField="ph" HeaderText="ph" />
            <asp:BoundField DataField="email" HeaderText="email" />
            <asp:BoundField DataField="date" HeaderText="date" />
            <asp:BoundField DataField="fromtime" HeaderText="fromtime" />
            <asp:BoundField DataField="totime" HeaderText="totime" />


      
           
                 
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

    <br />
    <br />
    <div class="item-info-product">
        <asp:Panel ID="Panel1" runat="server" Height="235px" Width="728px" Visible="False">
            <div class="auto-style1">
            </div>
        </asp:Panel>
    </div>
    <br />
     </center>
</asp:Content>

