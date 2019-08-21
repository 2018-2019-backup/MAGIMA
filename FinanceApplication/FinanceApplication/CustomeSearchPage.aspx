 <%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" CodeBehind="CustomeSearchPage.aspx.cs" Inherits="FinanceApplication.CustomeSearchPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<%--<script type="text/javascript">
    function ShowProgress() {
        setTimeout(function () {
                   modal.addClass("modal");
            $('body').append(modal);
            var loading = $(".loading");
            loading.show();
            var top = Math.max($(window).height() / 2 - loading[0].offsetHeight / 2, 0);
            var left = Math.max($(window).width() / 2 - loading[0].offsetWidth / 2, 0);
            loading.css({ top: top, left: left });
        }, 200);
    }
    $('form').live("submit", function () {
        ShowProgress();
    });
</script>--%>
     <%-- <script >
          function val1() {
              if (document.getElementById('<%=customer.ClientID%>').value == "" ) {     var modal = $('<div />');

                  alert("Enter The Customer Id");
                  return false;
              }
          }
          function val2() {
             if( document.getElementById('<%=mobile.ClientID%>').value == "")
              {
                 alert(" Enter the Mobile Number");
                 return false;                 
              }
              if (document.getElementById('<%=mobile.ClientID%>').value != "") {
                  if (isNaN(document.getElementById('<%=mobile.ClientID%>').value)) {
                      alert("Enter the valid Mobile Number");
                      return false;
                  }
                  if (document.getElementById('<%=mobile.ClientID%>').value.length != 10) {
                      alert("Mobile Number Should Contain 10 digits");
                      return false;
                  }
              }
          }
</script> --%>
   <style type="text/css">
    .modal
    {
        position: fixed;
        top: 0;
        left: 0;
        /*background-color: black;*/
        z-index: 99;
        opacity: 0.8;
        filter: alpha(opacity=80);
        -moz-opacity: 0.8;
        min-height: 100%;
        width: 200%;
    }
    .loading
    {
        font-family: Arial;
        font-size: 10pt;
        /*border: 5px solid #67CFF5;*/
        width: 250px;
        height: 300px;
        display: none;
        position: fixed;
        /*z-index: 999;*/
    }
       h3 {
            /*font-family:Lucida Handwriting;*/
            /*font-family:Calibri (Body);*/
               font-family:'Century Gothic';
            font-size:30px;
            color:black;
            /*color:#0026ca;*/
            margin-left:10%;
            
       }
       /*body {
            background-repeat:no-repeat;   
            background-image:url(https://dozzi.com.au/wp-content/uploads/2017/12/dozzi-independent_1920px.jpg); 
        }*/
       body {
            overflow-x:hidden;       
       }
       .wide1 {
           /*width:5%;*/
           text-align:center;
       } 
              .wide2 {
           /*width:15%;*/
           text-align:center;
       }  
              .wide3 {
           /*width:20%;*/
           text-align:center;
       }    
              .wide4{
           /*width:350px;*/
           text-align:center;
       }  
             .wide5{
           /*width:450px;*/
           text-align:center;
       }  
            .wide6 {
           /*width:350px;*/
           text-align:center;
       }  
          .wide7 {
           /*width:350px;*/
           text-align:center;
       }  
           .wide8 {
           /*width:350px;*/
           text-align:center;
       }  
       .wide9 {
           /*width:350px;*/
           text-align:center;
       } 
             .wide10 {
           /*width:350px;*/
           text-align:center;
       }
               .wide11 {
           /*width:350px;*/
           text-align:center;
       }  
           .wide12 {
           /*width:350px;*/
           text-align:center;
       }  
            .wide13 {
           /*width:350px;*/
           text-align:center;
       }   
       .wide14 {
          
           text-align:center;
       } 
     .wide15 {
           /*width:350px;*/
            /*width:0%;*/
           text-align:center;
       }    
          .wide16 {
           /*width:350px;*/
            /*width:0%;*/
           text-align:center;
       }  
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        

    <h3><b>Customer Search Page</b></h3>
