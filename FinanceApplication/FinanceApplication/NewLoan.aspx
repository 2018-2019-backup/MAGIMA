<%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" CodeBehind="NewLoan.aspx.cs" Inherits="FinanceApplication.NewLoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <%--<script>
    function val() {
        if (document.getElementById('<%= id.ClientID%>').value == "") {
                 alert("Enter The Customer Id");
                 return false;
             }
             if (document.getElementById('<%= principal.ClientID%>').value == "") {
                 alert("Enter The Principal Amount");
                 return false;
             }
             if (document.getElementById('<%= Interest.ClientID%>').value == "") {
                 alert("Enter The Interest Per Year");
                 return false;
             }
             if (document.getElementById('<%= Months.ClientID%>').value == "") {
                 alert("Enter The Months ");
                 return false;
             }

             var rb = document.getElementById("<%=type.ClientID%>");
             var radio = rb.getElementsByTagName("input");
             var isChecked = false;
             for (var i = 0; i < radio.length; i++) {
                 if (radio[i].checked) {
                     isChecked = true;
                     break;
                 }
             }
             if (!isChecked) {
                 alert("Please select an option!");
                 return false;
             }
             if (document.getElementById('<%= Doc.ClientID%>').value == "") {
                 alert("Enter The Doc Submitted");
                 return false;
             }
             if (document.getElementById('<%= Guardian.ClientID%>').value == "") {
                 alert("Enter The Guardian Name");
                 return false;
             }

         }


    </script>--%>

    <style>
        body {
            overflow: hidden;
        }
        /*#well {
            margin-left:5%;
            /*margin-right:20%;*/
            /*width:450px;
            background-color:ghostwhite;
            border-color:blue;
            
        }*/
        #Label1, #Label2, #Interest1,#month,#type1, #Docs, #Guardiann{
            /*font-family:cursive;*/
            /*font-family:'Century Gothic';
            font-size:18px;*/
            color:black;
        }
        #id, #principal, #Interest, #Months, #Doc,#Guardian {
            width:400px;
            /*font-family:'Century Gothic';
            font-size:16px;*/
        }
        #btn {
            background-color:blue;
            color:white;
            margin-left:150px;
                        font-family:'Century Gothic';
            font-size:14px;
        }
    </style>

<%--<script type="text/javascript">
    function ShowHide(table) {
        var radioButton = table.getElementsByTagName('input');
        for (var i = 0; i < radioButton.length; i++) {
            if (radioButton[i].checked) {
                document.getElementById("<%=month.ClientID %>").style.display = radioButton[i].value == 2 ? "block" : "none";
                document.getElementById("<%=Months.ClientID %>").style.display = radioButton[i].value == 2 ? "block" : "none";
            }
        }
    }
</script>--%>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container"> 
     <div class="row">
   
     <div class="col-lg-2"></div>
         <div class="col-lg-8">
<%--    <form id="form1" runat="server" style="color:black;">         --%>
<div class="form-group">
<asp:Label ID="Label1" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Customer ID</b></asp:Label>
<asp:TextBox ID="id" runat="server" CssClass="form-control" ReadOnly="true" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
</div>
<div class="form-group">
<asp:Label ID="Label2" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Principal Amount</b></asp:Label>
<div class="input-group">
<asp:TextBox ID="principal" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
    <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
</div>
    </div>
<div class="form-group">
<asp:Label ID="Interest1" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Interest % Per Month</b></asp:Label>
<div class="input-group">
<asp:TextBox ID="Interest" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
 <span class="input-group-addon">%</span>
</div>
</div>
<div class="form-group">
<asp:Label ID="month" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Months</b></asp:Label>
<asp:TextBox ID="Months" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
            </div>
             <div class="form-group">
<asp:Label ID="type1" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"></asp:Label>
<asp:RadioButtonList ID="type" runat="server" AutoPostBack="true" OnTextChanged="type_SelectedIndexChanged"  style="font-family:'Century Gothic';font-size:16px;"  >
    <asp:ListItem Text="interest"  Value="1" >Interest</asp:ListItem>
    <asp:ListItem Text="emi"  Value="2">EMI</asp:ListItem>
</asp:RadioButtonList>
</div>
             <div class="form-group">
<asp:Label ID="Docs" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Doc Submitted</b></asp:Label>
<div class="input-group">
<asp:TextBox ID="Doc" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
    <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
</div>
</div>
             <div class="form-group">
<asp:Label ID="Guardiann" runat="server" CssClass="control-label" style="font-family:'Century Gothic';font-size:18px;"><b>Guardian Name</b></asp:Label>
<div class="input-group">
<asp:TextBox ID="Guardian" runat="server" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
</div>
</div>
<div style="text-align:center;">
    <asp:Button ID="btn" runat="server"  CssClass="btn btn-primary" Text="Preview" OnClick="btn_Click"/>
     <asp:Button ID="cancel" runat="server"  CssClass="btn btn-primary" Text="Cancel" OnClick="cancel_Click"/>
    </div>
<%--        </form>--%>
</div>
         <div class="col-lg-2"></div>
    
    
         </div>
</div>

</asp:Content>
