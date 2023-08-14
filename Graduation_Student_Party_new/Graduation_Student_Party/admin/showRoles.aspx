<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="showRoles.aspx.cs" Inherits="Graduation_Student_Party.admin.showRoles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    
    <div>
    <h3 class="auto-style1" style="text-align: center"> <strong>User Role Management Console</strong></h3>
    <div>
        <table border="1" >
            <tr>
                <th>
                    Roles 
                </th>
                <th>
                    Users
                </th>
                <th style="width: 383px">
                    <asp:Button ID="btnUserRoleAssign" runat="server" 
                    Text="Link User Role" OnClick="btnUserRoleAssign_Click" Width="190px" style="background-color: #CABBBE; margin-left: 66;" />
                </th>
            </tr>
            <tr>
                <td >
                    <asp:CheckBoxList ID="cBLRoles" runat="server"></asp:CheckBoxList>
                </td>
                 <td >
                    <asp:CheckBoxList ID="cBLUsers" runat="server">
                    </asp:CheckBoxList>
                </td>
                 <td style="width: 383px">
                    <asp:Button ID="btnUnlinkUserRoles" runat="server" OnClick="btnUnlinkUserRoles_Click" Text="Unlink User Role" Width="190px" style="background-color: #CABBBE" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td style="width: 383px">
                     <asp:Button ID="btnDeleteRoles" runat="server" OnClick="btnDeleteRoles_Click" Text="Delete Roles" Width="190px" style="background-color: #CABBBE" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td style="width: 383px">
                    <asp:Button ID="btnDeleteUsers" runat="server" OnClick="btnDeleteUsers_Click" Text="Delete Users" Width="190px" style="background-color: #CABBBE" />
                </td>
            </tr>
        </table>
    </div>
        <br />        <br />

       <table  border="2">
           <tr>
               <td colspan ="5">
                   <asp:Label ID="lblMsg" runat="server"  Text=""></asp:Label>
               </td>
           </tr>
           <tr>
               <td>
                   User
               </td>
               <td>
                   <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
               </td>
               <td >
                   Role
               </td>
               <td  class="style4" style="width: 61px" >
                   <asp:TextBox ID="txtRole" runat="server"></asp:TextBox>
               </td>
               <td >
                   <asp:Button ID="btnLinkUserRole" runat="server" OnClick="btnLinkUserRole_Click" Text="Link User Role"
                       Width="190px" style="margin-left: 0px; background-color: #CABBBE" TabIndex="6" Height="46px"  />
               </td>
               </tr>
               <tr>
                   <td>
                       Password
                   </td>
                   <td>
                       <asp:TextBox ID="txtPassword" runat="server" TabIndex="1"></asp:TextBox>
                   </td>
                   <td>
                   </td>
                   <td>
                   </td>
                   <td>
                       <asp:Button ID="btnUnLinkUserToRole" runat="server" OnClick="btnUnLinkUserToRole_Click"
                           Text="UnlinkUsertoRole" Width="190px" style="background-color: #CABBBE" />
                   </td>
               </tr>
               <tr>
                   <td class="style3" style="width: 68px">
                       Email</td>
                   <td align="center" class="style4">
                       <asp:TextBox ID="txtEmail" runat="server" TabIndex="2"></asp:TextBox>
                   </td>
                   <td class="style4" style="width: 42px">
                       &nbsp;</td>
                   <td >
                       &nbsp;</td>
                   <td >
                       <asp:Button ID="btnShowAllUser" runat="server" OnClick="btnShowAllUser_Click" Text="Show All Users"
                           Width="190px" style="background-color: #CABBBE"/>
                   </td>
               </tr>
               <tr>
                   <td class="style3" style="width: 68px">
                       &nbsp;
                   </td>
                   <td>
                       <asp:Button ID="btnCreateUser0" runat="server" OnClick="btnCreateUser_Click"
                           Text="Create User" TabIndex="3" style="background-color: #CABBBE ; margin-left: 0px; width:190px" />
                   </td>
                   <td>
                       &nbsp;</td>
                   <td >
                       <asp:Button ID="btnCreateRole0" runat="server" OnClick="btnCreateRole_Click" 
                           Text="Create Role" Width="190px" TabIndex="5" style="background-color: #CABBBE" />
                       </td>
                   <td >
                       <asp:Button ID="btnShowAllRoles" runat="server" OnClick="btnShowAllRoles_Click" 
                    style="background-color: #CABBBE" Text="Show All Roles" Width="190px"
                           />
                   </td>
               </tr>
               <tr>
                   <td>
                       &nbsp;
                   </td>
                   <td>
                       <asp:Button ID="btnDeleteUser0" runat="server" OnClick="btnDeleteUser_Click" Text="Delete User" Width="190px" style="background-color: #CABBBE" />
                   </td>
                   <td>
                       </td>
                   <td>
                       
                       <asp:Button ID="btnDeleteRole1" runat="server" OnClick="btnDeleteRole_Click" Text="Delete Role" style="background-color: #CABBBE; width:190px"/>
                   </td>
                   <td style="width: 177px">
                       <asp:Button ID="btnUpdateUser" runat="server" OnClick="btnUpdateUser_Click" Text="Update User" Width="190px" style="background-color: #CABBBE" />
                   </td>
           </tr>
       </table>



        <h3 class="auto-style1" style="text-align: center"><strong>Your Roles</strong></h3>
        <fieldset >
        <legend>Roles 1</legend>
            <asp:GridView ID="grdRoles" DataSourceID="srcRoles" EmptyDataText="You are not a member of any roles"
                GridLines="none" runat="server" />
            <asp:ObjectDataSource ID="srcRoles" 
                TypeName="System.Web.Security.Roles" 
                SelectMethod="GetRolesForUser"
                runat="server" />
        </fieldset>
    
        <br />

    </div>

            <br /> <br />

    <fieldset >
        <p class="text-center" style="color: #8A6060; font-size: 24px;"><strong>Users & Roles</strong></p>


        <table >
            <tr>
                <td colspan="3" style="height: 24px">
                </td>
            </tr>
            <tr>
                <td valign="top">
                 DB Users
                    <asp:GridView ID="gvUsers" runat="server">
                    </asp:GridView>
                </td>            
                <td valign="top">
                 DB Roles
                    <asp:GridView ID="gvRoles" runat="server">
                    </asp:GridView>
                    <asp:ObjectDataSource ID="ObjGetAllRoles" runat="server" SelectMethod="GetAllRoles"
                        TypeName="System.Web.Security.Roles"></asp:ObjectDataSource>
                </td>
                <td>
                    &nbsp;
                </td>
                <td valign="top">
                    None Ansi InnerJoin
                    <asp:GridView ID="gvNonAnsiInnerJoin" runat="server">
                    </asp:GridView>
                </td>
                <td valign="top">
                    Inner Join
                    <asp:GridView ID="gvInnerJoin" runat="server">
                    </asp:GridView>
                </td>
                <td valign="top">
                    LeftOuter Join Role
                    <asp:GridView ID="gvLeftOuterJoin" runat="server">
                    </asp:GridView>
                </td>
                <td valign="top">
                    RightOuter Join Role
                    <asp:GridView ID="gvRightOuterJoin" runat="server">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </fieldset>

<br /><br />
<br />


</asp:Content>