<%-- <form id="Form1" method="post" runat="server" style="margin-bottom:4%">--%>
     <div class="container" style="margin-bottom:4%">
     <div class=" col-lg-2">
       <img src="http://gifimage.net/wp-content/uploads/2017/09/animated-gif-search-13.gif" alt="Trulli" width="250" height="280" style="margin-top:41px;border:ridge" />
    </div> 
     <div class=" col-lg-10">
  <div  class="well"style="margin-top:40px;margin-left:20%;" >

    <div class="form-group" style="font-family:'Century Gothic';font-size:16px;">
        <asp:Label ID="lb" runat="server" CssClass="control-label" style="margin-right:70%;font-size:18px;font-weight:bold;   font-family:'Century Gothic';">Customer Name:</asp:Label><br />
        <div class="input-group">
        <asp:TextBox ID="customer" runat="server" CssClass="form-control" ></asp:TextBox>
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  </div><br />
        <div style="margin-left:30%;">
        <asp:Button ID="Button1" Text="Submit" runat="server" OnClick="btn_Click" style="font-family:'Century Gothic';font-size:14px;" CssClass="btn btn-primary"/>
            </div>
    </div>  
    <div class="form-group" style="font-family:'Century Gothic'">
         <asp:Label ID="Label1" runat="server" CssClass="control-label" style="margin-right:70%;font-size:18px;font-weight:bold;   font-family:'Century Gothic';">Mobile Number:</asp:Label><br />
                <div class="input-group"> 
        <asp:TextBox ID="mobile" runat="server" CssClass="form-control"></asp:TextBox>
                <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
  </div> 
         <asp:Button ID="Button2" Text="Submit" runat="server" OnClick="Btn2_Click"  CssClass="btn btn-primary" style="margin-left:20%; font-family:'Century Gothic';font-size:14px;"/>
      <asp:Button ID="cancel" Text="Cancel" runat="server" OnClick="cancel_Click"  CssClass="btn btn-primary" Style="margin:10px; font-family:'Century Gothic';font-size:14px;"/>
  
    </div>
         </div>
         </div>
     <div class=" col-lg-2"></div>
         </div> 
     <div  style="margin-top:5%;margin-left:15px;">         
         <asp:GridView ID="gv" runat="server" AutoGenerateColumns="false" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="DarkBlue" style="text-align:center;font-family:'Century Gothic';margin-left:1px;" HeaderStyle-BorderWidth="3" HeaderStyle-Font-Size="11" HeaderStyle-HorizontalAlign="Center"  Width="1000px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="S No"><HeaderStyle CssClass="wide1" /></asp:BoundField>               
                <asp:BoundField DataField="customerid" HeaderText="Customer ID"><HeaderStyle CssClass="wide2" /></asp:BoundField>
                <asp:BoundField DataField="CustomerName" HeaderText="Customer Name"><HeaderStyle CssClass="wide3" />   </asp:BoundField>
                <asp:BoundField DataField="FathersName" HeaderText="Father's Name"><HeaderStyle CssClass="wide4" /> </asp:BoundField>
                <asp:BoundField DataField="Dob" HeaderText="Date of Birth"><HeaderStyle CssClass="wide5" />  </asp:BoundField>
                <asp:BoundField DataField="Sex" HeaderText="Gender"><HeaderStyle CssClass="wide6" /> </asp:BoundField>
                <asp:BoundField DataField="Occupation" HeaderText="Occupation" ><HeaderStyle CssClass="wide7" /> </asp:BoundField>
                <asp:BoundField DataField="MobileNumber" HeaderText="Mobile Number"><HeaderStyle CssClass="wide8" />  </asp:BoundField>
                <asp:BoundField DataField="alternativemobilenumber" HeaderText="Alternative Mobile Number"><HeaderStyle CssClass="wide8" />  </asp:BoundField>
                <asp:BoundField DataField="LandLineNumber" HeaderText="Landline Number"><HeaderStyle CssClass="wide9" /></asp:BoundField>
                <asp:BoundField DataField="IdProof" HeaderText="ID Proof"><HeaderStyle CssClass="wide10" /></asp:BoundField>
                <asp:BoundField DataField="IdNumber" HeaderText="ID Number"><HeaderStyle CssClass="wide11" /> </asp:BoundField>
                <asp:BoundField DataField="Address" HeaderText="Address"><HeaderStyle CssClass="wide12" /></asp:BoundField>
                <asp:BoundField DataField="City" HeaderText="City"><HeaderStyle CssClass="wide13" /></asp:BoundField>
                <asp:BoundField DataField="Reference" HeaderText="Reference"><HeaderStyle CssClass="wide14" /> </asp:BoundField>
                <asp:BoundField DataField="ReferenceRelationship" HeaderText="Reference Relationship"><HeaderStyle CssClass="wide15" /> </asp:BoundField>
                
<%--                <asp:BoundField DataField="Photo" HeaderText="Photo" />--%>
                <asp:TemplateField HeaderText="Select">
                    <HeaderStyle CssClass="wide16" />
                    <itemtemplate>
                        <asp:Button ID="select" cssclass="btn btn-primary" runat="server" Text="Select" style="font-family:'Century Gothic';height:10%;width:100%;font-size:14px;" OnClick="select_Click"/>
                    </itemtemplate>
                </asp:TemplateField>
             </Columns>    
        </asp:GridView>
<%--     <div class="loading">
   

   <img src="https://loading.io/spinners/money/lg.coin-flowing-loader.gif" alt="" />
 <img src="https://cdn.dribbble.com/users/99875/screenshots/2383972/facebook-white.gif" alt="" />
    <img src="https://loading.io/spinners/comets/lg.comet-spinner.gif" alt="" />
img src=" https://loading.io/spinners/coin/lg.money-coin-palette-color-preloader.gif" alt="" style="opacity:0.5;" />
</div>--%>
          </div> 
 <%-- </form>--%>
<%--</div>--%>
</asp:Content>
