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
  Set cnn = Server.CreateObject("ADODB.Connection")
  cnn.open Application("connectionString")
  Set reader = Server.CreateObject("ADODB.recordset")
  reader.Open "SELECT * FROM Clientes", cnn

  If reader.EOF Then
    Response.Write("No records returned.") 
  Else
    Do While NOT reader.Eof   
      Response.Write("<tr>")
      Response.Write("<td>" & reader("Nombre") & "</td>")
      Response.Write("<td>" & reader("Estado") & "</td>")
      Response.Write("<td>" & reader("Localidad") & "</td>")
      Response.Write("<td>" & reader("Adeudo") & "</td>")
      Response.Write("<td>" & reader("Vence") & "</td>")
      Response.Write("</tr>")
      reader.MoveNext
    Loop
  End If
  reader.Close()
%>
  </tbody>
  <tfoot>
    <tr>
      <td colspan="5"><button type="button" class="btn btn-primary">Guardar</button></td>
    </tr>
  </tfoot>
</table>