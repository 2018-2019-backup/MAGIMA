<%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" CodeBehind="customer.aspx.cs" Inherits="FinanceApplication.customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
     #left {
     color:black;
      font-size:15px;
       font-weight:bold;
       /*color:#1a237e*/
 }
#right {
   color:black; 
   font-size:15px;
   font-weight:bold;
   /*color:#1a237e*/
}
 #well {
    /*background-color: royalblue;*/
    color:black;
}
#img {
    /*background-color:royalblue;*/
    font-size:15px;
    font-weight:bold;
        color:black;
}
            body {
                overflow-x:hidden;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <form id="form1" runat="server">--%>
     <div class="container">
            <div class="row">
                <div class="col-lg-4" id="left">
                    <div class="form-group">
                        <asp:Label ID="lb" runat="server"  CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Customer Name</b></asp:Label>
                        <div class="input-group">
                        <asp:TextBox ID="cname" runat="server" ClientIDMode="Static" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        </div>
                        </div>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Father's Name</b></asp:Label>
                        <div class="input-group">
                        <asp:TextBox ID="fname" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    </div>
                        </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Date of Birth</b></asp:Label>
                       <div class="input-group">
                         <asp:TextBox ID="dob" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                       </div>
                        </div>
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Gender</b></asp:Label>
                        <asp:RadioButtonList ID="gender" Style="color:black;font-family:'Century Gothic';font-size:18px;" runat="server" >
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Occupation</b></asp:Label>
                       <div class="input-group">
                         <asp:TextBox ID="occupation" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                   <span class="input-group-addon"><i class="glyphicon glyphicon-briefcase"></i></span>
                         </div>
                        </div>
                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;">Mobile Number</asp:Label>
                       <div class="input-group">
                         <asp:TextBox ID="mnumber" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                        <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
                    </div>
                        </div>
                       <div class="form-group">
                        <asp:Label ID="Label13" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;">Alternative Mobile Number</asp:Label>
                       <div class="input-group">
                         <asp:TextBox ID="almnumber" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                        <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
                    </div>
                        </div>
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Landline Number</b></asp:Label>
                       <div class="input-group">
                         <asp:TextBox ID="lnumber" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                        <span class="input-group-addon"><i class="glyphicon glyphicon-phone-alt"></i></span>
                         </div>
                        </div>
                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Id Proof</b></asp:Label>
                        <asp:DropDownList ID="proof" runat="server" style="font-family:'Century Gothic';font-size:16px;">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Passport</asp:ListItem>
                            <asp:ListItem>voter Id</asp:ListItem>
<%--                            <asp:ListItem>Pan card</asp:ListItem>--%>
                            <asp:ListItem>Aadhaar</asp:ListItem>
                            <asp:ListItem>Pass Book</asp:ListItem>
                            <asp:ListItem>Driving License </asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label8" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Id Number</b></asp:Label>
                        <div class="input-group">
                        <asp:TextBox ID="idnum" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                        <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
                    </div>
                        </div>
                </div>

                <div class="col-lg-4" id="right">
                    <div class="form-group">
                        <asp:Label ID="Label9" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Address</b></asp:Label>
                        <asp:TextBox ID="address" TextMode="multiline" Columns="50" Rows="5" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label10" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>City</b></asp:Label>
                        <div class="input-group">
                        <asp:TextBox ID="city" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                        </div>
                        </div>
                    <div class="well well-lg" id="well">
                        <div class="form-group">
                            <asp:Label ID="Label11" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Reference</b></asp:Label>
                            <asp:TextBox ID="Reference" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label12" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Reference Relationship</b></asp:Label>
                            <asp:TextBox ID="refrelation" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                        </div>
                    </div>
                    <div style="text-align: center;margin:5%;">
                        <asp:Button ID="btn" Text="submit" runat="server" onClick="btn_Click" CssClass="btn btn-primary" style="font-family:'Century Gothic';font-size:14px;"/>
                        <asp:Button ID="Button1" Text="Cancel" runat="server" OnClick="Button1_Click1" CssClass=" btn btn-primary" style="font-family:'Century Gothic';font-size:14px;" />
                    </div>
                   
                  
                   
                </div>

                <%--<div class="col-lg-4 well" id="img">
                    <div class="form-group">
                         <input type='file' id="ig"onchange="readURL(this);" />
                         <img id="blah" src="#" alt="your image" />
                    </div>

                </div>--%>
                <div class="col-lg-4 well"id="img">
                    <div class="form-group">
                        <asp:Label ID="lbl" runat="server">Image</asp:Label>
                         <asp:FileUpload runat="server" ID="image" onchange="readURL(this);" />
                         <img id="blah" src="#" />
                    </div>

                </div>
            </div>
        </div>
   <%-- </form>--%>


</asp:Content>
