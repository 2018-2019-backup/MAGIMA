﻿<%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" CodeBehind="authentication.aspx.cs" Inherits="FinanceApplication.authentication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        



/*//////////////////////////////////////////////////////////////////
[ FONT ]*/

@font-face {
  /*font-family: Poppins-Regular;*/
  font-family:'Century Gothic';
  src: url('../fonts/poppins/Poppins-Regular.ttf'); 
}

@font-face {
  /*font-family: Poppins-Medium;*/
  font-family:'Century Gothic';
  src: url('../fonts/poppins/Poppins-Medium.ttf'); 
}

@font-face {
  /*font-family: Poppins-Bold;*/
  font-family:'Century Gothic';
  src: url('../fonts/poppins/Poppins-Bold.ttf'); 
}

@font-face {
  /*font-family: Poppins-SemiBold;*/
  font-family:'Century Gothic';
  src: url('../fonts/poppins/Poppins-SemiBold.ttf'); 
}




/*//////////////////////////////////////////////////////////////////
[ RESTYLE TAG ]*/

* {
	margin: 0px; 
	padding: 0px; 
	box-sizing: border-box;
}

body, html {
	height: 100%;
	/*font-family: Poppins-Regular, sans-serif;*/
    font-family:'Century Gothic';
}

/*---------------------------------------------*/
a {
	/*font-family: Poppins-Regular;*/
    font-family:'Century Gothic';
	font-size: 14px;
	line-height: 1.7;
	color: #666666;
	margin: 0px;
	transition: all 0.4s;
	-webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
}

a:focus {
	outline: none !important;
}

a:hover {
	text-decoration: none;
  color: #fff;
}

/*---------------------------------------------*/
h1,h2,h3,h4,h5,h6 {
	margin: 0px;
}

p {
	/*font-family: Poppins-Regular;*/
    font-family:'Century Gothic';
	font-size: 14px;
	line-height: 1.7;
	color: #666666;
	margin: 0px;
}

ul, li {
	margin: 0px;
	list-style-type: none;
}


/*---------------------------------------------*/
input {
	outline: none;
	border: none;
}

textarea {
  outline: none;
  border: none;
}

textarea:focus, input:focus {
  border-color: transparent !important;
}

input:focus::-webkit-input-placeholder { color:transparent; }
input:focus:-moz-placeholder { color:transparent; }
input:focus::-moz-placeholder { color:transparent; }
input:focus:-ms-input-placeholder { color:transparent; }

textarea:focus::-webkit-input-placeholder { color:transparent; }
textarea:focus:-moz-placeholder { color:transparent; }
textarea:focus::-moz-placeholder { color:transparent; }
textarea:focus:-ms-input-placeholder { color:transparent; }

