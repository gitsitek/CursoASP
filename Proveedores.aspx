<%@ Page Title="" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Proveedores.aspx.cs" Inherits="Proveedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" Runat="Server"> 
    <form id="form1" runat="server">
        <h1>Proveedores</h1>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Nuevo" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table" DataKeyNames="Id" DataSourceID="ProveedoresDS" EnableModelValidation="True" BorderStyle="None" GridLines="None" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
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
                <div style="margin-top:100px">
                <div class="input-group">
                    <div class="input-group-addon">Nombre</div>
                    <asp:TextBox ID="NombreTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Nombre") %>' required />
                </div>
                <br />
                <div class='input-group'>
                    <div class="input-group-addon">Estado</div>
                    <select id="estados"></select>
                </div>
                <div class='input-group'>
                    <div class="input-group-addon">Ciudad</div>
                    <select id="ciudades" name="localidad_id"></select>
                </div>
                <br />
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
                    </div>
            </EditItemTemplate>
            <InsertItemTemplate>
                Nombre:
                <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
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
        <asp:SqlDataSource ID="ProveedoresFormDS" runat="server" ConnectionString="<%$ ConnectionStrings:CursoASPConnectionString %>" DeleteCommand="DELETE FROM [Proveedores] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Proveedores] ([Nombre], [RFC], [Moral], [localidad_id]) VALUES (@Nombre, @RFC, @Moral, @localidad_id)" SelectCommand="SELECT * FROM [Proveedores] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Proveedores] SET [Nombre] = @Nombre, [RFC] = @RFC, [Moral] = @Moral, [localidad_id] = @localidad_id WHERE [Id] = @Id" OnUpdating="ProveedoresFormDS_Updating" >
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="RFC" Type="String" />
                <asp:Parameter Name="Moral" Type="Boolean" />
                <asp:Parameter Name="localidad_id" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="RFC" Type="String" />
                <asp:Parameter Name="Moral" Type="Boolean" />
                <asp:Parameter Name="localidad_id" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
    </form>
    <script>
        $(document).ready(function () {
            $.ajax({
                url: "Localidades.asmx/GetEstados",
                method: "POST"
            }).done(function (data) {
                estados = JSON.parse(data.getElementsByTagName("string")[0].innerHTML);
                for (k in estados) 
                    $("select#estados").append("<option value=" + k + ">" + estados[k] + "</option>");
                $("select#estados").change();
            });

            $("select#estados").change(function () {
                $.ajax({
                    url: "Localidades.asmx/GetCiudades",
                    method: "POST",
                    data: "padre_id="+$(this).val()
                }).done(function (data) {
                    $("select#ciudades option").remove();
                    ciudades = JSON.parse(data.getElementsByTagName("string")[0].innerHTML);
                    for (k in ciudades)
                        $("select#ciudades").append("<option value=" + k + ">" + ciudades[k] + "</option>");
                });
            });
        });
</script>
</asp:Content> 