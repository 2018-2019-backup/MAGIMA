<%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" CodeBehind="Emi.aspx.cs" Inherits="FinanceApplication.Emi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style>
        body {
            overflow-x: hidden;
        }
    </style>
    <script>
        function createdate() {
            var d = new Date();
            session["dat"] = d;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--     <form id="form2" runat="server">--%>
<div id="Div1" class="row" runat="server">
    <div class="col-lg-2"></div>

<div class="col-lg-8">
<div class="form-group">
    <asp:Label ID="lb" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Customer ID:</asp:Label>
    <asp:TextBox ID="id" runat="server" ReadOnly="true" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
</div>
<div class="form-group">
    <asp:Label ID="Label1" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Principal Amount:</asp:Label>
    <div class="input-group">
    <asp:TextBox ID="pamount" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
    <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
</div>
    </div>
<div class="form-group">
    <asp:Label ID="Label2" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Interest % Per Month: </asp:Label>
    <div class="input-group">
    <asp:TextBox ID="interest" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
    <span class="input-group-addon">%</span>
        </div>
</div>
    <div class="form-group">
    <asp:Label ID="Label3" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Months:</asp:Label>
        <div class="input-group">
    <asp:TextBox ID="months" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
        <span class="input-group-addon">M</span>
            </div>
</div>
<div class="form-group">
    <asp:Label ID="Label4" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Loan Type:</asp:Label>
    <asp:TextBox ID="Type" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
</div>
<div class="form-group">
    <asp:Label ID="Label5" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Total Amount:</asp:Label>
    <div class="input-group">
    <asp:TextBox ID="tamount" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
    <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
</div>
    </div>
    <div class="form-group">
    <asp:Label ID="Label6" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Total Interest Paid:</asp:Label>
        <div class="input-group">
    <asp:TextBox ID="tip" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
        <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>

</div>
        </div>
 <%--   <div class="form-group">
    <asp:Label ID="Label7" runat="server" CssClass="control-label">Loan Id Number:</asp:Label>
    <asp:TextBox ID="lin" runat="server" CssClass="form-control"></asp:TextBox>
</div>--%>
    <div class="form-group">
    <asp:Label ID="Label7" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Emi Amount:</asp:Label>
        <div class="input-group">
    <asp:TextBox ID="emi" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
        <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
</div>
        </div>
    
            <div class="form-group">
    <asp:Label ID="Label9" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Date:</asp:Label>
                <div class="input-group">
    <asp:TextBox ID="dat" runat="server" CssClass="form-control" TextMode="Date" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
</div>
</div>
    <div style="text-align:center;">
        <asp:Button ID="btn" runat="server" Text ="Add New Loan" Onclick="btn_Click" CssClass="btn btn-primary" style="font-family:'Century Gothic';font-size:14px;" OnClientClick="createdate()"  />
        <asp:Button ID="Cancel" runat="server" Text ="Cancel" Onclick="Cancel_Click" CssClass="btn btn-primary" style="font-family:'Century Gothic';font-size:14px;"   />
    </div>
        </div>

<div class="col-lg-2"></div>
</div>
<%--    </form>--%>
</asp:Content>
