<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Graduation_Student_Party.Account.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   

    <br />    <br />    <br />    <br />
    <div class="text-center">
    
        <table class="style1" style="margin-left: 144px">
            <tr>
                <td class="text-center" style="color:#8a6060;font-size: 20px; width: 544px; height: 28px;">
                    <strong>Login</strong></td>
              
            </tr>
            <tr>
                <td class="text-center" style="color:#8a6060;border-style: dotted; border-color: #C6ADAD; height: 42px; width: 544px">
                    <strong>User Name</strong></td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
  
                </td>
            </tr>
            <tr>
                <td class="text-center" style="border-color: #C6ADAD;color:#8a6060; border-style: dotted; height: 44px; width: 544px;">
                    <strong>Password</strong></td>
                <td style="height: 44px">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" style="margin-left: 0px; height: 42px; width: 544px;"></asp:TextBox> 
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 544px">
                    &nbsp;</td>
                <td>
<%--                    <asp:Button ID="btnCreateAdmin" runat="server" OnClick="btnCreateAdmin_Click" Text="Admin" Visible="False" />--%>
                    <strong>
                    <asp:Button ID="btnLogin" runat="server" onclick="btnLogin_Click" 
                        Text="Login" CssClass="bold"  style="font-size: 17px;color: #8a6060; background-color:#dfd7db;  margin-right: 20px; margin-top: 0;" Height="41px" Width="267px" />
                    </strong>
                </td>
            </tr>
          
        </table>
    
                            <asp:Label ID="lblOutput" runat="server"></asp:Label>

    </div>


    <br />   <br />   <br /> 
    <br />   <br />   <br /> 
    <br />   <br />   <br /> 
     <br />   <br />   <br /> 
   
</asp:Content>
