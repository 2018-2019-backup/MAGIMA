<%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" CodeBehind="duereport.aspx.cs" EnableEventValidation="false" Inherits="FinanceApplication.duereport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style>

        /*h3 {
          font-size:35px;
          color:black;
        }*/
        h2 {
            /*color:royalblue;*/
            /*color:#0026ca;*/
            font-family:'Century Gothic';
            color:black;
        }
           body {
                overflow-x:hidden           
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
<%--    <form id="form1" runat="server" style="margin-bottom:5%">--%>
        <div class="row" style="margin-bottom:5%">
    <div class="col-lg-1"></div>
    <div class="col-lg-9">
        <h2><b>Due Report</b></h2>
        <div class="well">
        <asp:Button ID="excel" Text="excel" runat="server" OnClick="excel_Click" style="margin:10px;" CssClass=" btn btn-primary pull-right" />
        <asp:Button ID="print" Text="Print" runat="server" OnClientClick="val()" style="margin:10px;" CssClass=" btn btn-primary pull-right" />

   <%-- <div class="container">--%>                  
                    <%--<h3>Search Loan</h3>--%>
                    <div class="form-group" style="margin-top:5%;">          
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
                        <div>
                            <asp:Label ID="type1" runat="server"></asp:Label>
                            <asp:RadioButtonList ID="type" runat="server">
                                <asp:ListItem Value="1">Interest</asp:ListItem>
                                <asp:ListItem Value="2">EMI</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
            <div style="text-align:center;">
             <asp:Button runat="server" CssClass="btn btn-primary"  style="font-family:'Century Gothic';font-size:14px;margin-left:15px;" ID="search" OnClick="search_Click" Text="Search" />
         <asp:Button runat="server" CssClass="btn btn-primary" style="font-family:'Century Gothic';font-size:14px;margin:10px;"  ID="Button2" OnClick="Button2_Click" Text="Cancel" />
                </div>
                        </div>
        </div>

                
        <div class="col-lg-2"></div>
            </div> 
                   <%-- </div> --%>
          <div style="margin-top:2.5%;margin-left:2.5%;">  
        <asp:GridView ID="gv1"  runat="server" AutoGenerateColumns="false" style="text-align:center;font-family:'Century Gothic';" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="DarkBlue" Width="1200px" HeaderStyle-BorderWidth="3" HeaderStyle-Font-Size="12" HeaderStyle-HorizontalAlign="Center" CellPadding="10" CellSpacing="10">
            <Columns>
                <asp:BoundField DataField="customerid" HeaderText="S No" ><HeaderStyle CssClass="wide1" /></asp:BoundField> 
                <asp:BoundField DataField="createddate" HeaderText="Loan Created Date" ><HeaderStyle CssClass="wide1" /></asp:BoundField> 
                <asp:BoundField DataField="ID1" HeaderText="Customer ID"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
                
                <asp:BoundField DataField="loanid" HeaderText="Loan ID"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
                <asp:BoundField DataField="principalamount" HeaderText="Principal Amount"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
                <asp:BoundField DataField="interest" HeaderText="Interest"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
                <%--<asp:BoundField DataField="months" HeaderText="Months"><HeaderStyle CssClass="wide1" /></asp:BoundField> --%>
                <asp:BoundField DataField="loantype" HeaderText="Loan Type"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
                <asp:BoundField DataField="totalamount" HeaderText="Total Amount" DataFormatString="{0:0.00}"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
                <asp:BoundField DataField="totalinterest" HeaderText="Total Interest" DataFormatString="{0:0.00}"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
                 <asp:BoundField DataField="pay" HeaderText="Pending Amount" DataFormatString="{0:0.00}"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
               <%-- <asp:BoundField DataField="customerid" HeaderText="customerid" />
                <asp:BoundField DataField="loan" HeaderText="loan" />
                <asp:BoundField DataField="sno" HeaderText="sno" />--%>
<%--             <asp:Templatefield>
                 <ItemTemplate>
                     <asp:Button ID="interestloanreport" runat="server" Text="select" Onclick="interestloanreport_Click"/>
                 </ItemTemplate>
            </asp:Templatefield> --%>    
            </Columns>
        </asp:GridView>
              </div>
        <br />
      
        <div style="margin-left:2.5%;">
       <asp:GridView ID="gv4" runat="server" AutoGenerateColumns="false" style="text-align:center;font-family:'Century Gothic';" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="DarkBlue" Width="1250px" HeaderStyle-BorderWidth="3" HeaderStyle-Font-Size="12" HeaderStyle-HorizontalAlign="Center" CellPadding="10" CellSpacing="10">
            <Columns>
                 <asp:BoundField DataField="customerid1" HeaderText="S No" ><HeaderStyle CssClass="wide1" /></asp:BoundField> 
                 <asp:BoundField DataField="createdate" HeaderText="Loan Created Date"><HeaderStyle CssClass="wide1" /></asp:BoundField>  
                <asp:BoundField DataField="ID1" HeaderText="Customer ID"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
               
                <asp:BoundField DataField="loanid1" HeaderText="Loan ID"><HeaderStyle CssClass="wide1" /></asp:BoundField>  
                <asp:BoundField DataField="principalamount1" HeaderText="Principal Amount"><HeaderStyle CssClass="wide1" /></asp:BoundField>  
                <asp:BoundField DataField="interest" HeaderText="Interest"><HeaderStyle CssClass="wide1" /></asp:BoundField>  
                <asp:BoundField DataField="months" HeaderText="Months"><HeaderStyle CssClass="wide1" /></asp:BoundField>  
                <asp:BoundField DataField="loantype1" HeaderText="Loan Type"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
                <asp:BoundField DataField="totalamount" HeaderText="Total Amount" DataFormatString="{0:0.00}"><HeaderStyle CssClass="wide1" /></asp:BoundField>  
                <asp:BoundField DataField="totalinterest" HeaderText="Total Interest" DataFormatString="{0:0.00}"><HeaderStyle CssClass="wide1" /></asp:BoundField>  
                <asp:BoundField DataField="Emi" HeaderText="EMI" DataFormatString="{0:0.00}"><HeaderStyle CssClass="wide1" /></asp:BoundField>  
                <asp:BoundField DataField="pay" HeaderText="Pending Amount" DataFormatString="{0:0.00}"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
                         <%--<asp:Templatefield>
                 <ItemTemplate>
                     <asp:Button ID="emiloanreport" runat="server" Text="select" OnClick="emiloanreport_Click"/>
                 </ItemTemplate>
            </asp:Templatefield>--%>
         </Columns>
        </asp:GridView>
        </div>
        <br />
      


       
<%--        </form>--%>
</asp:Content>
