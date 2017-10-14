<%
    c1 = Array("Cliente 1", "Chihuahua", "Chihuahua", "30,000", "31/10/2017")
    c2 = Array("Cliente 1", "Chihuahua", "Chihuahua", "30,000", "31/10/2017") 
    c3 = Array("Cliente 1", "Chihuahua", "Chihuahua", "30,000", "31/10/2017")
    clientes = Array(c1,c2,c3) 
%>
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
    <% For i=0 To 2 %>
		<tr>
      <% For j=0 To 4 %>
      <td><%= clientes(i)(j) %></td>
      <% Next %>
    </tr>
    <% Next %>
  </tbody>

  <tfoot>
    <tr>
      <td colspan="5"><button type="button" class="btn btn-primary">Guardar</button></td>
    </tr>
  </tfoot>
</table>
<ul>
  <% For i=0 To 2 %>
    <li><%= clientes(i)(0) %></li>
  <% Next %>
</ul>