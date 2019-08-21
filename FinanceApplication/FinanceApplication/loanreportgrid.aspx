 <%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" CodeBehind="loanreportgrid.aspx.cs" EnableEventValidation="false" Inherits="FinanceApplication.loanreportgrid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            overflow-x:hidden;
        }
        .wide1 {
            text-align:center;
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
        <div class="row" style="margin-bottom:3%;">
            <div class="col-lg-0"></div>
            <div class="col-lg-12" style="margin-left:3%;">
                <div>
                 <asp:Button ID="print" Text="Print" runat="server" OnClientClick="val()" style="margin-right:10%;font-family:'Century Gothic';font-size:14px;"  CssClass=" btn btn-primary pull-right " />
                      <asp:Button ID="excel" Text="excel" runat="server"  OnClick="excel_Click" style="font-family:'Century Gothic';font-size:14px;margin-right:15px;" CssClass=" btn btn-primary pull-right" />
                <h2 style="color:black;font-family:'Century Gothic';"><b>Interest Loan Report</b></h2>
                
         <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="false" style="text-align:center;font-family:'Century Gothic';" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="DarkBlue" Width="1200px" HeaderStyle-BorderWidth="3" HeaderStyle-Font-Size="12" HeaderStyle-HorizontalAlign="Center">
             <Columns>
                <asp:BoundField DataField="createddate" HeaderText="Loan Created Date"><HeaderStyle CssClass="wide1" /></asp:BoundField>
                <asp:BoundField DataField="ID1" HeaderText="Customer ID" ><HeaderStyle CssClass="wide1" /></asp:BoundField>
               <%-- <asp:BoundField DataField="customerid" HeaderText="CustomerId" />--%>
                <asp:BoundField DataField="loanid" HeaderText="Loan ID" ><HeaderStyle CssClass="wide1" /></asp:BoundField>
                <asp:BoundField DataField="principalamount" HeaderText="Principal Amount" ><HeaderStyle CssClass="wide1" /></asp:BoundField>
                <asp:BoundField DataField="interest" HeaderText="Interest"><HeaderStyle CssClass="wide1" /></asp:BoundField>
                <%--<asp:BoundField DataField="months" HeaderText="Months"><HeaderStyle CssClass="wide1" /></asp:BoundField>--%>
                <asp:BoundField DataField="loantype" HeaderText="Loan Type"><HeaderStyle CssClass="wide1" /></asp:BoundField>
                <asp:BoundField DataField="totalamount" DataFormatString="{0:0.00}" HeaderText="Total Amount"><HeaderStyle CssClass="wide1" /></asp:BoundField>
                <asp:BoundField DataField="totalinterest" DataFormatString="{0:0.00}" HeaderText="Total Interest"><HeaderStyle CssClass="wide1" /></asp:BoundField>
           <%--  <asp:Templatefield HeaderText="Select">
                 <HeaderStyle CssClass="wide1" />
                 <ItemTemplate>
                     <asp:Button ID="interestloanreport" runat="server" Text="select" style="font-family:'Century Gothic';width:100%;font-size:14px;" class="btn btn-primary" Onclick="interestloanreport_Click"/>
                 </ItemTemplate>
            </asp:Templatefield>     --%>
            </Columns>
        </asp:GridView>
</div>
                <div>
                <h2 style="color:black;font-family:'Century Gothic';"><b>Emi Loan Report</b></h2>
                

        <asp:GridView ID="gv2" runat="server" AutoGenerateColumns="false" style="text-align:center;font-family:'Century Gothic';" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="DarkBlue" Width="1200px" HeaderStyle-BorderWidth="3" HeaderStyle-Font-Size="12" HeaderStyle-HorizontalAlign="Center" >
            <Columns>
              
                <asp:BoundField DataField="createdate" HeaderText="Loan Created Date"><HeaderStyle CssClass="wide1" /></asp:BoundField>
                <asp:BoundField DataField="ID1" HeaderText="Customer ID"><HeaderStyle CssClass="wide1" /></asp:BoundField>
                <asp:BoundField DataField="loanid1" HeaderText="Loan ID"><HeaderStyle CssClass="wide1" /></asp:BoundField>
                <asp:BoundField DataField="principalamount1" HeaderText="Principal Amount"><HeaderStyle CssClass="wide1" /></asp:BoundField>
                <asp:BoundField DataField="interest" HeaderText="Interest"><HeaderStyle CssClass="wide1" /></asp:BoundField>
                <asp:BoundField DataField="months" HeaderText="Months"><HeaderStyle CssClass="wide1" /></asp:BoundField>
                <asp:BoundField DataField="loantype1" HeaderText="Loan Type"><HeaderStyle CssClass="wide1" /></asp:BoundField>
                <asp:BoundField DataField="totalamount" HeaderText="Total Amount" DataFormatString="{0:0.00}"><HeaderStyle CssClass="wide1" /></asp:BoundField>
                <asp:BoundField DataField="totalinterest" HeaderText="Total Interest" DataFormatString="{0:0.00}"><HeaderStyle CssClass="wide1" /></asp:BoundField>
                <asp:BoundField DataField="Emi"  DataFormatString="{0:0.00}" HeaderText="EMI"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <%--  <asp:Templatefield HeaderText="Select">
                  <HeaderStyle CssClass="wide1" />
                 <ItemTemplate>
                     <asp:Button ID="emiloanreport" runat="server" Text="select" style="font-family:'Century Gothic';width:100%;font-size:14px;" class="btn btn-primary" OnClick="emiloanreport_Click"/>
                 </ItemTemplate>
            </asp:Templatefield> --%>
            </Columns>
        </asp:GridView>
                    </div>
            </div>
            <div class="col-lg-0"></div>

            </div>












<%--    </form>--%>
</asp:Content>
