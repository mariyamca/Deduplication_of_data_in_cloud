<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="sitemaster_reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Quick Register Form Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<link href="../regtemprary/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<link href="../regtemprary/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="signupform">
<h1>Register Form</h1>
	<div class="container">
		
		<div class="agile_info">
			<div class="w3_info">
				<h2>Register Here</h2>
						<form id="form1" runat="server">
						<div class="left margin">
							<label>First Name</label>
							<div class="input-group">
								<span><i class="fa fa-user" aria-hidden="true"></i></span>
                <asp:TextBox ID="txt_name" runat="server"  placeholder="Your Name" name="Name" type="text" required=""></asp:TextBox>

								<%--<input type="text" placeholder="First Name" required=""> --%>
							</div>
						</div>
                            <div class="left">
							<label>Employee Role</label>
							<div class="input-group">
								<span><i class="fa fa-user" aria-hidden="true"></i></span>
                                                       <asp:DropDownList ID="ddl_wrktype" runat="server"  ></asp:DropDownList>

                 <%--<asp:TextBox ID="txt_lname"  runat="server" placeholder="Last Name" name="text" type="text"  required=""></asp:TextBox>--%>

								<%--<input type="text" placeholder="Phone Number" required="">--%>
							</div>
						</div>
						<div class="left margin">
							<label>Email Address</label>
							<div class="input-group">
								<span><i class="fa fa-envelope" aria-hidden="true"></i></span>
      <asp:TextBox ID="txt_email" runat="server" placeholder="Email" name="Email" type="email" required=""></asp:TextBox>

								<%--<input type="email" placeholder="Email" required="">--%> 
							</div>
						</div>
						<div class="left">
							<label>Phone Number</label>
							<div class="input-group">
								<span><i class="fa fa-phone" aria-hidden="true"></i></span>
                 <asp:TextBox ID="txt_ph" runat="server" placeholder="phone Number" name="phone" type="text"  required="" MaxLength="10"></asp:TextBox>

								<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_ph" Display="Dynamic" ErrorMessage="Invalid number" ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>

								<%--<input type="text" placeholder="Phone Number" required="">--%>
							</div>
						</div>
						<div class="left margin">
							<label>Password</label>
							<div class="input-group">
								<span><i class="fa fa-lock" aria-hidden="true"></i></span>
                       <asp:TextBox ID="txt_pass" runat="server" placeholder="Password" name="Password" type="password"  required=""></asp:TextBox>

							<%--	<input type="Password" placeholder="Password" required="">--%>
							</div>
						</div>
						<div class="left">
							<label>Confirm Password</label>
							<div class="input-group">
								<span><i class="fa fa-lock" aria-hidden="true"></i></span>

                      <asp:TextBox ID="txt_cpass" runat="server" placeholder="Password" name="Password" type="password"  required=""></asp:TextBox>


<%--								<input type="Password" placeholder="Confirm Password" required="">--%>
							    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_pass" ControlToValidate="txt_cpass" Display="Dynamic" ErrorMessage="invalid pasword"></asp:CompareValidator>
							</div>
						</div>


                            <%--<div class="left margin">
							<label>
                            <asp:Label ID="Label2" runat="server" Text="Type"></asp:Label>
                            </label>&nbsp;<div class="input-group">
								<span><i class="fa fa-lock" aria-hidden="true"></i></span>

                       <asp:DropDownList ID="ddl_wrktype" runat="server"  ></asp:DropDownList>--%>

                                
                                <%--<asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="true" RepeatDirection="Horizontal"   required="" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Height="16px" Width="265px" Visible="False">
                            <asp:ListItem>Freelanser</asp:ListItem>
                            <asp:ListItem>Client</asp:ListItem>
                        </asp:RadioButtonList>--%>
<%--                       <asp:TextBox ID="TextBox1" runat="server" placeholder="Password" name="Password" type="password"  required=""></asp:TextBox>--%>

							<%--	<input type="Password" placeholder="Password" required="">--%>
						<%--	</div>
						</div>--%>
						<%--<div class="left">
							&nbsp;<br />
                            <div class="input-group">--%>

                                
                             <%-- <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>--%>

<%--                      <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" name="Password" type="password"  required=""></asp:TextBox>--%>


<%--								<input type="Password" placeholder="Confirm Password" required="">--%>
							<%--</div>
						</div>--%>






						<div class="clear"></div>
<%--							<input type="checkbox" value="remember-me" /> <h4> I agree to the terms & contidions </h4>        --%>
						<%--<asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="true" RepeatDirection="Horizontal"   required="" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Height="16px" Width="265px">
                            <asp:ListItem>Freelanser</asp:ListItem>
                            <asp:ListItem>Client</asp:ListItem>
                        </asp:RadioButtonList>--%>

                              <br />

<%--                              <asp:DropDownList ID="ddl_wrktype" runat="server"></asp:DropDownList>--%>
                            
                            	
                            <strong>
                            
                            	
                 <asp:Button ID="btnrg" runat="server" type="submit" Text="Register" OnClick="Button1_Click" BackColor="#00eaff" CssClass="auto-style1" Height="42px" Width="103px" />

                            </strong>

<%--                            <button class="btn btn-danger btn-block" type="submit">Register Now <i class="fa fa-long-arrow-right" aria-hidden="true"></i></button >                --%>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="Red"></asp:Label>
		        </form>
			</div>
			<div class="w3l_form">
				<div class="left_grid_info">
					<h3>Already Registered?</h3>
					<p> Nam eleifend velit eget dolor vestibulum ornare. Vestibulum est nulla, fermentum eget euismod et, tincidunt at dui. Nulla tellus nisl, semper id justo vel, rutrum finibus risus. Cras vel auctor odio.</p>
                    					<a href="Login.aspx" class="btn">Login <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>

                    
				</div>
			</div>
			<div class="clear"></div>
			</div>
			
		</div>
		<div class="footer">

 <p>&copy; 2018 Quick Register form. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="blank">W3layouts</a></p>
 </div>
	</div>
	</body>
</html>