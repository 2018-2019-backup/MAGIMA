<%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" CodeBehind="InterestCollection.aspx.cs" Inherits="FinanceApplication.InterestCollection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            overflow-x: hidden;
        }
      </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--    <form id="form1" runat="server">--%>
     <div class="container">
            <div class="row">
                <div class="col-lg-2"></div>
<%--                <div class="col-lg-8" style="background-color:white;margin-top:1%;padding:5%;">--%>
                   <div class="col-lg-8 well">
                    <h2 style="font-family:'Century Gothic';color:black;"><b>Interest Loan Details</b></h2>
                    <div class="form-group">
                        <asp:Label ID="lb" runat="server"  CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Loan ID:</b></asp:Label>
                            <div class="input-group">
                        <asp:TextBox ID="llnum" runat="server" CssClass="form-control" readonly="true" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  </div>  
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Loan Type:</b></asp:Label>
                          <div class="input-group">
                        <asp:TextBox ID="ttype" runat="server" CssClass="form-control" readonly="true" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                        <span class="input-group-addon">T</span>
  </div>  
                        </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Principal Amount:</b></asp:Label>
                          <div class="input-group">
                         <asp:TextBox ID="ppamount" runat="server" CssClass="form-control" readonly="true" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                        <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
  </div>  
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Total Amount:</b></asp:Label>
                             <div class="input-group">
                         <asp:TextBox ID="ttamount" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;" readonly="true"></asp:TextBox>
                        <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
  </div>  
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b> Interest Paid:</b></asp:Label>
                           <div class="input-group">
                         <asp:TextBox ID="iinpa" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;" readonly="true"></asp:TextBox>
                        <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
  </div>  
                    </div>
<%--                       <div class="form-group">
                        <asp:Label ID="Label5" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b> Interest Tenure:</b></asp:Label>
                           <div class="input-group">
                            <asp:TextBox ID="ttten" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;" readonly="true"></asp:TextBox>
                           <span class="input-group-addon">M</span>
  </div>  
                    </div>--%>
                       <div class="form-group">
                            <asp:Label ID="Label6" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b> Loan Created Date:</b></asp:Label>
                               <div class="input-group">
                            <asp:TextBox ID="ddat" runat="server" CssClass="form-control" readonly="true" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                           <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
  </div>  
                       </div>
   
                       <div style="text-align:center;">
                           <asp:Button ID="principal" runat="server" Text="Repay Principal" OnClick="principal_Click" CssClass="btn btn-primary" style="font-family:'Century Gothic';font-size:14px;" />
                           <asp:Button ID="interest" runat="server" Text="Repay Interest" OnClick="interest_Click" CssClass="btn btn-primary" style="font-family:'Century Gothic';font-size:14px;"/>
                       </div>
<%--                        <asp:GridView ID="gv" runat="server" AutoGenerateColumns="false">
                           <Columns>
                               <asp:BoundField Datafield="sno" headertext="sno"/>
                               <asp:BoundField Datafield="amountpaid" headertext="Amount Paid"/>
                               <asp:BoundField Datafield="date" headertext="Payment Date"/>
                           </Columns>
                       </asp:GridView> --%>
                </div>   
            </div> 
         </div>
<%--        </form>--%>
</asp:Content>
