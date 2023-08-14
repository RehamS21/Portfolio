<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Export_data.aspx.cs" Inherits="Graduation_Student_Party.Project_Pages.Export_data" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
        <br />    <br />    <br />
           <div style="font-display:block; direction:inherit; height: 32px; font-size: 20px;" class="text-center">
                      <strong>
                      <asp:Label ID="lblSubject" runat="server" Text="Export Data" style="color: #8a6060"></asp:Label>
                        <br /> 
                    </strong>
                 
                    </div>

     <br />  <br />


        <table>
            <tr>
                <td>
                    <asp:GridView ID="gvstudentRegistered"  runat="server" style="margin-left: 166px; margin-right: 249px;" Width="815px" Height="256px">
                    </asp:GridView>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="text-right">
                    <strong>
                    <asp:Button ID="btnExport" runat="server" Text="Export" style="color: #8a6060; background-color: #dfd7db; font-size: 17px; margin-right: 20px; margin-top: 0;" Height="41px" Width="187px" OnClick="btnExport_Click" CssClass="bold" Visible="false" />
                    </strong>
                </td>
            </tr>
        </table>
    

     <br />

</asp:Content>
