<%@ Page Title="" Language="C#" MasterPageFile="~/FinanceProject.Master" AutoEventWireup="true" CodeBehind="loanreportemi.aspx.cs" Inherits="FinanceApplication.loanreportemi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function val() {
            window.print();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--    <form id="form1" runat="server">--%>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">

                            <asp:button runat="server" ID="btn" CssClass="btn btn-primary pull-right" style="margin:10px;font-family:'Century Gothic';font-size:14px;" Text="Excel" OnClick="Button1_Click"/>
    <asp:Button ID="print" Text="Print" runat="server" OnClientClick="val()" style="margin:10px;font-family:'Century Gothic';font-size:14px;" CssClass=" btn btn-primary pull-right" />
    <div id="full" style="margin-top:4%;">
                <div class="form-group">
                    <asp:Label ID="label1" runat="server" CssClass="control-label" Style="font-weight: bold;font-family:'Century Gothic';font-size:18px;">Loan Created Date</asp:Label>
                    <div class="input-group">
                    <asp:Textbox ID="ddate"  runat="server" CssClass="form-control" Style="font-family:'Century Gothic';font-size:16px;"></asp:Textbox>
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="label2" runat="server" CssClass="control-label" Style="font-weight: bold;font-family:'Century Gothic';font-size:18px;">Customer ID</asp:Label>
                    <div class="input-group">
                    <asp:Textbox ID="iId"  runat="server" CssClass="form-control" Style="font-family:'Century Gothic';font-size:16px;"></asp:Textbox>
                          <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="label3" runat="server" CssClass="control-label" Style="font-weight: bold;font-family:'Century Gothic';font-size:18px;">Loan ID</asp:Label>
                    <div class="input-group">
                    <asp:TextBox ID="llid" runat="server" CssClass="form-control" Style="font-family:'Century Gothic';font-size:16px;"></asp:TextBox>
                                   <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" CssClass="control-label" Style="font-weight: bold;font-family:'Century Gothic';font-size:18px;">Principal Amount</asp:Label>
                    <div class="input-group">
                    <asp:textbox ID="ppamount" runat="server" CssClass="form-control" Style="font-family:'Century Gothic';font-size:16px;"></asp:textbox>
                                                            <span class="input-group-addon">$</span>
</div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label5" runat="server" CssClass="control-label" Style="font-weight: bold;font-family:'Century Gothic';font-size:18px;">Interest</asp:Label>
                    <div class="input-group">
                    <asp:Label ID="iinterest"  runat="server" CssClass="form-control" Style="font-family:'Century Gothic';font-size:16px;"></asp:Label>
                                                            <span class="input-group-addon">$</span>
</div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label6" runat="server" CssClass="control-label" Style="font-weight: bold;font-family:'Century Gothic';font-size:18px;">Months</asp:Label>
                    <div class="input-group">
                    <asp:Label ID="mmonths"  runat="server" CssClass="form-control" Style="font-family:'Century Gothic';font-size:16px;"></asp:Label>
                                                            <span class="input-group-addon">M</span>
</div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label7" runat="server" CssClass="control-label" Style="font-weight: bold;font-family:'Century Gothic';font-size:18px;">Loan Type</asp:Label>
                    <div class="input-group">
                    <asp:Label ID="lloantype"  runat="server" CssClass="form-control" Style="font-family:'Century Gothic';font-size:16px;"></asp:Label>
                                                            <span class="input-group-addon">T</span>
</div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label8" runat="server" CssClass="control-label" Style="font-weight: bold;font-family:'Century Gothic';font-size:18px;">Total Amount</asp:Label>
                    <div class="input-group">
                    <asp:Label ID="ttotalamount" runat="server" CssClass="form-control" Style="font-family:'Century Gothic';font-size:16px;"></asp:Label>
                                                            <span class="input-group-addon">$</span>
</div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label9" runat="server" CssClass="control-label" Style="font-weight: bold;font-family:'Century Gothic';font-size:18px;">Total Interest</asp:Label>
                    <div class="input-group">
                    <asp:Label ID="ttotalinterest"  runat="server" CssClass="form-control" Style="font-family:'Century Gothic';font-size:16px;"></asp:Label>
                                                            <span class="input-group-addon">$</span>
</div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label10" runat="server" CssClass="control-label" Style="font-weight: bold;font-family:'Century Gothic';font-size:18px;">EMI</asp:Label>
                    <div class="input-group">
                    <asp:Label ID="eemi"  runat="server" CssClass="form-control" Style="font-family:'Century Gothic';font-size:16px;"></asp:Label>
                                                            <span class="input-group-addon">$</span>
</div>
                </div>
        </div>
            </div>
            <div class="col-md-2"></div>
        </div>
<%--    </form>--%>
</asp:Content>
