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
  reader.Open "SELECT * FROM Personas;", Application("cnn")
  Do While reader.EOF
    Response.Write("<tr>")
    for each x in reader.Fields
      Response.Write("<td>" & x & "</td>")
    Next
    Response.Write("</tr>")
  Loop
  reader.Close()
%>
  </tbody>
  <tfoot>
    <tr>
      <td colspan="5"><button type="button" class="btn btn-primary">Guardar</button></td>
    </tr>
  </tfoot>
</table>