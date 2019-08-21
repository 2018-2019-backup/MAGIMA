<%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" CodeBehind="ecollection.aspx.cs" Inherits="FinanceApplication.ecollection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        /*body {
        background-image: url(http://broadfinance.com.au/wp-content/uploads/2013/08/background.jpg);
        }*/
        #well {
            margin-top:30px;
            width:450px;
            background-color:ghostwhite;
            border-color:blue;
        }
        #lbl {
            font-family:cursive;
            font-size:25px;
            color:blue;
        }
        #txt, #txt1, #txt2, #txt3 {
            width:400px;
        }
        #btn {
            background-color:blue;
            color:white;
            margin-left:150px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--    <form id="form1" runat="server">--%>
     <div class="col-lg-3"></div>
    <div class="col-lg-6">
    <div class="container well" id="well">
          <h2 style="font-family:'Century Gothic';color:black;"><b>EMI Collection</b></h2>   
        <div class="form-group">
                <asp:Label ID="Label6" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Loan ID:</b></asp:Label>
            <div class="input-group">
              <asp:TextBox  id="Loan" CssClass="form-control" ReadOnly="true" placeholder="Loan Id" runat="server" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  </div>
              </div>   
             <div class="form-group">
                <asp:Label ID="Label3" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Loan Amount:</b></asp:Label>
                 <div class="input-group">
              <asp:TextBox  id="lamount" CssClass="form-control" ReadOnly="true" placeholder="Loan Id" runat="server" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                                      <span class="input-group-addon">$</span>
</div>
              </div>
             
  
              <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Installment No:</b></asp:Label>
                  <div class="input-group">
                <asp:TextBox runat="server" CssClass="form-control" id="instalmentNumber" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                                                        <span class="input-group-addon">I</span>
</div>
              </div>    
              
              <div class="form-group">
                 <asp:Label ID="Label4" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>EMI Amount:</b></asp:Label>
                  <div class="input-group">
                  <asp:TextBox runat="server" CssClass="form-control" id="intrestAmount" ReadOnly="true" style="font-family:'Century Gothic';font-size:16px;" ></asp:TextBox>
                                       <span class="input-group-addon">$</span>
</div>
              </div>
  
              <div class="form-group">
                  <asp:Label ID="Label5" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Pay:</b></asp:Label>
                  <div class="input-group">
                  <asp:TextBox runat="server" CssClass="form-control" id="paymentIntrest" ReadOnly="true" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                                       <span class="input-group-addon">$</span>
</div>
              </div>
   <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Date:</b></asp:Label>
       <div class="input-group">
                <asp:TextBox runat="server" CssClass="form-control" id="ldate" TextMode="Date" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
           <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                </div>
              </div>

              <div style="text-align:center;">
                    <asp:Button ID="Save" runat="server" Text="Save" OnClick="Save_Click" CssClass= "btn btn-primary" style="margin-left:5%;"/>
                  <asp:Button ID="Cancel" runat="server" Text="Cancel" OnClick="Cancel_Click" CssClass= "btn btn-primary" style="margin-left:5%;"/>                                    
                </div>
      </div>
        </div>
        <div class="col-lg-3"></div>
<%--        </form>--%>
</asp:Content>
