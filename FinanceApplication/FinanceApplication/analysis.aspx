<%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" CodeBehind="analysis.aspx.cs" Inherits="FinanceApplication.analysis" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
.wide1{
    text-align:center;
    }
</style>  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div class="row" style="margin-bottom:3%;">
<%--            <form id="form1" runat="server" >--%>
                <div class="col-lg-0"></div>
                <div class="col-lg-12">
<%--                    <asp:Button ID="print" Text="Print" runat="server" OnClientClick="val()" CssClass=" btn btn-success" />--%>
                <asp:Button ID="excel" Text="excel" runat="server" OnClick="excel_Click" style="font-family:'Century Gothic';font-size:14px;" CssClass=" btn btn-primary" />
                    <div>
                    <h2 style="color:black;font-family:'Century Gothic';"><b>Interest Analysis</b></h2>

    <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="false" style="text-align:center;font-family:'Century Gothic';" Width="3500px" HeaderStyle-BackColor="DarkBlue" HeaderStyle-ForeColor="White"   HeaderStyle-BorderWidth="3" HeaderStyle-Font-Size="12" HeaderStyle-HorizontalAlign="Center" CellPadding="10" CellSpacing="10">
        <Columns>
             <%--<asp:BoundField DataField="Id" HeaderText="sno" />--%>
            <asp:BoundField DataField="customerid" HeaderText="Customer ID" ><HeaderStyle CssClass="wide1"  /></asp:BoundField>      
            <asp:BoundField DataField="CustomerName" HeaderText="Customer Name"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="FathersName" HeaderText="Father's Name"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="Dob" HeaderText="Date Of Birth"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="Sex" HeaderText="Sex"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="Occupation" HeaderText="Occupation"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="MobileNumber" HeaderText="Mobile Number"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="alternativemobilenumber" HeaderText="Alternative Mobile Number"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="LandLineNumber" HeaderText="LandLine Number"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="IdProof" HeaderText="ID Proof"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="IdNumber" HeaderText="ID Number"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="Address" HeaderText="Address"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="City" HeaderText="City"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="Reference" HeaderText="Reference"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="ReferenceRelationship" HeaderText="Reference Relationship"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
             <asp:BoundField DataField="loanid" HeaderText="loan ID"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="createddate" HeaderText="Loan Created Date"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="loantype" HeaderText="Loan Type"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="principalamount" HeaderText="Principal Amount" DataFormatString="{0:0.00}"> <HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="interest" HeaderText="Interest"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <%--<asp:BoundField DataField="months" HeaderText="Months"><HeaderStyle CssClass="wide1" /></asp:BoundField> --%>       
            <asp:BoundField DataField="totalamount" HeaderText="Total Amount" DataFormatString="{0:0.00}"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="totalinterest" HeaderText="Total Interest" DataFormatString="{0:0.00}"><HeaderStyle CssClass="wide1" /></asp:BoundField>       
            <asp:BoundField DataField="sno" HeaderText="Installment"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="date" HeaderText="Installment Date"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="amountpaid" HeaderText="Amount Paid" DataFormatString="{0:0.00}"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            
            
        </Columns>
    </asp:GridView>
</div>
        <br />
                    <div>
                        <h2 style="color:black;font-family:'Century Gothic';"><b>Emi Analysis</b></h2>

         <asp:GridView ID="gv2" runat="server" AutoGenerateColumns="false" style="text-align:center;font-family:'Century Gothic';" Width="3500px" HeaderStyle-BackColor="DarkBlue" HeaderStyle-ForeColor="White" HeaderStyle-HorizontalAlign="Center" HeaderStyle-BorderWidth="3" HeaderStyle-Font-Size="12" CellPadding="10" CellSpacing="10">
        <Columns>
             <%--<asp:BoundField DataField="Id" HeaderText="sno" />--%>
            <asp:BoundField DataField="customerid" HeaderText="Customer ID" ><HeaderStyle CssClass="wide1" /></asp:BoundField>   
            <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" ><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="FathersName" HeaderText="Father's Name" ><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="Dob" HeaderText="Date Of Birth" ><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="Sex" HeaderText="Sex" ><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="Occupation" HeaderText="Occupation"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="MobileNumber" HeaderText="Mobile Number"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="alternativemobilenumber" HeaderText="Alternative Mobile Number"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="LandLineNumber" HeaderText="LandLine Number"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="IdProof" HeaderText="ID Proof"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="IdNumber" HeaderText="ID Number"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="Address" HeaderText="Address"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="City" HeaderText="City"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="Reference" HeaderText="Reference"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="ReferenceRelationship" HeaderText="Reference Relationship"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="loanid1" HeaderText="Loan ID"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="createdate" HeaderText=" Loan Create Date"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="loantype1" HeaderText="Loan Type"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="principalamount1" HeaderText="Principal Amount" DataFormatString="{0:0.00}"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="interest" HeaderText="Interest"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="months" HeaderText="Months"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="sno" HeaderText="Installment Number"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="loanamount" HeaderText="Loan Amount"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="emiamount" HeaderText="EMI Amount" DataFormatString="{0:0.00}"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="payamount" HeaderText="Pay Amount" DataFormatString="{0:0.00}"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="date" HeaderText="Installment Date"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            
            </Columns>
                </asp:GridView>
</div>

                    </div>
                    <div class="col-lg-0"></div>
<%--        </form>--%>
            </div>>
</asp:Content>
