<%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" CodeBehind="images.aspx.cs" Inherits="FinanceApplication.images" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <asp:Button ID="btnUpload" OnClick="btnUpload_Click" runat="server" Text="upload" />
        <br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <br />
        <asp:HyperLink ID="hyperlink" runat="server">View image uploads</asp:HyperLink>
    </form>
</asp:Content>
