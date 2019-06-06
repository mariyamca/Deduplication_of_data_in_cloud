<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" EnableEventValidation="false"  AutoEventWireup="true" CodeFile="addvacancy.aspx.cs" Inherits="company_addvacancy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    	<div id="page-wrapper">
			<div class="main-page">
				<div class="forms">
					
				
					<div class="form-two widget-shadow">
                      
						<div class="form-body" data-example-id="simple-form-inline">
                     
                                <div class="form-inline">
                                 <div class="form-group"> 
                                   </div>
						</div>
					</div>
					<div class="row">
						 <h1><b><center>ADD Vacancy</center> </b></h1>
						<div class="form-three widget-shadow">
                         
                                <div class="form-horizontal">
                                <div class="form-group">
									<label for="selector1" class="col-sm-2 control-label">Vacancy</label>
									<div class="col-sm-8">
                                         <asp:textbox runat="server" id="txt_addvcncy" type="text" class="form-control1" required="" ></asp:textbox>

									</div>
								</div>
                                      <div class="form-group">
									<label for="selector1" class="col-sm-2 control-label">Job Code</label>
									<div class="col-sm-8">
                                         <asp:textbox runat="server" id="txt_code" type="text" class="form-control1" required="" ></asp:textbox>

									</div>
								</div>

								<div class="form-group">
									<label for="focusedinput" class="col-sm-2 control-label">Experience</label>
									<div class="col-sm-8">
                                    
  <asp:textbox runat="server" id="txt_exp" type="text" class="form-control1" required="" TextMode="Number" ></asp:textbox>

									</div>
									<div class="col-sm-2">
                                    
                                      

									</div>
								</div>
                                   
								<div class="form-group">
									<label for="inputPassword" class="col-sm-2 control-label">Salary Package</label>
									<div class="col-sm-8">
                                     
                                        <asp:textbox runat="server" id="txtsalary" type="text" class="form-control1" required="" ></asp:textbox>
									</div>
								</div>
                                
								<div class="form-group">
									<label for="txtarea1" class="col-sm-2 control-label">Description</label>
									<div class="col-sm-8">
                                    
                                        <asp:TextBox ID="txtdesc" runat="server" type="text" required="" class="form-control1" TextMode="MultiLine"></asp:TextBox>

									</div>
								</div>
                                  
								<div class="form-group">
									<label for="smallinput" class="col-sm-2 control-label label-input-sm">Required Skill</label>
									<div class="col-sm-8">
                                      
                                        <asp:TextBox ID="txtskill" type="text" class="form-control1" required="" runat="server"></asp:TextBox>
									</div>
								</div>
								<div class="form-group">
									<label for="mediuminput" class="col-sm-2 control-label"></label>
									<div class="col-sm-8">
                                        
                                        <asp:Button ID="Button1" runat="server" CssClass="bg-danger" Text="Submit" OnClick="Button1_Click" />
									</div>
								</div>
                                    
                                    </div>
							
						</div>
					</div>
					
				</div>
			</div>
		</div>
        </div>
</asp:Content>

