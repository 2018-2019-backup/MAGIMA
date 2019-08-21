<%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="customerdetail.aspx.cs" Inherits="FinanceApplication.customerdetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        Label {
            padding:20px;
            
            font-family:'Century Gothic';
        }
        /*h1 {
            font-family:'Century Gothic';
            color:#0026ca;
        }*/
               h2 {
            font-family:'Century Gothic';
            /*color:#0026ca;*/
            color:black;
        }
        .wide1 {
            text-align:center;
        }
        body {
            overflow-x:hidden;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--     <form id="form1" runat="server">--%>
     <div class="container">
            <div class="row">
                <div class="col-lg-2"></div>
<%--                <div class="col-lg-8" style="background-color:white;margin-top:1%;padding:5%;">--%>
                   <div class="col-lg-8 well">
                    <%--<h1>Customer Detail</h1>--%>
                       <h2><b>Customer Detail</b></h2>
                    <div class="form-group" style="font-family:'Century Gothic'">
                        <asp:Label ID="lb" runat="server"  CssClass="control-label" style="font-size:18px;"><b>Customer Name:</b></asp:Label>
  <div class="input-group">                      
                        <asp:TextBox ID="ccname" runat="server" ReadOnly="true" CssClass="form-control" style="font-size:16px;"></asp:TextBox>
                                                     <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  </div> 
                    </div>
                    <div class="form-group" style="font-family:'Century Gothic'">
                          
                        <asp:Label ID="Label1" runat="server" CssClass="control-label" style="font-size:18px;"><b>Father's Name:</b></asp:Label>
 <div class="input-group"> 
                        <asp:TextBox ID="ffname" runat="server" ReadOnly="true" CssClass="form-control" style="font-size:16px;"></asp:TextBox>
          <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  </div>  
                    </div>
                    <div class="form-group" style="font-family:'Century Gothic'">
                        <asp:Label ID="Label2" runat="server" CssClass="control-label" style="font-size:18px;"><b>Date of Birth:</b></asp:Label>
     <div class="input-group">                   
                        <asp:TextBox ID="ddob" runat="server" ReadOnly="true" CssClass="form-control" style="font-size:16px;"></asp:TextBox>
            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
  </div>
                    </div>
                    <div class="form-group" style="font-family:'Century Gothic'">
                        <asp:Label ID="Label3" runat="server" CssClass="control-label" style="font-size:18px;" ><b>Gender:</b></asp:Label>
                         
                        <asp:TextBox ID="ggender" runat="server" ReadOnly="true" CssClass="form-control" style="font-size:16px;"></asp:TextBox>
                    </div>

                    <div class="form-group" style="font-family:'Century Gothic'">
                        <asp:Label ID="Label4" runat="server" CssClass="control-label" style="font-size:18px;"><b>Occupation:</b></asp:Label>
     <div class="input-group">                     
                        <asp:TextBox ID="ooccupation" runat="server" ReadOnly="true" CssClass="form-control" style="font-size:16px;"></asp:TextBox>
                                                 <span class="input-group-addon"><i class="glyphicon glyphicon-briefcase"></i></span>
  </div> 
                    </div>
                    <div class="form-group" style="font-family:'Century Gothic'">
                        <asp:Label ID="Label5" runat="server" CssClass="control-label" style="font-size:18px;"><b>Mobile Number:</b></asp:Label>
  <div class="input-group">                      
                        <asp:TextBox ID="mmnumber" runat="server" ReadOnly="true" CssClass="form-control" style="font-size:16px;"></asp:TextBox>
                                                 <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
  </div> 
                    </div>
                                           <div class="form-group" style="font-family:'Century Gothic'">
                        <asp:Label ID="Label13" runat="server" CssClass="control-label" style="font-size:18px;"><b>Alternative Mobile Number:</b></asp:Label>
  <div class="input-group">                      
                        <asp:TextBox ID="almnumber" runat="server" ReadOnly="true" CssClass="form-control" style="font-size:16px;"></asp:TextBox>
                                                 <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
  </div> 
                    </div>
                    <div class="form-group" style="font-family:'Century Gothic'">
                        <asp:Label ID="Label6" runat="server" CssClass="control-label" style="font-size:18px;"><b>Landline Number:</b></asp:Label>
          <div class="input-group">              
                        <asp:TextBox ID="llnumber" runat="server" ReadOnly="true" CssClass="form-control" style="font-size:16px;"></asp:TextBox>
                                              <span class="input-group-addon"><i class="glyphicon glyphicon-phone-alt"></i></span>
  </div> 
                    </div>
                    <div class="form-group" style="font-family:'Century Gothic'">
                        <asp:Label ID="Label7" runat="server" CssClass="control-label" style="font-size:18px;"><b>ID Proof:</b></asp:Label>
                         
                        <asp:TextBox ID="pproof" runat="server" ReadOnly="true" CssClass="form-control" style="font-size:16px;"></asp:TextBox>
                    </div>
                    <div class="form-group" style="font-family:'Century Gothic'">
                        <asp:Label ID="Label8" runat="server" CssClass="control-label" style="font-size:18px;"><b>Proof Number:</b></asp:Label>
   <div class="input-group">                        
                        <asp:TextBox ID="iidnum" runat="server" ReadOnly="true" CssClass="form-control" style="font-size:16px;"></asp:TextBox>
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
  </div> 
                    </div>
                    <div class="form-group" style="font-family:'Century Gothic'">
                        <asp:Label ID="Label9" runat="server" CssClass="control-label" style="font-size:18px;"><b>Address:</b></asp:Label>
                        
                        <asp:TextBox ID="aaddress" runat="server" ReadOnly="true" TextMode="multiline" Columns="50" Rows="5"  CssClass="form-control" style="font-size:16px;"></asp:TextBox>
                    </div>
                    <div class="form-group" style="font-family:'Century Gothic'">
                        <asp:Label ID="Label10" runat="server" CssClass="control-label" style="font-size:18px;"><b>City:</b></asp:Label>
        <div class="input-group">                   
                        <asp:TextBox ID="ccity" runat="server" ReadOnly="true" CssClass="form-control" style="font-size:16px;"></asp:TextBox>
                      <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
  </div>
                    </div>
                   
                        <div class="form-group" style="font-family:'Century Gothic'">
                            <asp:Label ID="Label11" runat="server" CssClass="control-label" style="font-size:18px;"><b>Reference:</b></asp:Label>
                           
                            <asp:TextBox ID="rReference" runat="server" ReadOnly="true" CssClass="form-control" style="font-size:16px;"></asp:TextBox>
                        </div>
                        <div class="form-group" style="font-family:'Century Gothic'">
                            <asp:Label ID="Label12" runat="server" CssClass="control-label" style="font-size:18px;"><b>Reference Relationship:</b></asp:Label>
                            
                            <asp:TextBox ID="rrefrelation" runat="server" ReadOnly="true" CssClass="form-control" style="font-size:16px;"></asp:TextBox>
                        </div>
             
<%--                    <div class="form-group">
                         <input type='file' onchange="readURL(this);" />
                         <img id="blah" src="#" alt="your image" />
                    </div>--%>
                <%--<h1>Loan Details</h1>--%>
                       <h2><b>Loan Details</b></h2>
                <asp:GridView ID="gv1" runat="server" style="text-align:center;font-family:'Century Gothic';" AutoGenerateColumns="false" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="DarkBlue" HeaderStyle-BorderWidth="3" HeaderStyle-Font-Size="12" CellPadding="10" CellSpacing="10" Width="550px">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="S No" ><HeaderStyle CssClass="wide1" /></asp:BoundField>       
        <asp:BoundField DataField="ID1" HeaderText="Customer ID"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
           <asp:BoundField DataField="principalamount" HeaderText="Principal Amount"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
        <asp:BoundField DataField="loantype" HeaderText="Loan Type"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
        <asp:BoundField DataField="loanid" HeaderText="Loan ID"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
        <asp:TemplateField HeaderText="Select">
            <HeaderStyle CssClass="wide1" />
            <ItemTemplate>
                <asp:Button runat="server" ID="interest" cssclass="btn btn-primary" style="font-family:'Century Gothic';width:100%;font-size:14px;" Onclick="interest_Click" Text="Select"></asp:Button>
            </ItemTemplate>
        </asp:TemplateField>
            </Columns>
</asp:GridView>
                       <br />
                    <asp:GridView ID="gv2" runat="server" style="text-align:center;font-family:'Century Gothic';" AutoGenerateColumns="false"  HeaderStyle-ForeColor="white" HeaderStyle-BackColor="DarkBlue" HeaderStyle-BorderWidth="3" HeaderStyle-Font-Size="12" CellPadding="10" CellSpacing="10" Width="550px">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="S No" ><HeaderStyle CssClass="wide1" /></asp:BoundField>       
         <asp:BoundField DataField="ID1" HeaderText="Customer ID"><HeaderStyle CssClass="wide1" /></asp:BoundField>
                   <asp:BoundField DataField="principalamount1" HeaderText="Principal Amount" ><HeaderStyle CssClass="wide1" /></asp:BoundField>
        <asp:BoundField DataField="loantype1" HeaderText="Loan Type" ><HeaderStyle CssClass="wide1" /></asp:BoundField>
        <asp:BoundField DataField="loanid1" HeaderText="Loan ID" ><HeaderStyle CssClass="wide1" /></asp:BoundField>
        <asp:TemplateField HeaderText="Select">
            <HeaderStyle CssClass="wide1" />
            <ItemTemplate>
                <asp:Button runat="server" ID="emi" cssclass="btn btn-primary" style="font-family:'Century Gothic';width:100%;font-size:14px;" OnClick="emi_Click" Text="Select"></asp:Button>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
                <div>
                    <asp:Button ID="edit" runat="server" Text="Edit" OnClick="edit_Click" CssClass="btn btn-primary" style="margin:20px;font-family:'Century Gothic';font-size:14px;" /> 
                    <asp:Button ID="delete" runat="server" Text="Delete" Onclick="delete_Click" CssClass="btn btn-primary" style="margin:20px;font-family:'Century Gothic';font-size:14px;"/> 
                    <asp:Button ID="Loan" runat="server" Text="New Loan" Onclick="Loan_Click" CssClass= "btn btn-primary" style="margin:20px;font-family:'Century Gothic';font-size:14px;"/> 
                    <asp:Button ID="cancel" runat="server" Text="Cancel" Onclick="cancel_Click" CssClass= "btn btn-primary" style="margin:20px;font-family:'Century Gothic';font-size:14px;"/>              
                </div>

                       </div>
       <div class="col-lg-2"></div>
                 
                </div>
</div>
<%--    </form>--%>

</asp:Content>