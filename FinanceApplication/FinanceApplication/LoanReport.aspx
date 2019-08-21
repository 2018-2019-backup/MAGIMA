<%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" CodeBehind="LoanReport.aspx.cs" Inherits="FinanceApplication.LoanReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            overflow-x:hidden;
        }
        /*h3 {
          font-size:35px;
          color:black;
        }*/
        h2 {
            /*color:royalblue;*/
            margin-top:10%;
            /*color:#0026ca;*/
            color:black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--    <form id="form1" runat="server" >--%>
      <%--<div class="container"> --%> 
          <div class="row" style="margin-bottom:4%">   
    <div class="col-lg-2"></div>
    <div class="col-lg-8">
        <h2><b>Loan Report</b></h2>
        <div class="well">
       <%-- <asp:Button ID="excel" Text="excel" runat="server" OnClick="excel_Click" CssClass=" btn btn-info pull-right" />--%>
                    
                   <%-- <div><h3>Search Loan</h3></div>--%>
                    <%--<div >--%>
                        <div class="form-group">          
                        <asp:Label ID="Label1" runat="server" cssclass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>From</b></asp:Label>  
                            <div class="input-group">
                        <asp:TextBox ID="from" runat="server" TextMode="Date" cssclass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                </div>
                    </div>
                        <div class="form-group">
                        <asp:Label ID="Label2" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Till</b></asp:Label> 
                            <div class="input-group">
                        <asp:TextBox ID="till" runat="server" TextMode="Date" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                </div>
                        </div><br />
<%--                        <div>
                            <asp:Label ID="type1" runat="server"></asp:Label>
                            <asp:RadioButtonList ID="type" runat="server">
                                <asp:ListItem Value="1">Interest</asp:ListItem>
                                <asp:ListItem Value="2">Emi</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>--%>
                       <%-- </div>--%>
            <div style="text-align:center">
        <asp:Button runat="server" CssClass="btn btn-primary" style="font-family:'Century Gothic';font-size:14px;margin-left:15px;"   ID="search" OnClick="search_Click" Text="Search" />
         <asp:Button runat="server" CssClass="btn btn-primary"  style="font-family:'Century Gothic';font-size:14px;margin:10px;"   ID="Button1" OnClick="Button1_Click" Text="Cancel" />
                    </div> 
            
       






            </div>
                </div> 
        <div class="col-lg-2"></div>
        </div>
<%--        </form>--%>
</asp:Content>
