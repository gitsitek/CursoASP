<div class="content-wrapper">
    <div class="container-fluid">
      <div>

        <% If Request.QueryString("page") = "clientes" Then %>
          <% Select Case Request.QueryString("action") %>
          <%  Case "new" %>
            <!--#include file="clientesNew.asp"-->
          <%  Case "create" %>
            <!--#include file="clientesCreate.asp"-->
          <%  Case "edit" %>
            <!--#include file="clientesEdit.asp"-->
          <%  Case "update" %>
            <!--#include file="clientesUpdate.asp"-->
          <%  Case Else %>
            <!--#include file="clientes.asp"-->
          <% End Select%>
        <% End If %>

        <% If Request.QueryString("page") = "proveedores" Then %>
          <% If Request.QueryString("action") = "new" Then %>
            <!--#include file="proveedoresNew.asp"-->
          <% Else %>
            <!--#include file="proveedores.asp"-->
          <% End If %>
        <% End If %>
        
      </div>
      <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
    </div>
  </div>
  <!-- /.container-fluid-->
  <!-- /.content-wrapper-->