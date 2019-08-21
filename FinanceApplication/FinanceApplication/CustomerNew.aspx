<%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" CodeBehind="CustomerNew.aspx.cs" Inherits="FinanceApplication.CustomerNew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            /*background-image:url(http://www.lusapme.pt/wp-content/uploads/2015/01/finance-wallpaper-financial-gold-sheet-calculator-picture-hd-420853-c%C3%B3pia.png);
            background-repeat:no-repeat;   
            background-image:url(https://dozzi.com.au/wp-content/uploads/2017/12/dozzi-independent_1920px.jpg);*/  
            overflow-x:hidden     
        }
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
        margin-top:20px;
}
h3 {
            /*font-family:Lucida Handwriting;*/
            font-family:'Century Gothic';
           
            /*font-size:30px;*/
            color:black;
           /*color:#0026ca;*/
       }
    </style>
    <script>
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#blah')
                        .attr('src', e.target.result)
                        .width(150)
                        .height(200);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }

        ScriptManager.RegisterStartupScript(this, this.GetType(),
"alert",
"alert('User details saved sucessfully');window.location ='Dashboard.aspx';",
true);
        </script>  
<%--     <script>
        function val() {
            
            if (document.getElementById('<%= cname.ClientID%>').value == "") {
                alert("Enter The Customer Name");
                return false;
            }
            if (document.getElementById('<%= fname.ClientID%>').value == "") {
                alert("Enter The Father's Name");
                return false;
            }
            if (document.getElementById('<%= dob.ClientID%>').value == "") {
                alert("Choose The Date of Birth");
                return false;
            }
          
            var rb = document.getElementById("<%=gender.ClientID%>");
            var radio = rb.getElementsByTagName("input");
            var isChecked = false;
            for (var i = 0; i < radio.length; i++) {
                if (radio[i].checked) {
                    isChecked = true;
                    break;
                }
            }
            if (!isChecked) {
                alert("Choose The Gender");
                return false;
            }

            if (document.getElementById('<%= occupation.ClientID%>').value == "") {
                alert("Enter The Occupation");
                return false;
            }
            if (document.getElementById('<%= mnumber.ClientID%>').value == "") {
                alert("Enter The Mobile Number");
                return false;
            }
            if (isNaN(document.getElementById('<%= mnumber.ClientID%>').value)) {
                alert("Enter the valid Mobile Number");
                return false;
            }
            if (document.getElementById('<%= mnumber.ClientID%>').value.length != 10) {
                alert("Enter 10 digits");
                return false;
            }
            if (document.getElementById('<%= lnumber.ClientID%>').value == "") {
                alert("Enter The LandLine Number");
                return false;
            }
            if (isNaN(document.getElementById('<%= lnumber.ClientID%>').value)) {
                alert("Enter the valid LandLine Number");
                return false;
            }
            if (document.getElementById('<%= proof.ClientID%>').selectedIndex == 0) {
                alert("Choose the ID Proof");
                return false;
            }
            if (document.getElementById('<%= idnum.ClientID%>').value == "") {
                alert("Enter The Id Number");
                return false;
            }
            if (document.getElementById('<%= address.ClientID%>').value == "") {
                alert("Enter The Address");
                return false;
            }
            if (document.getElementById('<%= city.ClientID%>').value == "") {
                alert("Enter The City");
                return false;
            }
            if (document.getElementById('<%= Reference.ClientID%>').value == "") {
                alert("Enter the Reference");
                return false;
            }
            if (document.getElementById('<%=refrelation .ClientID%>').value == "") {
                alert("Enter The Reference Relationship");
                return false;
            }
            if (image == "") {
                alert("choose The photo");
                return false;
            }
            
        }
  </script>--%>
    <script>
        $(document).ready(function () {
            $('button').click(function () {
                $('.alert').show()
            })
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--     <form id="form1" runat="server">--%>
     <div class="container" >
            <div class="row" style="margin-bottom:2%">
                <h2><b>New Customer</b></h2>
                <div class="col-lg-4" id="left" >
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
                        <asp:TextBox ID="dob" runat="server" CssClass="form-control" TextMode="Date" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
  </div> 
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Gender</b></asp:Label>
                        <asp:RadioButtonList  ID="gender" Style="color:black;font-family:'Century Gothic';font-size:16px;" runat="server">
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
                        <asp:Label ID="Label5" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Mobile Number</b></asp:Label>
                         <div class="input-group">
                        <asp:TextBox ID="mnumber" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                         <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
  </div> 
                    </div>
                                        <div class="form-group">
                        <asp:Label ID="Label13" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Alternative Mobile Number</b></asp:Label>
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
                        <asp:Label ID="Label7" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Address Proof</b></asp:Label>
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
                        <asp:Label ID="Label8" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Proof Number</b></asp:Label>
                         <div class="input-group">
                        <asp:TextBox ID="idnum" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                        <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
  </div> 
                    </div>
                </div>

                <div class="col-lg-4" id="right" >
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
                        <asp:Button ID="btn" Text="Submit" runat="server" OnClick="btn_Click" style="font-family:'Century Gothic';font-size:14px;" CssClass="btn btn-primary"/>
                        
                        <asp:Button ID="Button1" Text="Cancel" runat="server" OnClick="Button1_Click" style="font-family:'Century Gothic';font-size:14px;" CssClass=" btn btn-primary" />
                        
                    </div>  
<%--                    <asp:Label ID="lbls" runat="server"></asp:Label>--%>
                </div>

                <div class="col-lg-4 well"id="img">
                    <div class="form-group" style="font-family:'Century Gothic'";>
                        <asp:Label ID="lbl" runat="server">Image</asp:Label>
                         <asp:FileUpload runat="server" ID="image" onchange="readURL(this);" />
                         <img id="blah" src="#" />
                    </div>

                </div>
            </div>
        </div>
<%--    </form>--%>

        
</asp:Content>
