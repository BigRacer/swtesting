<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Patients.aspx.cs" Inherits="Patients" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Center" Runat="Server">
   <h2>Patients Page</h2>
   <asp:GridView ID="GridView1" Width = "100%" runat="server">
   </asp:GridView>
   <br />
   name: 
   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
   surName:
   <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
   
   <asp:Button ID="Button1" runat="server" Text="Add Patient" 
      onclick="Button1_Click" />
</asp:Content>

