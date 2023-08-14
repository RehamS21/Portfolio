<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Graduation_Student_Party.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>&nbsp;</h2>
   
      <div style="left:90px;">

    
    <form>
                        <!--  subject-->
          
                  <div style="font-display:block; direction:inherit; height: 32px; font-size: 20px;" class="text-center">
                      <strong>
                        <span style="color: #8a6060">Contact Us<br />
                      </span>
                        <br /> 
                    </strong>
                  <br />  <br />  <br />  <br />
                    </div>

                   
        
   <div style="font-display:block; direction:inherit; height: 32px; font-size: 20px; color: #8a6060"  class="text-center"> <!-- msg -->
       Dear student, you can contact us via this page</div>
              

                <div class="text-left">

                 <!-- F Name-->
                    <div>
                        <span style="font-weight: bold; font-size: 20px; color: #8a6060">From</span><br />
                <asp:TextBox ID="txtFrom" runat="server" style="font-size: 12pt" ></asp:TextBox>
                        
                        </div>

                <!-- M Name-->
                     <div>
                         <span style="font-weight: bold; font-size: 20px; color: #8a6060">To</span><br />
                <asp:TextBox ID="txtTo" runat="server" style="font-size: 12pt"></asp:TextBox>
                   </div>
                 
                  <!-- L Name-->
                     <div>
                         <span style="font-weight: bold; font-size: 20px; color: #8a6060">Subject</span><br />
                <asp:TextBox ID="txtSubject" runat="server" style="font-size: 12pt"></asp:TextBox>
                   </div>
                 
                  <!-- gender-->
                  

                  <!--University ID-->
                     <div class="text-center">
                         <span style="font-weight: bold; font-size: 20px; color: #8a6060">Message</span><br />
                <asp:TextBox ID="txtBody" runat="server" style="font-size: 12pt" Height="248px" Width="844px"></asp:TextBox>
                         <br />
                   </div>

                     <br />

                     <!-- email-->
                     <div class="text-center">
                         <strong>
                <asp:Button ID="btnSendEmail0" runat="server" OnClick="btnSendEmail_Click" Text="Send Email" style="font-size: 17px; color: #8a6060; background-color:#dfd7db;  margin-top: 0;" Height="41px" Width="267px" />
                 
                         </strong>
                 
                         </div>



                                             <br />        
                    <asp:Label ID="lblOutput" runat="server"></asp:Label>

                         <br />
                <div> 
                   </div>

               

       </div> <!--end div start form-->

    </form>  </div>


</asp:Content>
