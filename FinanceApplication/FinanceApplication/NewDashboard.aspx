<%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" CodeBehind="NewDashboard.aspx.cs" Inherits="FinanceApplication.NewDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
body{
  overflow: hidden;
  height: 100%;
}
body {
    margin:0;
    padding:0;
    background:url("https://cdn.pixabay.com/photo/2018/06/09/10/33/shaking-hands-3464041_960_720.jpg") no-repeat ;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    height: 100%; 
   background-repeat:repeat-x;
   background-size:cover;
 }
.box{
    text-align: center;
    overflow: hidden;
    position: relative;
}
.box img{
    width: 100%;
    height: auto;
}
.box .box-content{
    width: 100%;
    height: 100%;
    position: absolute;
    top: 50%;
    left: 50%;
    z-index: 2;
    transform: translate(-50%, -50%);
}
.box:before,
.box:after,
.box .box-content:before,
.box .box-content:after{
    content: "";
    width: 80%;
    height: 80%;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%) rotate(45deg);
    transition: all 0.5s ease 0s;
}
.box:before{
    background: linear-gradient(45deg,rgba(0,0,0,0.2) 49%, transparent 50%);
    left: -100%;
}
.box:after{
    background: linear-gradient(45deg,transparent 49%, rgba(0,0,0,0.2) 50%);
    left: 160%;
}
.box .box-content:before,
.box .box-content:after{
    width: 65%;
    height: 65%;
    background: linear-gradient(45deg,rgba(0,0,0,0.3) 49%, transparent 50%);
    left: -100%;
    transition-delay: 0.1s;
}
.box .box-content:after{
    background: linear-gradient(45deg,transparent 49%, rgba(0,0,0,0.3) 50%);
    left: 160%;
}
.box:hover:before,
.box:hover:after,
.box:hover .box-content:before,
.box:hover .box-content:after{ left: 50%; }
.box .inner-content{
    width: 50%;
    height: 50%;
    color: #fff;
    padding: 40px 0;
    position: absolute;
    top: 50%;
    left: 50%;
    z-index: 2;
    transform: translate(-50%, -50%) scale(0);
    transition: all 0.3s ease 0.2s;
}
.box .inner-content:after{
    content: "";
    width: 100%;
    height: 100%;
    background: rgba(255,79,79,0.8);
    position: absolute;
    top: 50%;
    left: 50%;
    z-index: -1;
    transform: translate(-50%, -50%) rotate(45deg);
}
.box:hover .inner-content{
    transform: translate(-50%, -50%) scale(1);
    transition: all 0.3s ease 0s;
}
.box .title{
    font-size: 18px;
    font-weight: 700;
    text-transform: uppercase;
    margin-bottom: 5px;
}
.box .post{
    display: block;
    font-size: 14px;
    text-transform: capitalize;
    margin-bottom: 7px;
}
.box .icon{
    padding: 0;
    margin: 0;
    list-style: none;
    transform: rotateY(360deg) scale(0);
    transition: all 0.3s ease 0s;
}
.box:hover .icon{ transform: rotateY(0) scale(1); }
.box .icon li{
    display: inline-block;
    margin: 0 3px;
}
.box .icon li a{
    display: block;
    width: 75px;
    height: 55px;
    line-height: 35px;
    border-radius: 50%;
    background: #fff;
    font-size: 16px;
    color: #505050;
    transition: all 0.3s ease 0s;
}
.box .icon li a:hover{
    box-shadow: 0 0 0 5px rgba(0,0,0,0.5);
    background: #fff;
    color: rgb(255,79,79);
}
@media only screen and (max-width:990px){
    .box{ margin-bottom: 30px; }
}
@media only screen and (max-width:320px){
    .box .inner-content{ padding: 25px 0; }
    .box .title{ font-size: 16px; }
}
i.fa {
    display: inline-block;
}
.fa{
  margin-top: 10px;
  font-size: 30px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
    <div class="row">
        <div class="col-md-4 col-sm-6">
            <div class="box">
                <img src="https://cdn.pixabay.com/photo/2018/06/09/10/33/shaking-hands-3464041_960_720.jpg"/>
                <div class="box-content">
                    <div class="inner-content">
                        <h1>MAGIMA</h1>
                        <ul class="icon">
                            <li><a href="www.youtube.com"><i class="fa fa-plus"  aria-hidden="true" title="New Customer"></i></a></li>
                            <li><a href="#"><i  class="fa fa-search" aria-hidden="true" title="Search Customer"></i></a></li>
                            <li><a href="#"> <i class="fa fa-users"  aria-hidden="true" title="New Loans"></i></a></li>
                            <li><a href="#"><i class="fa fa-folder"  aria-hidden="true" title="Reports" ></i></a></li>
                           <li><a href="#"><i class="fa fa-font" aria-hidden="true" title="Admin"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
</div>
</asp:Content>
