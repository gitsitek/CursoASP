<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Proveedores.aspx.cs" Inherits="Proveedores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" Runat="Server">
    <form id="form1" runat="server">
        <h1>Proveedores</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table" DataKeyNames="Id" DataSourceID="ProveedoresDS" EnableModelValidation="True" BorderStyle="None" GridLines="None">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                <asp:BoundField DataField="Localidad" HeaderText="Localidad" SortExpression="Localidad" />
                <asp:BoundField DataField="Adeudo" HeaderText="Adeudo" SortExpression="Adeudo" />
                <asp:BoundField DataField="Vence" HeaderText="Vence" SortExpression="Vence" />
                <asp:BoundField DataField="RFC" HeaderText="RFC" SortExpression="RFC" />
                <asp:CheckBoxField DataField="Moral" HeaderText="Moral" SortExpression="Moral" />
            </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="ProveedoresDS" runat="server" ConnectionString="<%$ ConnectionStrings:CursoASPConnectionString %>" DeleteCommand="DELETE FROM [Clientes] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Clientes] ([Nombre], [Estado], [Localidad], [Adeudo], [Vence], [RFC], [Moral]) VALUES (@Nombre, @Estado, @Localidad, @Adeudo, @Vence, @RFC, @Moral)" SelectCommand="SELECT * FROM [Clientes]" UpdateCommand="UPDATE [Clientes] SET [Nombre] = @Nombre, [Estado] = @Estado, [Localidad] = @Localidad, [Adeudo] = @Adeudo, [Vence] = @Vence, [RFC] = @RFC, [Moral] = @Moral WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Estado" Type="String" />
                    <asp:Parameter Name="Localidad" Type="String" />
                    <asp:Parameter Name="Adeudo" Type="Decimal" />
                    <asp:Parameter DbType="Date" Name="Vence" />
                    <asp:Parameter Name="RFC" Type="String" />
                    <asp:Parameter Name="Moral" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Estado" Type="String" />
                    <asp:Parameter Name="Localidad" Type="String" />
                    <asp:Parameter Name="Adeudo" Type="Decimal" />
                    <asp:Parameter DbType="Date" Name="Vence" />
                    <asp:Parameter Name="RFC" Type="String" />
                    <asp:Parameter Name="Moral" Type="Boolean" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        
    </form>
</asp:Content>

