<%@ Page Title="" Language="C#" MasterPageFile="~/Jobseekers/job.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="selectedappilications .aspx.cs" Inherits="Logistic_Viewjobappilications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            color: #0000FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-head_agile_info_w3l">
		<div class="container">
			<h3>Select <span>Appilications </span></h3>
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
       

        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <strong>Congratulations and welcome you to Our team .You have successfully completed our initial process and we are pleased to make you an offer.Listed items should be submitted on joining:All educational certificates copy,Address proof copy,2 Passport size photos,Last employer&#39;s experience certificate,Last employer&#39;s salary certificate &amp; salary slip we will need your confirmation immediately.Kindly send us a mail with acceptance &amp; confirm joining on&nbsp;
                <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text='<%# Eval("date") %>'></asp:Label>
                &nbsp;We look forward to you being a part of our team.</strong>
            </ItemTemplate>
        </asp:DataList>
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

</asp:Content>

