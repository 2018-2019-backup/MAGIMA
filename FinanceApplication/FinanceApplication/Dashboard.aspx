<%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="FinanceApplication.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<%--<script type="text/javascript">
    function ShowProgress() {
        setTimeout(function () {
            var modal = $('<div />');
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
<style>
    /*#thi {
        background-image: url(https://www.perhd.com/wp-content/uploads/2017/12/wallpaper-money-wallpaper-money-wallpaper-money-design-wallpaper-money-iphone-wallpaper.ijr5oz1gdy5anl_ofj_yvewsakj4slbuvuub4fq7__jts9pvulxgfyb2jzemlob5=h900);
        height:750px;
        /*width:18%;*/
        /*width:200px;*/
        /*background-size:cover;
        background-repeat:no-repeat;
        padding:0px;
    }*/

    body {
        /*background-image: url(http://www.freepptbackgrounds.net/wp-content/uploads/2016/06/Papers-on-Purple-PPT-Backgrounds.jpg);*/
                /*background-image: url(https://img.freepik.com/free-photo/christmas-background-of-purple-glitter_1048-3425.jpg?size=338&ext=jpg);*/
        background-size: cover;
        background-repeat: no-repeat;
        height: 900px;
        overflow:hidden;
    }

#one{
padding-top:6.5%;
opacity:10;
padding-left:1%;
padding-right:1.5%;
padding-bottom:1%;
background-image:url(https://ak9.picdn.net/shutterstock/videos/4872389/thumb/1.jpg);
background-size:355px 122px;
background-repeat: no-repeat;
margin:2%;
width:42%;
text-align: center;
border-color:white;
/*color:purple;*/
color:#0026ca;
font-size-adjust:initial;
border-color:#e0e0e0;
background-position:center;
}
#one:hover{
  transform: scale(1.3);
  }
#two{
    opacity:10;
padding-top:6.5%;
padding-left:1%;
/*color:purple;*/
color:#0026ca;
padding-right:.5%;
padding-bottom:1%;
background-image:url(https://www.3mediaweb.com/wp-content/uploads/SEO-for-Local-Search-Think-Like-a-Customer-01-1170x662.jpg);
background-size:355px 122px;
background-repeat: no-repeat;
margin:2%; 
width:42%;
text-align: center;
font-size-adjust:initial;
border-color:#e0e0e0;
background-position:center;
}
#two:hover{
  transform: scale(1.3);
  }
#three{
        opacity:10;
padding-top:6.5%;
padding-left:1.5%;
padding-right:1.5%;
/*color:purple;*/
color:#0026ca;
padding-bottom:1%;
background-image:url(https://4.imimg.com/data4/LI/XC/MY-15020461/we-are-loan-agency-from-looking-for-more-business-associate-500x500.jpg);
background-size:355px 122px;
background-repeat: no-repeat;
margin:2%;
width:42%;
border-color:#e0e0e0;
background-position:center;
}
#three:hover{
  transform: scale(1.3);
  }
#four{
        opacity:10;
margin:2%;
/*color:purple;*/
color:#0026ca;
width:42%;
padding-top:6.5%;
padding-left:1.5%;
padding-right:1.5%;
padding-bottom:1%;
background-image:url(https://ammarhasayen.files.wordpress.com/2013/09/report-cover.jpg?w=593&h=261&crop=1);
background-size:355px 122px;
background-repeat: no-repeat;
border-color:#e0e0e0;
background-position:center;
}
#four:hover{
  transform: scale(1.3);
  }
#five{
    margin:2%;
        opacity:10;
    margin-left:28%;
padding-top:6.5%;
color:purple;
padding-left:.5%;
padding-right:.5%;
padding-bottom:1%;
background-image:url(https://www.10wallpaper.com/wallpaper/1366x768/1606/Internet_Business_Technology_HD_Wallpaper_14_1366x768.jpg);
background-size:355px 122px;
background-repeat: no-repeat;
width:42%;
border-color:#e0e0e0;
background-position:center;
}
#five:hover{
  transform: scale(1.3);
  }
    #ones {
        margin-top:93px;
        /*font-family:Lucida Handwriting;*/
        font-family:'Century Gothic';
        /*font-size:13px;*/
        font-size:15px;
        font-weight:600;
    }
    #twos {
        margin-top:93px;
        /*font-family:Lucida Handwriting;*/
        font-family:'Century Gothic';
        /*font-size:13px;*/
        font-size:15px;
        font-weight:600;
    }
    #threes {
        margin-top:93px;
        /*font-family:Lucida Handwriting;*/
        font-family:'Century Gothic';
        /*font-size:13px;*/
        font-size:15px;
        font-weight:600;
    }
    #fours {
        margin-top:93px;
        /*font-family:Lucida Handwriting;*/
        font-family:'Century Gothic';
        font-size:15px;
        font-weight:600;
    }
    #fives {
       margin-top:93px;
        /*font-family:Lucida Handwriting;*/
        font-family:'Century Gothic';
        /*font-size:13px;*/
        font-size:15px;
        font-weight:600;
    }

   /*.modal
    {
        position: fixed;
        top: 0;
        left: 0;
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
        width: 250px;
        height: 300px;
        display: none;
        position: fixed;
    }*/

</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container" id="full">
            <div class="row" style="margin-bottom:1%">
<%--                <form id="form1" runat="server">--%>
                  <div class="col-lg-2 col-xs-0"></div>
                  <div class="col-lg-9" >
                    <div id="total" style="margin-top:100px;">
                    <a href="CustomerNew.aspx" class="btn btn-lg" role="button" id="one"><div id="ones">New Customer</div></a>
                    <a href="CustomeSearchPage.aspx" class="btn btn-lg" role="button" id="two"><div id="twos">Search Customer</div></a>
                    <a href="CustomeSearchPage.aspx"  class="btn btn-lg" role="button" id="three"><div id="threes">New Loan</div></a>
                    <a href="Report1.aspx" class="btn btn-lg" role="button" id="four"><div id="fours">Reports</div></a>
<%--                    <a href="#" class="btn btn-lg" role="button" id="five"><div id="fives">Admin</div></a>               --%>
                    </div> 
                    </div>  
                <div class="col-lg-1" id="thi"></div>
<%--               </form>--%>
             </div>
        </div>
</asp:Content>
