<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Student_CRUD.aspx.cs" Inherits="Graduation_Student_Party.Project_Pages.Student_CRUD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


     
        <br />
    <div style="left:90px;">

    <br />
    <form>
                        <!--  subject-->
          
                  <div style="font-display:block; direction:inherit; height: 32px; font-size: 20px;" class="text-center">
                      <strong>
                      <asp:Label ID="lblSubject" runat="server" Text="STUDENT CRUD" style="color: #8a6060"></asp:Label>
                        <br /> 
                    </strong>
                  <br />  <br />  <br />  <br />
                    </div>

                   
        
   <div style="font-display:block; direction:inherit; height: 32px; font-size: 20px;" class="text-center"> <!-- msg -->
       <asp:Label ID="lblOutput" runat="server" style="font-size: 20px; color: #009933"></asp:Label>

     </div>
              

                <div class="text-left">

                 <!-- F Name-->
                    <div>
                    <strong>
                    <asp:Label ID="lbFirstName" runat="server" Text="First Name :" style="font-size: 20px; color: #8a6060"></asp:Label> 
                    </strong> 
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
                    <br />
                <asp:TextBox ID="txtlname" runat="server" style="font-size: 12pt"></asp:TextBox>
                   </div>
                 
                  <!-- gender-->
                 <div> 
                     <strong> 
                     <asp:Label ID="lblGender" runat="server" Text="Gender:" style="font-size: 20px; color: #8a6060"></asp:Label>
                     </strong>
                     <br />
                <asp:DropDownList ID="ddlgender" runat="server" Height="41px" Width="230px" ></asp:DropDownList>
                </div>
                  

                  <!--University ID-->
                     <div>
                    <strong>
                    <asp:Label ID="lblstudentNumber" runat="server" Text="Student Number :" style="font-size: 20px; color: #8a6060"></asp:Label> 
                    </strong> 
                    <br />
                <asp:TextBox ID="txtstudentNumber" runat="server" style="font-size: 12pt"></asp:TextBox>
                   </div>

                     <!-- email-->
                     <div>
                    <strong>
                    <asp:Label ID="lblEmail" runat="server" Text="Email :" style="font-size: 20px; color: #8a6060"></asp:Label> 
                    </strong> 
                    <br />
                <asp:TextBox ID="txtEmail" runat="server" style="font-size: 12pt"></asp:TextBox>
                   </div>


                  

                        <!-- Visitors-->
                     <div>
                    <strong>
                    <asp:Label ID="lblVisitors" runat="server" Text="Visitor Number :" style="font-size: 20px; color: #8a6060"></asp:Label> 
                    </strong> 
                    <br />
                         <asp:DropDownList ID="ddlvisitornumber" runat="server" Height="41px" style="margin-top: 0; font-size: 14px;" Width="230px"></asp:DropDownList>
                 
                         </div>



                                             <br />        <br />  <br />



                     <div>
                         <strong>
                    <asp:Button ID="btnInsert" runat="server" Text="Insert" style="font-size: 17px; color: #8a6060; background-color:#dfd7db;  margin-right: 20px; margin-top: 0;" Height="41px" Width="114px" OnClick="btnInsert_Click" CssClass="bold"/>
                    <asp:Button ID="btnSelect" runat="server"  Text="Select" style=" color: #8a6060; background-color:#dfd7db; font-size: 17px;" Height="41px" Width="114px" OnClick="btnSelect_Click" CssClass="bold" />
                         </strong>
                         </div>

                         <br />
                <div> 
                    <strong> 
                    <asp:Button ID="btnUpdate" runat="server"  Text="Update" style=" color: #8a6060; background-color:#dfd7db;  font-size: 17px; margin-right: 20px; margin-top: 0;" Height="41px" Width="114px" OnClick="btnUpdate_Click" CssClass="bold" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" 
                       OnClientClick="return confirm('Are you sure?)" style="margin-bottom: 0px; color: #8a6060; background-color:#dfd7db;  font-size: 17px;" Height="41px" Width="114px" OnClick="btnDelete_Click" CssClass="bold" />
                    </strong>
                    <br />
                    <br /> <br />
                    <br /><br />
                    <br />
                   </div>

                    <div>
                     <asp:GridView ID="GvStudentGradute" runat="server" style="margin-left: 166px; margin-right: 249px;" Width="815px" Height="256px">
                    </asp:GridView>
                    </div>

               

       </div> <!--end div start form-->

    </form>  </div>
</asp:Content>
