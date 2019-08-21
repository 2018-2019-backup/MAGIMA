<%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" CodeBehind="Interest.aspx.cs" Inherits="FinanceApplication.Interest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style>
        body {
            overflow-x: hidden;
        }
        #id,#pamount,#interests,#months,#Type,#tamount,#tip {
            width:350px;
        }
        /*form {
            margin-left:250px;
        }*/
        #btn {
            margin-right:100px;
        }
        #well {
            width:500px;
            color:black;
        }
        #well1 {
            width:200px;
            height:200px;
            color:black;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<form id="form2" runat="server">--%>
<div class="row" runat="server">
    <div class="col-lg-3">
        <div class="well"id="well1" style="margin-left:10px;">
       
        <div class="form-group">
    <asp:Label ID="lbl" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-weight:bold;">1% Document Cost</asp:Label>
            <div class="input-group">
    <asp:TextBox ID="dcost" runat="server" CssClass="form-control" style="font-family:'Century Gothic';"></asp:TextBox>
                         <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
</div>
            <asp:Label ID="Label7" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-weight:bold;">Interest per Month</asp:Label>
            <div class="input-group">
    <asp:TextBox ID="ipm" runat="server" CssClass="form-control" style="font-family:'Century Gothic';"></asp:TextBox>
                     <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
</div>
            <asp:Label ID="Label8" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-weight:bold;">Netpay Amount</asp:Label>
            <div class="input-group">
    <asp:TextBox ID="final" runat="server" CssClass="form-control" style="font-family:'Century Gothic';"></asp:TextBox>
                     <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
</div>
                        </div>
   </div> 
</div>





<div class="col-lg-8  well">
<div class="form-group">
    <asp:Label ID="lb" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Customer ID:</asp:Label>
    <div class="input-group">
    <asp:TextBox ID="id" runat="server" CssClass="form-control" ReadOnly="true" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                                       <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  </div>             

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
    <%--<div class="form-group">
    <asp:Label ID="Label3" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Months:</asp:Label>
        <div class="input-group">
    <asp:TextBox ID="months" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;" ></asp:TextBox>
     <span class="input-group-addon">M</span>
</div>
        </div>--%>

<div class="form-group">
    <asp:Label ID="Label4" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;" >Loan Type:</asp:Label>
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
        <div class="form-group">
    <asp:Label ID="Label9" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Date:</asp:Label>
            <div class="input-group">
    <asp:TextBox ID="dat" runat="server" CssClass="form-control" TextMode="Date"  style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                </div>

</div>
<%--    <div class="form-group">
    <asp:Label ID="Label7" runat="server" CssClass="control-label">Loan Id Number:</asp:Label>
    <asp:TextBox ID="lin" runat="server" CssClass="form-control"></asp:TextBox>
</div>--%>
    <div style="text-align:center;">
        <asp:Button ID="btn" runat="server" Text ="Add New Loan" CssClass="btn btn-primary" OnClick="btn_Click" style="font-family:'Century Gothic';font-size:14px;"/>
        <asp:Button ID="cancel" runat="server" Text ="Cancel" CssClass="btn btn-primary" OnClick="cancel_Click" style="font-family:'Century Gothic';font-size:14px;"/>
    </div>

</div>
<div class="col-lg-1"></div>
        </div>
    <%--</form>--%>
</asp:Content>
