<%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" CodeBehind="CustomerReportDetails.aspx.cs" EnableEventValidation="false" Inherits="FinanceApplication.CustomerReportDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<%--                    <script>
                        function exportTableToExcel(tableID, filename = ''){
                            var downloadLink;
                            var dataType = 'application/vnd.ms-excel';
                            var tableSelect = document.getElementById(tableID);
                            var tableHTML = tableSelect.outerHTML.replace(/ /g, '%20');
    
                            // Specify file name
                            filename = filename?filename+'.xls':'excel_data.xls';
    
                            // Create download link element
                            downloadLink = document.createElement("a");
    
                            document.body.appendChild(downloadLink);
    
                            if(navigator.msSaveOrOpenBlob){
                                var blob = new Blob(['\ufeff', tableHTML], {
                                    type: dataType
                                });
                                navigator.msSaveOrOpenBlob( blob, filename);
                            }else{
                                // Create a link to the file
                                downloadLink.href = 'data:' + dataType + ', ' + tableHTML;
    
                                // Setting the file name
                                downloadLink.download = filename;
        
                                //triggering the function
                                downloadLink.click();
                            }
                        }
    </script>--%>
     <script>
         function val() {
             window.print();

         }
    </script>
    <style>
        #print {
            margin-left:100px;
        }
        .wide1 {
            text-align:center;
        }
        body {
            overflow-x:hidden;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--         <form id="form1" runat="server" style="margin-bottom:5%">--%>
             
     <div class="container" style="margin-bottom:5%">
            <div class="row">
                <div class="col-lg-2"></div>
<%--                <div class="col-lg-8" style="background-color:white;margin-top:1%;padding:5%;">--%>
                   <div class="col-lg-8">
                       <div class="well">
                           <asp:Button ID="excel" Text="excel" runat="server" OnClick="excel_Click" style="margin:10px;" CssClass=" btn btn-primary pull-right" />
                           <asp:Button ID="print" Text="Print" runat="server" OnClientClick="val()" style="margin:10px;" CssClass=" btn btn-primary pull-right" />
                
                    <h2 style="color:black;font-family:'Century Gothic';"><b>Customer Detail</b></h2>
                    <div class="form-group">
                        <asp:Label ID="lb" style="font-weight:bold;font-family:'Century Gothic';font-size:18px;" runat="server"  CssClass="control-label">Customer Name</asp:Label>
                        <div class="input-group">                           
                        <asp:Textbox ID="ccname"  runat="server" ReadOnly="true" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:Textbox>
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label1" style="font-weight:bold;font-family:'Century Gothic';font-size:18px;" runat="server" CssClass="control-label">Father's Name</asp:Label>
     <div class="input-group">    
                        <asp:Textbox ID="ffname"  runat="server" ReadOnly="true" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:Textbox>
                          <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" style="font-weight:bold;font-family:'Century Gothic';font-size:18px;" runat="server" CssClass="control-label">Date of Birth</asp:Label>
      <div class="input-group">                    
                        <asp:Textbox ID="ddob" runat="server" ReadOnly="true" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:Textbox>
                                 <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
  </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label3" style="font-weight:bold;font-family:'Century Gothic';font-size:18px;" runat="server" CssClass="control-label">Gender</asp:Label>
                          
                         <asp:Textbox ID="ggender" runat="server" ReadOnly="true" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:Textbox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label4" style="font-weight:bold;font-family:'Century Gothic';font-size:18px;" runat="server" CssClass="control-label">Occupation</asp:Label>
           <div class="input-group">               
                        <asp:Textbox ID="ooccupation" runat="server" ReadOnly="true" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:Textbox>
                              <span class="input-group-addon"><i class="glyphicon glyphicon-briefcase"></i></span>
  </div> 
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label5" style="font-weight:bold;font-family:'Century Gothic';font-size:18px;" runat="server" CssClass="control-label">Mobile Number</asp:Label>
           <div class="input-group">               
                        <asp:Textbox ID="mmnumber" runat="server" ReadOnly="true" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:Textbox>
                     <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
  </div>
                    </div>
                                               <div class="form-group">
                        <asp:Label ID="Label13" style="font-weight:bold;font-family:'Century Gothic';font-size:18px;" runat="server" CssClass="control-label">Alternative Mobile Number</asp:Label>
           <div class="input-group">               
                        <asp:Textbox ID="almnumber" runat="server" ReadOnly="true" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:Textbox>
                     <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
  </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label6" style="font-weight:bold;font-family:'Century Gothic';font-size:18px;" runat="server" CssClass="control-label">Landline Number</asp:Label>
               <div class="input-group">            
                        <asp:Textbox ID="llnumber" runat="server" ReadOnly="true" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:Textbox>
                       <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
  </div> 
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label7" style="font-weight:bold;font-family:'Century Gothic';font-size:18px;" runat="server" CssClass="control-label">ID Proof</asp:Label>
                         
                        <asp:Textbox ID="pproof" runat="server" ReadOnly="true" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:Textbox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label8" style="font-weight:bold;font-family:'Century Gothic';font-size:18px;" runat="server" CssClass="control-label">Proof Number</asp:Label>
      <div class="input-group">                   
                        <asp:Textbox ID="iidnum" runat="server" ReadOnly="true" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:Textbox>
                                                                       <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
  </div> 
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label9" style="font-weight:bold;font-family:'Century Gothic';font-size:18px;" runat="server" CssClass="control-label">Address</asp:Label>

                        <asp:Textbox ID="aaddress" runat="server" ReadOnly="true" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:Textbox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label10" style="font-weight:bold;font-family:'Century Gothic';font-size:18px;" runat="server" CssClass="control-label">City</asp:Label>
    <div class="input-group">                    
                        <asp:Textbox ID="ccity" runat="server" ReadOnly="true" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:Textbox>
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
  </div>
                    </div>
                   
                        <div class="form-group">
                            <asp:Label ID="Label11" style="font-weight:bold;font-family:'Century Gothic';font-size:18px;" runat="server" CssClass="control-label">Reference</asp:Label>
                            
                            <asp:Textbox ID="rReference" runat="server" ReadOnly="true" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:Textbox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label12" style="font-weight:bold;font-family:'Century Gothic';font-size:18px;" runat="server" CssClass="control-label">Reference Relationship</asp:Label>
                            
                            <asp:Textbox ID="rrefrelation" runat="server" ReadOnly="true" CssClass="form-control" style="font-family:'Century Gothic';font-size:16px;"></asp:Textbox>
                        </div>
                       </div>
                                   </div>
       <div class="col-lg-2"></div>
<%--                    <div class="form-group">
                         <input type='file' onchange="readURL(this);" />
                         <img id="blah" src="#" alt="your image" />
                    </div>--%>
                   </div>     
                </div>
<div style="margin-left:3%;">
 <asp:GridView ID="gv" runat="server" AutoGenerateColumns="false" style="text-align:center;font-family:'Century Gothic';" HeaderStyle-Font-Size="11"  HeaderStyle-ForeColor="White" HeaderStyle-BackColor="DarkBlue" HeaderStyle-BorderWidth="3" Width="1200px"  HeaderStyle-HorizontalAlign="Center" CellPadding="10" CellSpacing="10">
     <Columns>
         <asp:BoundField DataField="customerid" HeaderText="S No" ><HeaderStyle CssClass="wide1" /></asp:BoundField> 
         <asp:BoundField DataField="ID" HeaderText="Customer ID" ><HeaderStyle CssClass="wide1" /></asp:BoundField> 
         <asp:BoundField DataField="loanid" HeaderText="Loan ID" ><HeaderStyle CssClass="wide1" /></asp:BoundField> 
         <asp:BoundField DataField="principalamount" HeaderText="principal Amount" ><HeaderStyle CssClass="wide1" /></asp:BoundField> 
         <asp:BoundField DataField="interest" HeaderText="Interest" ><HeaderStyle CssClass="wide1" /></asp:BoundField> 
         <%--<asp:BoundField DataField="months" HeaderText="Months" ><HeaderStyle CssClass="wide1" /></asp:BoundField> --%>
         <asp:BoundField DataField="loantype" HeaderText="Loan Type" ><HeaderStyle CssClass="wide1" /></asp:BoundField> 
         <asp:BoundField DataField="totalamount" HeaderText="Total Amount" DataFormatString="{0:0.00}"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
         <asp:BoundField DataField="totalinterest" HeaderText="Total Interest" DataFormatString="{0:0.00}" ><HeaderStyle CssClass="wide1" /></asp:BoundField> 
         <asp:BoundField DataField="createddate" HeaderText="Loan created Date" ><HeaderStyle CssClass="wide1" /></asp:BoundField> 
                 <%-- <asp:TemplateField HeaderText="Due Report">
                      <HeaderStyle CssClass="wide1" />
             <ItemTemplate>
                 <asp:Button ID="interestdue" Text="Due Report" runat="server" style="font-family:'Century Gothic';width:100%;font-size:14px;" CssClass="btn btn-primary" OnClick="interestdue_Click" />
             </ItemTemplate>
         </asp:TemplateField>--%>
     </Columns>
 </asp:GridView>
    </div>
             <br />
                      <div style="margin-left:3%; margin-bottom:4%">
        <asp:GridView ID="gv2" runat="server" AutoGenerateColumns="false" style="text-align:center"  HeaderStyle-Font-Size="12" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="DarkBlue"  HeaderStyle-BorderWidth="3"  Width="1200px"  HeaderStyle-HorizontalAlign="Center" CellPadding="10" CellSpacing="10">
     <Columns>
         <asp:BoundField DataField="customerid1" HeaderText="S No" ><HeaderStyle CssClass="wide1" /></asp:BoundField> 
         <asp:BoundField DataField="ID" HeaderText="Customer ID" ><HeaderStyle CssClass="wide1" /></asp:BoundField> 
         <asp:BoundField DataField="loanid1" HeaderText="Loan ID" ><HeaderStyle CssClass="wide1" /></asp:BoundField> 
         <asp:BoundField DataField="principalamount1" HeaderText="principal Amount" ><HeaderStyle CssClass="wide1" /></asp:BoundField> 
         <asp:BoundField DataField="interest" HeaderText="Interest" ><HeaderStyle CssClass="wide1" /></asp:BoundField> 
         <asp:BoundField DataField="months" HeaderText="Months" ><HeaderStyle CssClass="wide1" /></asp:BoundField> 
         <asp:BoundField DataField="loantype1" HeaderText="Loan Type" ><HeaderStyle CssClass="wide1" /></asp:BoundField> 
         <asp:BoundField DataField="totalamount" HeaderText="Total Amount" DataFormatString="{0:0.00}"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
         <asp:BoundField DataField="totalinterest" HeaderText="Total Interest" DataFormatString="{0:0.00}"><HeaderStyle CssClass="wide1" /></asp:BoundField> 
         <asp:BoundField DataField="Emi" HeaderText="Emi" DataFormatString="{0:0.00}" ><HeaderStyle CssClass="wide1" /></asp:BoundField> 
         <asp:BoundField DataField="createdate" HeaderText="Loan Created Date" ><HeaderStyle CssClass="wide1" /></asp:BoundField> 
                  <%--<asp:TemplateField HeaderText="Due Report">
                      <HeaderStyle CssClass="wide1" />
             <ItemTemplate>
                 <asp:Button ID="Emidue" Text="Due Report" runat="server" style="font-family:'Century Gothic';width:100%;font-size:14px;" CssClass="btn btn-primary" Onclick="Emidue_Click"/>
             </ItemTemplate>
             </asp:TemplateField>--%>
     </Columns>
 </asp:GridView>
                           </div>

           

             <%--<button onclick="exportTableToExcel('form1')">Export Table Data To Excel File</button>--%>
             
<%--    </form>--%>
</asp:Content>
