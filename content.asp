<div class="content-wrapper">
    <div class="container-fluid">
      <div>
        <% If Request.QueryString("page") = "clientes" Then %>
        <!--#include file="clientes.asp"-->
        <% End If %>
        <% If Request.QueryString("page") = "proveedores" Then %>
        <!--#include file="proveedores.asp"-->
        <% End If %>
      </div>
      <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
    </div>
  </div>
  <!-- /.container-fluid-->
  <!-- /.content-wrapper-->