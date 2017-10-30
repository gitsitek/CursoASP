<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Proveedores.aspx.cs" Inherits="Proveedores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" Runat="Server">
    <form id="form1" runat="server">
        <h1>Proveedores</h1>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Nuevo" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table" DataKeyNames="Id" DataSourceID="ProveedoresDS" EnableModelValidation="True" BorderStyle="None" GridLines="None" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                <asp:BoundField DataField="Localidad" HeaderText="Localidad" SortExpression="Localidad" />
                <asp:BoundField DataField="RFC" HeaderText="RFC" SortExpression="RFC" />
                <asp:CheckBoxField DataField="Moral" HeaderText="Moral" SortExpression="Moral" />
                <asp:BoundField DataField="monto" HeaderText="monto" SortExpression="monto" ReadOnly="True" />
            </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="ProveedoresDS" runat="server" ConnectionString="<%$ ConnectionStrings:CursoASPConnectionString %>" SelectCommand="SELECT * FROM [vw_proveedores]">
            </asp:SqlDataSource>
        
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="ProveedoresFormDS" EnableModelValidation="True" OnItemUpdated="FormView1_ItemUpdated" OnModeChanged="FormView1_ModeChanged">
            <EditItemTemplate>
                <div class="input-group">
                    <div class="input-group-addon">Nombre</div>
                    <asp:TextBox ID="NombreTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Nombre") %>' required />
                </div>
                <br />
                <div class="input-group">
                    <div class="input-group-addon">Estado</div>
                    <asp:TextBox ID="EstadoTextBox" CssClass="form-control" runat="server" Text='<%# Bind("Estado") %>' />
                </div>
                <br />
                <div class="input-group">
                    <div class="input-group-addon">Localidad</div>
                    <asp:TextBox ID="LocalidadTextBox" CssClass="form-control" runat="server" Text='<%# Bind("Localidad") %>' />
                </div>
                <br />
                <div class="input-group">
                    <div class="input-group-addon">Adeudo</div>
                    <asp:TextBox ID="AdeudoTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Adeudo") %>' required />
                </div>
                <br />
                <div class="input-group">
                    <div class="input-group-addon">Vence</div>
                    <asp:TextBox ID="VenceTextBox" runat="server" Text='<%# Bind("Vence") %>'/>
                </div>
                <br />
                <div class='input-group'>
                    <div class="input-group-addon">RFC</div>
                    <asp:TextBox ID="RFCTextBox" runat="server" Text='<%# Bind("RFC") %>' pattern="^([A-Z,Ñ,&]{3,4}([0-9]{2})(0[1-9]|1[0-2])(0[1-9]|1[0-9]|2[0-9]|3[0-1])[A-Z|\d]{3})$" required/>
                </div>
                <br />
                <div class='input-group'>
                    <div class="input-group-addon">Moral</div>
                    <asp:CheckBox ID="MoralCheckBox" runat="server" Checked='<%# Bind("Moral") %>' />
                </div>
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Nombre:
                <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                <br />
                Estado:
                <asp:TextBox ID="EstadoTextBox" runat="server" Text='<%# Bind("Estado") %>' />
                <br />
                Localidad:
                <asp:TextBox ID="LocalidadTextBox" runat="server" Text='<%# Bind("Localidad") %>' />
                <br />
                Adeudo:
                <asp:TextBox ID="AdeudoTextBox" runat="server" Text='<%# Bind("Adeudo") %>' />
                <br />
                Vence:
                <asp:TextBox ID="VenceTextBox" runat="server" Text='<%# Bind("Vence") %>' />
                <br />
                RFC:
                <asp:TextBox ID="RFCTextBox" runat="server" Text='<%# Bind("RFC") %>' />
                <br />
                Moral:
                <asp:CheckBox ID="MoralCheckBox" runat="server" Checked='<%# Bind("Moral") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Nombre:
                <asp:Label ID="NombreLabel" runat="server" Text='<%# Bind("Nombre") %>' />
                <br />
                Estado:
                <asp:Label ID="EstadoLabel" runat="server" Text='<%# Bind("Estado") %>' />
                <br />
                Localidad:
                <asp:Label ID="LocalidadLabel" runat="server" Text='<%# Bind("Localidad") %>' />
                <br />
                Adeudo:
                <asp:Label ID="AdeudoLabel" runat="server" Text='<%# Bind("Adeudo") %>' />
                <br />
                Vence:
                <asp:Label ID="VenceLabel" runat="server" Text='<%# Bind("Vence") %>' />
                <br />
                RFC:
                <asp:Label ID="RFCLabel" runat="server" Text='<%# Bind("RFC") %>' />
                <br />
                Moral:
                <asp:CheckBox ID="MoralCheckBox" runat="server" Checked='<%# Bind("Moral") %>' Enabled="false" />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="ProveedoresFormDS" runat="server" ConnectionString="<%$ ConnectionStrings:CursoASPConnectionString %>" DeleteCommand="DELETE FROM [Proveedores] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Proveedores] ([Nombre], [Estado], [Localidad], [Adeudo], [Vence], [RFC], [Moral]) VALUES (@Nombre, @Estado, @Localidad, @Adeudo, @Vence, @RFC, @Moral)" SelectCommand="SELECT * FROM [Proveedores] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Proveedores] SET [Nombre] = @Nombre, [Estado] = @Estado, [Localidad] = @Localidad, [Adeudo] = @Adeudo, [Vence] = @Vence, [RFC] = @RFC, [Moral] = @Moral WHERE [Id] = @Id">
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
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
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

