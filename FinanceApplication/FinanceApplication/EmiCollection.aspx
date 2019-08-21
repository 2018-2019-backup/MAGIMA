<%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="EmiCollection.aspx.cs" Inherits="FinanceApplication.loancollection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .wide1 {
            text-align:center;
        }
        body {
            overflow-x:hidden;
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
                    <h2 style="font-family:'Century Gothic';color:black;"><b>EMI Loan Details</b></h2>
                    <div class="form-group">
                        <asp:Label ID="lb" runat="server"  CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Loan ID:</b></asp:Label>
      <div class="input-group">          
                        <asp:textbox ID="llnum" runat="server" CssClass="form-control" ReadOnly="true" style="font-family:'Century Gothic';font-size:16px;"></asp:textbox>
                                   <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Loan Type:</b></asp:Label>
            <div class="input-group">               
                        <asp:textbox ID="ttype" runat="server" CssClass="form-control" ReadOnly="true" style="font-family:'Century Gothic';font-size:16px;"></asp:textbox>
                                         <span class="input-group-addon">T</span>
</div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Principal Amount:</b></asp:Label>
 <div class="input-group">                     
                        <asp:textbox ID="ppamount" runat="server" CssClass="form-control" ReadOnly="true" style="font-family:'Century Gothic';font-size:16px;"></asp:textbox>
                                                                 <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
</div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>EMI Amount:</b></asp:Label>
 <div class="input-group">                         
                        <asp:textbox ID="eeamount" runat="server" CssClass="form-control" ReadOnly="true" style="font-family:'Century Gothic';font-size:16px;"></asp:textbox>
                                       <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
</div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>EMI Tenure:</b></asp:Label>
    <div class="input-group">                    
                        <asp:textbox ID="eemiten" runat="server" CssClass="form-control" ReadOnly="true" style="font-family:'Century Gothic';font-size:16px;"></asp:textbox>
                       <span class="input-group-addon">M</span>     
</div>
                    </div>
                                              <div class="form-group">
                        <asp:Label ID="Label6" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Loan Created Date:</b></asp:Label>
     <div class="input-group">                         
                                                  <asp:textbox ID="ddat" runat="server" CssClass="form-control" ReadOnly="true" style="font-family:'Century Gothic';font-size:16px;"></asp:textbox>
                                                                      <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
</div>
                           </div>
                       <asp:Button ID="view" runat="server" CssClass="btn btn-primary" Text="View" onclick="view_Click" style="margin-left:35%;font-family:'Century Gothic';font-size:14px;"/>
                       <asp:Button ID="cancel" runat="server" CssClass="btn btn-primary" Text="Back" onclick="cancel_Click" style="margin:10px;font-family:'Century Gothic';font-size:14px;" />
                       <asp:GridView ID="gv" runat="server" AutoGenerateColumns="false" HeaderStyle-HorizontalAlign="Center" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="DarkBlue" HeaderStyle-BorderWidth="3" HeaderStyle-Font-Size="12"  CellPadding="10" CellSpacing="10" Width="500px" style="margin:20px;margin-left:10%;text-align:center;font-family:'Century Gothic';">
                           <Columns>
                               <asp:BoundField DataField="sno" HeaderText="ID"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
                               <asp:BoundField DataField="CustID" HeaderText="Customer ID"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
                               
                               <asp:BoundField DataField="payamount" HeaderText="Amount" DataFormatString="{0:0.00}"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
                               <asp:BoundField DataField="date" HeaderText="Date"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
                               <asp:TemplateField HeaderText="paid">
                                   <HeaderStyle CssClass="wide1" />
                                   <ItemTemplate>
                                       <asp:Button ID="paid" Text="Paid" CssClass="btn btn-primary" style="font-family:'Century Gothic';width:100%;font-size:14px;"  runat="server" OnClick="paid_Click" /> 
                                   </ItemTemplate>
                               </asp:TemplateField>
                           </Columns>

                       </asp:GridView>
                </div>   
                <div class="col-lg-2"></div>
                </div>
            </div> 
        <%-- </div>--%>
<%--        </form>--%>
</asp:Content>
