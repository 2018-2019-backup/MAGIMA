<%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" CodeBehind="CustomerReport.aspx.cs" EnableEventValidation="false" Inherits="FinanceApplication.CustomerReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style>
           h2 {
               /*color:royalblue;*/
               /*color:#0026ca;*/
               color:black;
               font-family:'Century Gothic';
               
           }
           body {
           overflow-x:hidden;
           /*background-image:url(https://c.pxhere.com/photos/ea/b1/air_art_color_colorful_colourful_flight_illustration_kite-985668.jpg!d);
           background-repeat:no-repeat;
           background-size:cover;*/
           }
          .wide1 {
               text-align:center;
           }
       </style>                           
 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="margin-bottom:5%">
    <div class="col-md-3"></div>
    <div class="col-md-6">
        <h2><b>Customer Report</b></h2>
     
<%--<form id="form1" runat="server">--%>
   
    <asp:GridView ID="customergrid" runat="server" AutoGenerateColumns="false" style="text-align:center;font-family:'Century Gothic';" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="DarkBlue" Width="700px" HeaderStyle-BorderWidth="3" HeaderStyle-Font-Size="12" HeaderStyle-HorizontalAlign="Center" CellPadding="10" CellSpacing="10">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="S No"><HeaderStyle CssClass="wide1" /></asp:BoundField>  
            
            <asp:BoundField DataField="customerid" HeaderText="Customer ID"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="CustomerName" HeaderText="Customer Name"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="Dob" HeaderText="Date Of Birth"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:BoundField DataField="MobileNumber" HeaderText="Mobile Number"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
            <asp:TemplateField HeaderText="Select">
                <HeaderStyle CssClass="wide1" /> 
                <ItemTemplate>
                    <asp:Button ID="reportbtn" runat="server" Text="Select" style="font-family:'Century Gothic';width:100%;font-size:14px;" CssClass="btn btn-primary" OnClick="reportbtn_Click" />
                   
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
                    
                      

<%--</form>--%>
           </div> 
    <div class="col-md-3"></div>
    </div>
</asp:Content>
