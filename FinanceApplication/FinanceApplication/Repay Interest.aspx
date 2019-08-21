<%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" CodeBehind="Repay Interest.aspx.cs" EnableEventValidation="false" Inherits="FinanceApplication.Repay_Interest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /*body {
        background-image: url(http://broadfinance.com.au/wp-content/uploads/2013/08/background.jpg);
        }*/
        body {
            overflow-x:hidden;
        }
        #well {
            margin-top:30px;
            width:450px;
            background-color:ghostwhite;
            border-color:blue;
            font-size:20px;
        }

        #interestamount, #installmentno, #interestpermonth, #pay,#date {
            width:400px;
        }
        .wide1 {
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--    <form id="form1" runat="server">--%>
    <div class="col-lg-2"></div>
    <div class="col-lg-8">
    <div class="container well" id="well">
    <div>
        <asp:Label ID="lbl" CssClass="control-label" runat="server" Style="color:black;font-family:'Century Gothic';font-size:30px;"><b>Interest Collection</b></asp:Label> 
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
            <asp:Label ID="lbl1" CssClass="control-label" runat="server" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Interest Amount:</asp:Label>
            <div class="input-group">
            <asp:TextBox ID="interestamount" CssClass="form-control" runat="server" ReadOnly="true" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                 <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
</div>
        </div>
          <div  class="form-group">
            <asp:Label ID="lbl2" CssClass="control-label" runat="server" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Installment No:</asp:Label>
              <div class="input-group">
            <asp:TextBox ID="installmentno" CssClass="form-control" runat="server" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                               <span class="input-group-addon"><i class="glyphicon glyphicon-italic"></i></span>
</div>
        </div>
        <div  class="form-group">
            <asp:Label ID="lbl3" CssClass="control-label" runat="server" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Interest Amount Per Month:</asp:Label>
            <div class="input-group">
            <asp:TextBox ID="interestpermonth" CssClass="form-control" runat="server" ReadOnly="true" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                 <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
</div>
        </div>
        <div  class="form-group">
            <asp:Label ID="lbl4" CssClass="control-label" runat="server" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Pay:</asp:Label>
            <div class="input-group">
            <asp:TextBox ID="pay" CssClass="form-control" runat="server" ReadOnly="true" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                 <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
</div>
        </div>
                <div class="form-group">
            <asp:Label ID="Label1" CssClass="control-label" runat="server" style="font-family:'Century Gothic';font-size:18px;font-weight:bold;">Date:</asp:Label>
                    <div class="input-group">
            <asp:TextBox ID="date" CssClass="form-control" runat="server" Textmode="Date" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                     <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
</div>
        </div>
        <div >
        <asp:Button ID="btn" runat="server" Text="Save" Cssclass="btn btn-primary" Style="padding:5px;margin-left:150px;width:80px;font-family:'Century Gothic';font-size:14px;" OnClick="btn_Click" />
        </div><br />
                <div>
        <asp:Button ID="cancel" runat="server" Text="Cancel" Cssclass="btn btn-primary" Style="padding:5px;margin-left:150px;width:80px;font-family:'Century Gothic';font-size:14px;" Onclick="cancel_Click" />
        </div>
        <%--<div>
        <asp:Button ID="Back" runat="server" Text="Back" Style="background-color:green;color:white;padding:5px;margin-left:150px;width:80px;" OnClick="Back_Click" />
        </div>--%>
        <div style="margin-top:2%;">
           <asp:GridView ID="gv" runat="server" AutoGenerateColumns="false" style="text-align:center;font-family:'Century Gothic';" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="DarkBlue" HeaderStyle-BorderWidth="3" HeaderStyle-Font-Size="13" HeaderStyle-HorizontalAlign="Center" CellPadding="10" CellSpacing="10" Width="400px">
                           <Columns>
                               <asp:BoundField Datafield="sno" headertext="S No"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
                               <asp:BoundField Datafield="amountpaid" headertext="Amount Paid" DataFormatString="{0:0.00}"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
                               <asp:BoundField Datafield="date" headertext="Payment Date"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
                           </Columns>
                       </asp:GridView>                 
        </div>
        </div>
        </div>
      <div class="col-lg-2"></div>
<%--    </form>--%>
</asp:Content>



