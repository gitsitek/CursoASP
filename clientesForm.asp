<div class="input-group">
        <div class="input-group-addon">Nombre</div>
        <input type="text" class="form-control" name="Nombre" value='<% If Request.form("Nombre") Then Response.Write(Request.form("Nombre")) Else Response.Write(nombre) %>' required/>
    </div>
    <br />
    <div class="input-group">
        <div class="input-group-addon">Estado</div>
        <input type="text" class="form-control" name="Estado" value='<% Response.Write(Request.form("Estado")) %>'/>
    </div>
    <br />
    <div class="input-group">
        <div class="input-group-addon">Localidad</div>
        <input type="text" class="form-control" name="Localidad"  value='<% Response.Write(Request.form("Localidad")) %>'/>
    </div>
    <br />
    <div class="input-group">
        <div class="input-group-addon">Adeudo</div>
        <input type="number" class="form-control" name="Adeudo" required  value='<% Response.Write(Request.form("Adeudo")) %>'/>
    </div>
    <br />
    <div class="input-group">
        <div class="input-group-addon">Vence</div>
        <input type="date" class="form-control" name="Vence" value='<% Response.Write(Request.form("Vence")) %>'/>
    </div>
    <br />
    <div class='input-group <% If rfc_error Then Response.Write("has-error")%>'>
        <div class="input-group-addon">RFC</div>
        <input type="text" class="form-control" name="RFC" pattern="^([A-Z,Ñ,&]{3,4}([0-9]{2})(0[1-9]|1[0-2])(0[1-9]|1[0-9]|2[0-9]|3[0-1])[A-Z|\d]{3})$" required  value='<% Response.Write(Request.form("RFC")) %>'/>

    </div>
    <br />
    <div class="input-group">
        <div class="input-group-addon">Tipo de razon social</div>
        <select class="custom-select" name="Moral">
            <option value="0" <% If Request.form("Moral") = 0 Then Response.Write("selected") %> >Fisica</option>
            <option value="1" <% If Request.form("Moral") = 1 Then Response.Write("selected") %> >Moral</option>
        </select>
    </div>
    <br />
    <div class="input-group" style="text-align:center">
        <a class="btn btn-primary" href="/?page=clientes">Cancelar</a>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit"  class="btn btn-primary"/>
    </div>