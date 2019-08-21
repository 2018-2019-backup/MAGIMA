<%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" CodeBehind="loanreportinterest.aspx.cs" Inherits="FinanceApplication.loanreportinterest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            overflow-x:hidden        
        }
    </style>
    <script>
        function val() {
            window.print();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--    <form id="form1" runat="server">--%>
        <div class="row">

<div class="col-md-2"></div>

<div class="col-md-8">
                <asp:button runat="server" ID="btn" CssClass="btn btn-primary pull-right" style="margin:10px;font-family:'Century Gothic';font-size:14px;" Text="Excel" OnClick="btn_Click"  />
    <asp:Button ID="print" Text="Print" runat="server" OnClientClick="val()" style="margin:10px;font-family:'Century Gothic';font-size:14px;" CssClass=" btn btn-primary pull-right" />
    <div id="full" style="margin-top:5%;">
    <div class="form-group">
        <asp:Label ID="label1" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Loan Created Date</asp:Label>
        <div class="input-group">
        <asp:TextBox ID="ddate" runat="server" readonly="true" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                </div>
    </div>
        <div class="form-group">
        <asp:Label ID="label2"  runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Customer ID</asp:Label>
        <div class="input-group">
            <asp:TextBox ID="iId" runat="server" readonly="true" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                </div>
    </div>
    <div class="form-group">
        <asp:Label ID="label3"  runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Loan ID</asp:Label>
         <div class="input-group">
        <asp:TextBox ID="lloanid" runat="server" readonly="true" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                 <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label4"  runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Principal Amount</asp:Label>
       <div class="input-group">
        <asp:TextBox ID="ppamount" runat="server" readonly="true" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                                    <span class="input-group-addon">$</span>
</div>
    </div>
        <div class="form-group">
        <asp:Label ID="Label5"  runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Interest</asp:Label>
    <div class="input-group">
            <asp:TextBox ID="iinterest" runat="server" readonly="true" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                                 <span class="input-group-addon">$</span>
</div>
    </div>
        <div class="form-group">
        <asp:Label ID="Label6" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Months</asp:Label>
      <div class="input-group">
            <asp:TextBox ID="mmonth" runat="server" readonly="true"  CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                                   <span class="input-group-addon">M</span>
</div>
    </div>
        <div class="form-group">
        <asp:Label ID="Label7"  runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Loan Type</asp:Label>
        <div class="input-group">
            <asp:TextBox ID="lloantype" runat="server" readonly="true" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                                           <span class="input-group-addon">T</span>
</div>
    </div>
        <div class="form-group">
        <asp:Label ID="Label8"  runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Total Amount</asp:Label>
      <div class="input-group">
            <asp:TextBox ID="ttotalamount" runat="server" readonly="true" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                                   <span class="input-group-addon">$</span>
</div>
    </div>
        <div class="form-group">
        <asp:Label ID="Label9"  runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Total Interest</asp:Label>
        <div class="input-group">
            <asp:TextBox ID="ttotalinterest" runat="server" readonly="true" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                                     <span class="input-group-addon">$</span>
</div>
    </div>
</div>
    </div>
    <div class="col-md-2"></div>
            </div>
<%--        </form>--%>
</asp:Content>
