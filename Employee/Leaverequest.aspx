<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/Employee/emp.master" AutoEventWireup="true" CodeFile="Leaverequest.aspx.cs" Inherits="Student_Leaverequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script src="../sweetalert.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="form-group" style="margin-top: 104px;">
											
          <table class="nav-justified">
              <h1><b><center>APPLY LEAVE</center> </b></h1>
              <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>                                             <label for="focusedinput" class="col-sm-2 control-label" style="font-weight: 900;     margin-left: 1px;">Date</label>
&nbsp;</td>
                  <td>
                      <div class="col-sm-8">
                          <asp:TextBox ID="txtdate0" runat="server" class="form-control1" required="" TextMode="Date" type="text"></asp:TextBox>
                      </div>
                  </td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td> <strong>&nbsp;&nbsp; <B>Reason</B></strong></td>
                  <td>
                      <div class="col-sm-8">
												<%--<input type="text" class="form-control1" id="focusedinput" placeholder="Default Input">--%>
                                                
											    <asp:TextBox ID="txtreason0" runat="server" class="form-control1" placeholder="Reason" required="" type="text"></asp:TextBox>
                                                 <%--<asp:DropDownList ID="DropDownList5"  runat="server" type="text" class="form-control1" AutoPostBack="true" ></asp:DropDownList>--%>
                                                
                                                
											</div>
                  </td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>
												
											   
												
											    <asp:Button ID="Button2" runat="server" CssClass="btn btn-danger" Text="Submit" style="margin-left: 560px; margin-top: 9px; width: 128px;" OnClick="Button1_Click1"        />
											</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
          </table>
&nbsp;<br />
          <br />
          <br />
          <br />
										</div>
    

     <script type="text/javascript" >

            function alert() {
                swal({
                    title: " Leave submitted",
                    text: "You clicked the button!",
                    icon: "success",
                    button: "OK",
                });
            }

        </script>
</asp:Content>

