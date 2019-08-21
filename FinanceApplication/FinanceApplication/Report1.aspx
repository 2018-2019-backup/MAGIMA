<%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" CodeBehind="Report1.aspx.cs" Inherits="FinanceApplication.Report1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
#ones{
padding-top:1.5%;
padding-left:1%;
padding-right:1%;
padding-bottom:1%;
margin:1%;
width:30%;
text-align: center;
border-color:#e0e0e0;
font-size-adjust:initial;
/*background-image:url(https://ak3.picdn.net/shutterstock/videos/1009655633/thumb/1.jpg?i10c=img.resize);*/
background-image:url(https://cdn.dribbble.com/users/291221/screenshots/1425333/helper.gif);
background-size:330px 130px;
background-repeat: no-repeat;
background-position:center;
}


#twos{

padding-top:1.5%;
padding-bottom:1%;
padding-left:1%;
padding-right:1%;
margin:1%; 
width:30%;
text-align: center;
border-color:#e0e0e0;
background-image:url(https://cdn.dribbble.com/users/76761/screenshots/827372/time-and-money.gif);
/*background-image:url(https://fint.ng/img/BorrGif.gif);*/
background-size:330px 130px;
background-repeat: no-repeat;
background-position:center;
}

#threes{
padding-top:1.5%;
padding-bottom:1%;
padding-left:1%;
padding-right:1%;
margin-bottom:20%;
margin:1%;
width:30%;
text-align: center;
border-color:#e0e0e0;
/*background-image:url(https://d2v9y0dukr6mq2.cloudfront.net/video/thumbnail/EJzNyeStlik0d7i6m/videoblocks-trader-man-analyzing-investment-charts-and-stock-statistics-on-clipboard-paperwork-concept_sl4ddaff_thumbnail-full01.png);*/
/*background-image:url(http://strategicpropertygroup.com.au/assets/images/loader.gif);*/
background-image:url(http://www.tiaramotion.com/wp-content/uploads/2016/09/Time-is-money.gif);
background-size:330px 130px;
background-repeat: no-repeat;
/*background-origin:border-box;*/
background-position:center;
}

#fours{
margin:1%;
width:30%;
padding-top:1.5%;
padding-bottom:1%;
padding-left:1%;
padding-right:1%;
border-color:#e0e0e0;
/*background-image:url(https://d2v9y0dukr6mq2.cloudfront.net/video/thumbnail/EplCz7dteik3u4pvh/videoblocks-aerial-footage-of-businesswoman-analyzing-pie-chart-and-bar-graph_blxvn2w5e_thumbnail-full01.png);*/
background-image:url(http://www.paisafatafat.com/cdn/site/images/HassleFreePaperwork.gif);
background-size:330px 130px;
background-repeat: no-repeat;
background-position:center;
margin-left:17%;
}
#fives{
margin:1%;
width:30%;
padding-top:1.5%;
padding-bottom:1%;
padding-left:1%;
padding-right:1%;
border-color:#e0e0e0;
/*background-image:url(https://d2v9y0dukr6mq2.cloudfront.net/video/thumbnail/EplCz7dteik3u4pvh/videoblocks-aerial-footage-of-businesswoman-analyzing-pie-chart-and-bar-graph_blxvn2w5e_thumbnail-full01.png);*/
background-image:url(https://cdn.dribbble.com/users/1497565/screenshots/3224624/calculator_laura_lonni.gif);
background-size:330px 130px;
background-repeat: no-repeat;
background-position:center;
}
        body {
           overflow-x:hidden;
           /*background-image:url(https://dozzi.com.au/wp-content/uploads/2017/12/dozzi-independent_1920px.jpg);
           background-repeat:no-repeat;*/
           }
        #one {
            margin-top:120px;
            /*font-family:Lucida Handwriting ;*/
            font-family:'Century Gothic';
            /*font-size:13px;*/
            font-size:15px;
            /*color:purple;*/
            color:#0026ca;
            font-weight:600;
        }
         #two {
            margin-top:120px;
             /*font-family:Lucida Handwriting ;*/
             font-family:'Century Gothic';
            /*font-size:13px;*/
            font-size:15px;
            /*color:purple;*/
            color:#0026ca;
            font-weight:600;
        }
          #three {
            margin-top:120px;
            /*font-family:Lucida Handwriting ;*/
            font-family:'Century Gothic';
            /*font-size:13px;*/
            font-size:15px;
            /*color:purple;*/
            color:#0026ca;
            font-weight:600;
        }
           #four {
            margin-top:120px;
            /*font-family:Lucida Handwriting ;*/
            font-family:'Century Gothic';
            /*font-size:13px;*/
            font-size:15px;
            /*color:purple;*/
            color:#0026ca;
            font-weight:900;
        }
           #five {
            margin-top:120px;
            /*font-family:Lucida Handwriting ;*/
            font-family:'Century Gothic';
            /*font-size:13px;*/
            font-size:15px;
            /*color:purple;*/
            color:#0026ca;
            font-weight:900;
        }           
        #ones:hover,#twos:hover,#threes:hover,#fours:hover,#fives:hover {
            opacity:0.3;
        }
        h1 {
            /*font-family:Brush Script MT;*/
            font-family:'Century Gothic';
            /*font-size:45px;*/
            /*color:#0026ca;*/
            color:black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="margin-bottom:5%">
<div class="col-lg-2 col-sm-0"></div>
<div class="col-lg-8 col-sm-12 well-lg">
<h1><b>Reports</b></h1>
<div id="total">
<a href="CustomerReport.aspx" class="btn btn-lg " role="button" id="ones"><br/><div id="one">Customer Report</div></a>
<a href="LoanReport.aspx" class="btn btn-lg" role="button" id="twos"><br/><div id="two">Loan Report</div></a>
<a href="duereport.aspx"  class="btn btn-lg" role="button" id="threes"><br/><div id="three">Due Report</div></a>
<a href="analysis.aspx" class="btn btn-lg" role="button" id="fours"><br/><div id="four">Master Report</div></a>
<a href="Emichart.html" class="btn btn-lg" role="button" id="fives"><br/><div id="five">EMI Chart</div></a>
</div>
</div>
</div>  
<div class="col-lg-2 col-sm-0"></div>
</asp:Content>
