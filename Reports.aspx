<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Reports.aspx.cs" Inherits="Reports" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" Runat="Server">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="100%" ProcessingMode="Remote" ShowZoomControl="False" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%">
            <ServerReport ReportPath="/ReportesASP/Proveedores" />
        </rsweb:ReportViewer>
    </form>
</asp:Content> 