input::-webkit-input-placeholder { color: #fff;}
input:-moz-placeholder { color: #fff;}
input::-moz-placeholder { color: #fff;}
input:-ms-input-placeholder { color: #fff;}

textarea::-webkit-input-placeholder { color: #fff;}
textarea:-moz-placeholder { color: #fff;}
textarea::-moz-placeholder { color: #fff;}
textarea:-ms-input-placeholder { color: #fff;}

label {
  margin: 0;
  display: block;
}

/*---------------------------------------------*/
button {
	outline: none !important;
	border: none;
	background: transparent;
}

button:hover {
	cursor: pointer;
}

iframe {
	border: none !important;
}


/*//////////////////////////////////////////////////////////////////
[ Utility ]*/
.txt1 {
  font-family: Poppins-Regular;
  font-size: 13px;
  color: #e5e5e5;
  line-height: 1.5;
}


/*//////////////////////////////////////////////////////////////////
[ login ]*/

.limiter {
  width: 100%;
  margin: 0 auto;
  /*height:80%;*/
}

.container-login100 {
  width: 100%;  
  min-height: 80vh;
  /*height:80%;*/
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
  padding: 15px;

  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;
  position: relative;
  z-index: 1;  
}

.container-login100::before {
  content: "";
  display: block;
  position: absolute;
  z-index: -1;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  background-color: rgba(255,255,255,0.9);
}

.wrap-login100 {
  width: 500px;
  height:650px;
  border-radius: 10px;
  overflow: hidden;
  padding: 55px 55px 37px 55px;
  background: #9152f8;
  background: -webkit-linear-gradient(top, #7579ff, #b224ef);
  background: -o-linear-gradient(top, #7579ff, #b224ef);
  background: -moz-linear-gradient(top, #7579ff, #b224ef);
  background: linear-gradient(top, #7579ff, #b224ef);
  /*margin:10px;*/
}


/*------------------------------------------------------------------
[ Form ]*/

.login100-form {
  width: 100%;
}

.login100-form-logo {
  font-size: 60px; 
  color: #333333;

  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  justify-content: center;
  align-items: center;
  width: 120px;
  height: 120px;
  border-radius: 50%;
  background-color: #fff;
  /*margin: 0 auto;*/
  /*margin:30px;*/
  /*margin-top:25px;
  margin-bottom:20px;*/
  margin:20px;
 margin-top:0px;
  /*width:200px;
  height:100px*/
}


        /*.login100-form-logo {
  width: 120px;
  height: 120px;
        }*/










.login100-form-title {
  /*font-family: Poppins-Medium;*/
  font-family:'Century Gothic';
  font-size: 30px;
  color: #fff;
  line-height: 1.2;
  text-align: center;
  text-transform: uppercase;

  display: block;
}


/*------------------------------------------------------------------
[ Input ]*/

.wrap-input100 {
  width: 100%;
  position: relative;
  border-bottom: 2px solid rgba(255,255,255,0.24);
  margin-bottom: 30px;
}

.input100 {
  /*font-family: Poppins-Regular;*/
  font-family:'Century Gothic';
  font-size: 16px;
  color: #fff;
  line-height: 1.2;

  display: block;
  width: 100%;
  height: 45px;
  background: transparent;
  padding: 0 5px 0 38px;
}

/*---------------------------------------------*/ 
.focus-input100 {
  position: absolute;
  display: block;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  pointer-events: none;
}

.focus-input100::before {
  content: "";
  display: block;
  position: absolute;
  bottom: -2px;
  left: 0;
  width: 0;
  height: 2px;

  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;

  background: #fff;
}

.focus-input100::after {
  /*font-family: Material-Design-Iconic-Font;*/
  font-family:'Century Gothic';
  font-size: 22px;
  color: #fff;

  content: attr(data-placeholder);
  display: block;
  width: 100%;
  position: absolute;
  top: 6px;
  left: 0px;
  padding-left: 5px;

  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;
}

.input100:focus {
  padding-left: 5px;
}

.input100:focus + .focus-input100::after {
  top: -22px;
  font-size: 18px;
}

.input100:focus + .focus-input100::before {
  width: 100%;
}

.has-val.input100 + .focus-input100::after {
  top: -22px;
  font-size: 18px;
}

.has-val.input100 + .focus-input100::before {
  width: 100%;
}

.has-val.input100 {
  padding-left: 5px;
}

@media (max-width: 576px) {
  .wrap-login100 {
    padding: 55px 15px 37px 15px;
  }
}
.validate-input {
  position: relative;
}

.alert-validate::before {
  content: attr(data-validate);
  position: absolute;
  max-width: 70%;
  background-color: #fff;
  border: 1px solid #c80000;
  border-radius: 2px;
  padding: 4px 25px 4px 10px;
  top: 50%;
  -webkit-transform: translateY(-50%);
  -moz-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  -o-transform: translateY(-50%);
  transform: translateY(-50%);
  right: 0px;
  pointer-events: none;

  font-family: Poppins-Regular;
  color: #c80000;
  font-size: 13px;
  line-height: 1.4;
  text-align: left;

  visibility: hidden;
  opacity: 0;

  -webkit-transition: opacity 0.4s;
  -o-transition: opacity 0.4s;
  -moz-transition: opacity 0.4s;
  transition: opacity 0.4s;
}

.alert-validate::after {
  content: "\f12a";
  font-family: FontAwesome;
  font-size: 16px;
  color: #c80000;

  display: block;
  position: absolute;
  top: 50%;
  -webkit-transform: translateY(-50%);
  -moz-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  -o-transform: translateY(-50%);
  transform: translateY(-50%);
  right: 5px;
}

.alert-validate:hover:before {
  visibility: visible;
  opacity: 1;
}

@media (max-width: 992px) {
  .alert-validate::before {
    visibility: visible;
    opacity: 1;
  }
}
</style>
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--     <form id="form1" runat="server"  cssclass="login100-form validate-form">--%>
    <div class="limiter" >
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100" >
				
					<span class="login100-form-logo" style="background-image:url(https://lh6.googleusercontent.com/ParsyqlUg_stJ8alQTKBqBkNDzBzCHOIfYwrzVnUkdKExF_HQK0FZRcsX0JrkU3h4sNaErEyHf2-CV25KQ9-mtwFSlGJuXM1NHuNhmaOFAHkta-sDb3b3Tq94Ax98VLp_0SzF8G_);height:40%;width:90%;background-position:center">
						<i class="zmdi zmdi-landscape"></i>
					</span>

					<span class="login100-form-title p-b-34 p-t-27">
						Log in
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<asp:textbox ID="name" cssclass="input100" runat="server" name="username" placeholder="Username" style="font-family:'Century Gothic';"></asp:textbox>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<asp:TextBox ID="pwd" cssclass="input100" runat="server"  name="pass" placeholder="Password" TextMode="Password" style="font-family:'Century Gothic';"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

					<%--<div class="contact100-form-checkbox">
						<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
						<label class="label-checkbox100" for="ckb1">
							Remember me
						</label>
					</div>--%>

					<div class="container-login100-form-btn">
						<asp:button  CssClass="btn btn-default" runat="server" Text="Login"  id="login" OnClick="login_Click" class="btn btn-default" style="margin-left:90px; color:royalblue;font-family:'Century Gothic';"></asp:button>
                        <asp:button  CssClass="btn btn-default" runat="server" Text="Sign Up"  id="signup" OnClick="signup_Click" class="btn btn-default" style="margin-left:30px; color:red;font-family:'Century Gothic';"></asp:button>
					</div>

<%--					<div class="text-center p-t-90">
						<a class="txt1" href="#">
							Forgot Password?
						</a>
					</div>--%>
			
			</div>
		</div>
	</div>
<%--</form>--%>
</asp:Content>
