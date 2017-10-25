<table class="table">
  <thead>
    <tr>
      <th>Nombre</th>
      <th>Estado</th>
      <th>Localidad</th>
      <th>Adeudo</th>
      <th>Vence</th>
    </tr>
  </thead>

  <tbody>
<%
  Set reader = Server.CreateObject("ADODB.recordset")
  reader.Open "SELECT * FROM Clientes", cnn

  If reader.EOF Then
    Response.Write("No hay clientes") 
  Else
    Do While NOT reader.Eof   
      Response.Write("<tr>")
      Response.Write("<td>" & reader("Nombre") & "</td>")
      Response.Write("<td>" & reader("Estado") & "</td>")
      Response.Write("<td>" & reader("Localidad") & "</td>")
      Response.Write("<td>" & reader("Adeudo") & "</td>")
      Response.Write("<td>" & reader("Vence") & "</td>")
      Response.Write("<td><a href='/?page=clientes&action=edit&id=" & reader("Id") & "'><i class='fa fa-pencil'></i></a></td>")
      Response.Write("</tr>")
      reader.MoveNext
    Loop
  End If
  reader.Close()
%>
  </tbody>
  <tfoot>
    <tr>
      <td colspan="5"><a class="btn btn-primary" href="/?page=clientes&action=new">Nuevo</a></td>
    </tr>
  </tfoot>
</table>