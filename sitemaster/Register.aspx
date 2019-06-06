<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Sitemstr_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <!-- Meta tags -->
	<title>Rushhour</title>
	<meta name="keywords" content="Study Application Form Responsive widget, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- stylesheets -->
  
	<link rel="stylesheet" href="../Regtemp/css/style.css">
	<!-- google fonts  -->
	<link href="../Regtemp///fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">
	<link href="../Regtemp///fonts.googleapis.com/css?family=Josefin+Sans:300,400,400i,700" rel="stylesheet">
</head>
<body>
    <%--    <form id="form1" runat="server">--%>
    <div>
    <div class="w3ls-banner">
	<div class="heading">
				<h1>Are You a Job Seeker ? </h1>
	</div>
		<div class="container">
			<div class="heading">
				<h2>REGISTER HERE</h2>
				<p>Please fill out the application form carefully</p>
			</div>
			<div class="agile-form">
				<form  id="form1" runat="server"  method="post">
					<ul class="field-list">
						<li>
							<label class="form-label"> 
								Full Name 
								<span class="form-required"> * </span>
							</label>
							<div class="form-input">
                                <asp:TextBox ID="txtname" runat="server" type="text" name="full_name" placeholder="Full Name " required=""></asp:TextBox>
                                <%--<input type="text" name="full_name" placeholder="" required >--%>
							</div>
						</li>
										
						<li> 
							<label class="form-label">
							   E-Mail <span class="form-required"> * </span>
							</label>
							<div class="form-input">
                                <asp:TextBox ID="txtemail" runat="server" type="email" name="email" placeholder=" E-Mail Address" required=""></asp:TextBox>
                                <%--	<input type="email" name="email" placeholder="" required>--%>
							
							</div>
						</li>
						
						<li> 
							<label class="form-label">
							   Mobile Number
							   <span class="form-required"> * </span>
							</label>
							<div class="form-input">
                                <asp:TextBox ID="txtph" runat="server" type="text" name="mobile_number" placeholder=" Mobile Number" required="" MaxLength="10"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtph" ErrorMessage="Inavalid Number" ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
                                <%--<input type="text" name="mobile_number" placeholder="" required >--%>
							</div>
						</li>						
							<%--<li> 
							<label class="form-label">
							 Staff/Student
							   <span class="form-required"> * </span>
							</label>
							<div class="form-input">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="true" RepeatDirection="Horizontal" required="" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                                    <asp:ListItem>Staff</asp:ListItem>
                                    <asp:ListItem>Student</asp:ListItem>
                                </asp:RadioButtonList>
                             <%--   <asp:TextBox ID="TextBox1" runat="server" type="text" name="mobile_number" placeholder=" Mobile Number" required=""></asp:TextBox>--%>
                                <%--<input type="text" name="mobile_number" placeholder="" required >
							</div>
						</li>	--%>




						
                        <li> 
							<label class="form-label">
							  User Name
							   <span class="form-required"> * </span>
							</label>
							<div class="form-input">
                                <asp:TextBox ID="txtuname" runat="server" type="text" name="uname" placeholder=" User Name" required=""></asp:TextBox>
                                <%--<input type="text" name="mobile_number" placeholder="" required >--%>
							</div>
						</li>						
						
						<li> 
							<label class="form-label">
							  Password
							   <span class="form-required"> * </span>
							</label>
							<div class="form-input">
                                <asp:TextBox ID="txtpswd" runat="server" type="text" name="mobile_number" placeholder="Password" required=""></asp:TextBox>
                                <%--								<input type="text" name="mobile_number" placeholder="" required >--%>
							</div>
						</li>
                        <%--  <li> 
                        <asp:Panel ID="Panel1" runat="server" Visible="False">
                          
							<label class="form-label">
							  Subject
							   <span class="form-required"> * </span>
							</label>
							<div class="form-input">
                                <asp:TextBox ID="txtsubject" runat="server" type="text" name="mobile_number" placeholder="Subject" required=""></asp:TextBox>
                                <%--								<input type="text" name="mobile_number" placeholder="" required >--
							
                        </li>--%>

					</ul>
                    <asp:Button ID="Button1" runat="server" Text="Register"  type="submit" OnClick="Button1_Click"/>
					
                    <asp:Label ID="lbl_msg" runat="server" Font-Bold="True" Font-Size="20px" ForeColor="#FF3300"></asp:Label>
                    
                    <%--<input type="submit" value="Apply Now">--%>
				</form>	
			</div>
		</div>
		<div class="copyright">
		<%--<p>© 2018 Study Application Form. All rights reserved | Design by <a href="www.w3layouts.com">W3layouts</a></p> --%>
	</div>
	</div>
    </div>
    <%--</form>--%>
</body>
</html>
