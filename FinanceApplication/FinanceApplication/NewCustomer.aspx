<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewCustomer.aspx.cs" Inherits="FinanceApplication.NewCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>

@import url(https://fonts.googleapis.com/css?family=Raleway);
  body {
    font-family: "Lato", sans-serif;
    background-color: #e0e0e0;
  }
nav {
  padding: 5px;
  text-align: center;
  font-family: Raleway;
  box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.5);
}
#nav1 {
  background: #9061e2;
}
#navs{
  color: #27057f;
  font-weight: bold;
}
  #finance{
      font-size: 40px;
      color: black;
      font-family: 'Kaushan Script', cursive;
    }
   #drop,#A1,#navs,#A2 {
  transition: 0.3s ease;
  background: #9061e2;
  font-size: 20px;
  text-decoration: none;
  padding: 20px 0;
  margin: 0 20px;
   color: black;
    font-weight: bold;
}
 #drop:hover,#A1:hover,#navs:hover,#A2:hover {
  padding: 6px 0; 
}
#drop{
  font-size: 20px;
  color: #27057f;
  font-weight: bold;
}
</style>

</head>

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

    function val() {
        var name = document.getElementById("cname").value;
        var father = document.getElementById("fname").value;
        var date = document.getElementById("dob").value;

        var sex = document.getElementById("gender").value;
        var occupation = document.getElementById("occupation").value;
        var phonenumber = document.getElementById("mnumber").value;
        var landline = document.getElementById("lnumber").value;
        var drop = document.getElementById("proof").selectedIndex;
        var idNumber = document.getElementById("idnum").value;
        var address = document.getElementById("TextArea1").value;
        var city = document.getElementById("city").value;
        var Reference = document.getElementById("Reference").value;
        var ref = document.getElementById("refrelation").value;
        var image = document.getElementById("blah").value;


        if (name == "") {
            alert("Enter The Customer Name");
            return false;
        }
        if (father == "") {
            alert("Enter The Father's Name");
            return false;
        }
        if (date == "") {
            alert("Choose The Date of Birth");
            return false;
        }
        if (sex == "") {
            alert("Choose The Gender");
            return false;
        }
        if (occupation == "") {
            alert("Enter The Occupation");
            return false;
        }
        if (phonenumber == "") {
            alert("Enter The Mobile Number");
            return false;
        }
        if (isNaN(phonenumber)) {
            alert("Enter the valid Mobile Number");
            return false;
        }
        if (mnumber.value.length != 10) {
            alert("Enter 10 digits");
            return false;
        }
        if (landline == "") {
            alert("Enter The LandLine Number");
            return false;
        }
        if (isNaN(landline)) {
            alert("Enter the valid LandLine Number");
            return false;
        }
        if (drop == 0) {
            alert("Choose the ID Proof");
            return false;
        }
        if (idNumber == "") {
            alert("Enter The Id Number");
            return false;
        }
        if (address == "") {
            alert("Enter The Address");
            return false;
        }
        if (city == "") {
            alert("Enter The City");
            return false;
        }
        if (Reference == "") {
            alert("Enter the Reference");
            return false;
        }
        if (ref == "") {
            alert("Enter The Reference Relationship");
            return false;
        }
        if (image == "") {
            alert("choose The photo");
            return false;
        }
    }
  </script>


<body>

        <nav class="navbar navbar-default" id="nav1">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" id="finance" href="#">Finance</a>
            </div>
            <ul class="nav navbar-nav">
                <li><a class="dropdown-toggle" id="drop" data-toggle="dropdown" href="#">Customer <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="Customer.html">New Customer</a></li>
                        <li><a href="Existing member.html">Existing Customer</a></li>
                    </ul>
                </li>
                <li><a class="dropdown-toggle"  id="A1" data-toggle="dropdown" href="#">Loan <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">New Loan</a></li>
                        <li><a href="#">Existing Loan</a></li>
                    </ul>
                </li>
                <li><a class="link" id="navs" href="#">Collection</a></li>
                <li><a class="link" id="A2" href="#">Reports</a></li>
            </ul>
        </div>
    </nav>

    <form id="form1" method="post" runat="server">
     <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="lb" runat="server"  CssClass="control-label">Customer Name</asp:Label>
                        <asp:TextBox ID="cname" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" CssClass="control-label">Father's Name</asp:Label>
                        <asp:TextBox ID="fname" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" CssClass="control-label">Date of Birth</asp:Label>
                        <asp:TextBox ID="dob" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" CssClass="control-label">Gender</asp:Label>
                        <asp:RadioButtonList ID="gender" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" CssClass="control-label">Occupation</asp:Label>
                        <asp:TextBox ID="occupation" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" CssClass="control-label">Mobile Number</asp:Label>
                        <asp:TextBox ID="mnumber" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" CssClass="control-label">Landline Number</asp:Label>
                        <asp:TextBox ID="lnumber" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" CssClass="control-label">Id Proof</asp:Label>
                        <asp:DropDownList ID="proof" runat="server">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Passport</asp:ListItem>
                            <asp:ListItem>voter Id</asp:ListItem>
                            <asp:ListItem>Pan card</asp:ListItem>
                            <asp:ListItem>Aadhaar</asp:ListItem>
                            <asp:ListItem>Pass Book</asp:ListItem>
                            <asp:ListItem>Driving License </asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label8" runat="server" CssClass="control-label">Id Number</asp:Label>
                        <asp:TextBox ID="idnum" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="form-group">
                        <asp:Label ID="Label9" runat="server" CssClass="control-label">Address</asp:Label>
                        <asp:TextBox ID="address" TextMode="multiline" Columns="50" Rows="5" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label10" runat="server" CssClass="control-label">City</asp:Label>
                        <asp:TextBox ID="city" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="well well-lg" id="well">
                        <div class="form-group">
                            <asp:Label ID="Label11" runat="server" CssClass="control-label">Reference</asp:Label>
                            <asp:TextBox ID="Reference" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label12" runat="server" CssClass="control-label">Reference Relationship</asp:Label>
                            <asp:TextBox ID="refrelation" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div style="text-align: center;margin:5%;">
                        <asp:Button ID="btn" Text="submit" runat="server" OnClick="btn_Click" CssClass=" btn btn-default"  OnClientClick="val()"/>
                              <asp:Button ID="cancel" runat="server" OnClick="cancel_Click"  Text="Cancel"  CausesValidation="false"  CssClass=" btn btn-default" />
                    </div>
                   
                  
                   
                </div>

                <div class="col-lg-4 well" id="Div1">
                    <div class="form-group">
                         <input type='file' onchange="readURL(this);" />
                         <img id="blah" src="#" alt="your image" />
                    </div>

                </div>
            </div>
        </div>

    </form>
</body>
</html>

--%>
