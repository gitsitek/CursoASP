<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="Pedidos.aspx.cs" Inherits="Pedidos" %>

<%-- Add content controls here --%>
<form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableModelValidation="True">
        <Columns>
            <asp:BoundField DataField="NombreCliente" HeaderText="NombreCliente" SortExpression="NombreCliente" />
            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
            <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:core_v2ConnectionString %>" SelectCommand="select top 10 f.NombreCliente,m.id,m.Descripcion,m.Cantidad
from MaterialesExcelOCMeQ m inner join meta_filials f
on
	m.clienteId = f.idCliente
where ProveedorID = @ProveedorID">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProveedorID" QueryStringField="ProveedorID" />
        </SelectParameters>
    </asp:SqlDataSource>
</form>

