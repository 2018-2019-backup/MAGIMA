<%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="FinanceApplication.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            /*background-image:url("https://www.xmple.com/wallpaper/gradient-blue-linear-purple-2880x1800-c2-00bfff-4b0082-a-270-f-14.svg");*/
            /*background-image:url(https://as2.ftcdn.net/jpg/01/25/21/63/500_F_125216347_SaE6WGjXRAoBoQPZfJbjknsI4zNE8CKQ.jpg);*/
            background-image: url(https://static1.squarespace.com/static/550a10cbe4b03c7ec206488b/55165997e4b0617803522a94/55165997e4b0617803522afa/1427529868195/facete-pink-blue-iphone-6-plus-wallpaper.jpg?format=500w);
            background-size: cover;
            background-repeat: no-repeat;
            height: 1000px;
            overflow:hidden;
           
        }
    </style>
<%--    <script>
        function val()
        {
            var a=document.getElementById("pwd").value;
            var b=document.getElementById("cpwd").value;
            if (a != b)
            {
                alert("Enter the same Password");
            }
        }
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--   <form id="form1" runat="server">--%>
   <div class="row" >
       
        <div class="col-lg-3"></div>
        <div class="col-lg-6 well-lg" style="background-color:white;margin-top:10%;padding:2.5%; opacity:0.8">
                      <h1 style="text-align:center;padding:5px;margin:15px;font-family:'Century Gothic';">Sign Up</h1>
            <div class="form-group">
              <div class="input-group">
                <%--<asp:label ID="lb" runat="server" CssClass="control-label">Name</asp:label>--%>
                  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                <asp:TextBox ID="name" runat="server" CssClass="form-control" Placeholder="User Name" style="font-family:'Century Gothic';"></asp:TextBox>
                </div>
           </div>
               
            <div class="form-group">
                <div class="input-group">
                <%--<asp:label ID="Label1" runat="server" CssClass="control-label">Password</asp:label>--%>
               <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                <asp:TextBox ID="pwd" runat="server" CssClass="form-control" Placeholder="Password" TextMode="Password" style="font-family:'Century Gothic';"></asp:TextBox>
                 </div>
                    </div>
           
            <div class="form-group">
                <div class="input-group">
                <%--<asp:label ID="Label2" runat="server" CssClass="control-label">Confirm Password</asp:label>--%>
                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                <asp:TextBox ID="cpwd" runat="server" CssClass="form-control" Placeholder="Confirm password" TextMode="Password" style="font-family:'Century Gothic';"></asp:TextBox>
            </div>
                </div>

            <div style="text-align:center">
           <asp:Button ID="btn" runat="server" Text="submit" OnClick="btn_Click" CssClass="btn btn-primary" style="color:white;font-family:'Century Gothic';"/> 
                <asp:Button ID="Button1" runat="server" Text="Cancel" CssClass="btn btn-primary" OnClick="Button1_Click" style="color:white;font-family:'Century Gothic';margin:25px;"/>     
            </div>
       </div>
   
        <div class="col-lg-3"></div>
 
   </div>
<%--       </form>    --%>
</asp:Content>
