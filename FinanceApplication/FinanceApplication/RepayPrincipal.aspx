<%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" CodeBehind="RepayPrincipal.aspx.cs" EnableEventValidation="false" Inherits="FinanceApplication.RepayPrincipal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
        /*body {
        background-image: url(http://broadfinance.com.au/wp-content/uploads/2013/08/background.jpg);
        }*/
            body {
                overflow-x: hidden;
            }
        #well {
            margin-top:30px;
            width:450px;
            background-color:ghostwhite;
            border-color:blue;
             font-size:20px;
        }
        #txt, #txt1, #txt2, #txt3 {
            width:400px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-3"></div>
    <div class="col-lg-6"></div>
    <div class="container well" id="well">
<%--    <form id="form1" runat="server">--%>
    <div>
        <asp:Label ID="lbl" CssClass="control-label" runat="server" Style="color:black;font-family:'Century Gothic';font-size:30px;"><b>Principal Collection:</b></asp:Label> 
    </div>
        <br />
                        <div  class="form-group">
            <asp:Label ID="Label2" CssClass="control-label" runat="server" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Loan ID:</asp:Label>
                            <div class="input-group">
            <asp:TextBox ID="loan" CssClass="form-control" runat="server" ReadOnly="true" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  </div>
        </div>
        <div  class="form-group">
            <asp:Label ID="lbl1" CssClass="control-label" runat="server" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Principal Amount:</asp:Label>
            <div class="input-group">
            <asp:TextBox ID="pamount" CssClass="form-control" runat="server" ReadOnly="true" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                                 <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
</div>
        </div>
          <div  class="form-group">
            <asp:Label ID="lbl2" CssClass="control-label" runat="server" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Loan Date:</asp:Label>
              <div class="input-group">
            <asp:TextBox ID="date" CssClass="form-control" runat="server" ReadOnly="true" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                                  <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                </div>
        </div>
        <div  class="form-group">
            <asp:Label ID="lbl3" CssClass="control-label" runat="server" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Final principal Amount:</asp:Label>
            <div class="input-group">
            <asp:TextBox ID="finalpamount" CssClass="form-control" runat="server" ReadOnly="true" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                                                 <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
</div>
        </div>
        <div  class="form-group">
            <asp:Label ID="lbl4" CssClass="control-label" runat="server" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Pay Amount:</asp:Label>
            <div class="input-group">
            <asp:TextBox ID="payamount" CssClass="form-control" runat="server" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                                                 <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
</div>
        </div>
        <div>
        <asp:Button ID="btn" runat="server" Text="Pay Principal" CssClass="btn btn-primary" style="margin:10px;margin-left:130px;color:white;padding:5px;width:30%;font-family:'Century Gothic';font-size:14px;" OnClick="btn_Click"/>
            </div>
        <div>
        <asp:Button ID="Cancel" runat="server" Text="Cancel" CssClass="btn btn-primary" style="margin:10px;margin-left:130px;color:white;padding:5px;width:30%;font-family:'Century Gothic';font-size:14px;" OnClick="Cancel_Click"/>
            </div>
<%--    </form>--%>
        
        </div>
      <div class="col-lg-3"></div>
</asp:Content>
