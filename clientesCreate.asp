<%
    Set cnn = Server.CreateObject("ADODB.Connection")
    cnn.open Application("connectionString")

    Set reader = Server.CreateObject("ADODB.recordset")
    reader.Open "SELECT * FROM Clientes WHERE RFC = '" & Request.form("RFC") & "'" , cnn
    If reader.EOF Then
        cnn.Execute("insert into Clientes (Nombre,Estado,Localidad,Adeudo,Vence,RFC,Moral) values ('" & Request.form("Nombre") &  "','" & Request.form("Estado") &  "','" & Request.form("Localidad") &  "'," & Request.form("Adeudo") &  ",'" & Request.form("Vence") &  "','" & Request.form("RFC") &  "'," & Request.form("Moral") &  ")")
        Response.Redirect("/?page=clientes")
    Else
        rfc_error = True
%>
    <!--#include file="clientesNew.asp"-->
<% End If %>