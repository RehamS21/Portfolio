<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Graduation_Student_Party.Register_Page.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/jquery.validate-vsdoc.js"></script>
    <script src="../Scripts/jquery.validate.js"></script>
    <script src="../Scripts/jquery.validate.min.js"></script>
    <script src="../Scripts/jquery.validate.unobtrusive.js"></script>
    <script src="../Scripts/jquery.validate.unobtrusive.min.js"></script> 
    <br />
    <br />

   
      <div style="left:90px;">

    
    <form>
                        <!--  subject-->
          
                  <div style="font-display:block; direction:inherit; height: 32px; font-size: 20px;" class="text-center">
                      <span style="font-weight: bold; color: #8a6060">Register to Students Graduation Party </span><strong>
                        <br /> 
                    </strong>
                  <br />  <br />  <br />  <br />
                    </div>

                   
        
   <div style="font-display:block; direction:inherit; height: 32px; font-size: 20px;" class="text-center"> <!-- msg -->
       <asp:Label ID="lblOutput" runat="server" style="font-size: 20px; color: #ff0000"></asp:Label>

     </div>
              

                <div class="text-left">

                 <!-- F Name-->
                    <div>
                    <strong>
                    <asp:Label ID="lbFirstName" runat="server" Text="First Name :" style="font-size: 20px; color: #8a6060" ></asp:Label> 
                    </strong> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname" ErrorMessage="Required" ForeColor="Red" SetFocusOnError="True">Required</asp:RequiredFieldValidator>
                    <br />
                <asp:TextBox ID="txtfname" runat="server" style="font-size: 12pt" ></asp:TextBox>
                        
                        </div>

                <!-- M Name-->
                     <div>
                    <strong>
                    <asp:Label ID="lblMname" runat="server" Text="Middle Name :" style="font-size: 20px; color: #8a6060"></asp:Label> 
                    </strong> 
                    <br />
                <asp:TextBox ID="txtmname" runat="server" style="font-size: 12pt"></asp:TextBox>
                   </div>
                 
                  <!-- L Name-->
                     <div>
                    <strong>
                    <asp:Label ID="lblLname" runat="server" Text="Last Name :" style="font-size: 20px; color: #8a6060"></asp:Label> 
                    </strong>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtlname" Display="Dynamic" ErrorMessage="Required" ForeColor="Red" SetFocusOnError="True">Required</asp:RequiredFieldValidator>
                    <br />
                <asp:TextBox ID="txtlname" runat="server" style="font-size: 12pt"></asp:TextBox>
                   </div>
                 
                  <!-- gender-->
                 <div> 
                     <strong> 
                     <asp:Label ID="lblGender" runat="server" Text="Gender:" style="font-size: 14px; color: #8a6060"></asp:Label>
                     </strong>
                   
                     <br />
                <asp:DropDownList ID="ddlgender" runat="server" Height="41px" Width="230px" ></asp:DropDownList>

                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                         ControlToValidate="ddlgender" 
                         Display="Dynamic" ErrorMessage="Required" ForeColor="Red" 
                         InitialValue="select ">choose a gender</asp:RequiredFieldValidator>
                </div>
                  

                  <!--University ID-->
                     <div>
                    <strong>
                    <asp:Label ID="lblstudentNumber" runat="server" Text="Student Number :" style="font-size: 20px; color: #8a6060"></asp:Label> 
                    </strong> 
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtstudentNumber" Display="Dynamic" ErrorMessage="Required" ForeColor="Red" SetFocusOnError="True">Required</asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtstudentNumber" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{9}">unvalid number</asp:RegularExpressionValidator>
                    <br />
                <asp:TextBox ID="txtstudentNumber" runat="server" style="font-size: 12pt"></asp:TextBox>
                   </div>

                     <!-- email-->
                     <div>
                    <strong>
                    <asp:Label ID="lblEmail" runat="server" Text="Email :" style="font-size: 20px; color: #8a6060"></asp:Label> 
                    </strong> 
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="email uncorrect" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">email uncorrect</asp:RegularExpressionValidator>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <br />
                <asp:TextBox ID="txtEmail" runat="server" style="font-size: 12pt"></asp:TextBox>
                   </div>


                  

                        <!-- Visitors-->
                     <div>
                    <strong>
                    <asp:Label ID="lblVisitors" runat="server" Text="Visitor Number :" style="font-size: 20px; color: #8a6060"></asp:Label> 
                    </strong> 
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlvisitornumber" Display="Dynamic" ErrorMessage="Required" ForeColor="Red" InitialValue="select a number" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <br />
                         <asp:DropDownList ID="ddlvisitornumber" runat="server" Height="41px" style="margin-top: 0; font-size: 14px;" Width="230px"></asp:DropDownList>
                 
                         </div>



                                             <br />        <br />  <br />



                     <div>
                         <strong>
                    <asp:Button ID="btnRegister" runat="server" Text="Register" style="font-size: 17px;color: #8a6060; background-color:#dfd7db;  margin-right: 20px; margin-top: 0;" Height="41px" Width="267px" OnClick="btnInsert_Click"/>
                         </strong>
                         </div>

                         <br />
                <div style="height: 72px"> 
                   </div>

               

       </div> <!--end div start form-->

    </form>  </div>


</asp:Content>
