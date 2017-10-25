<%
    Set reader = Server.CreateObject("ADODB.recordset")
    reader.Open "SELECT * FROM Clientes WHERE Id = " & Request.QueryString("Id"), cnn

    If Not reader.EOF Then
        nombre = reader("Nombre")
        estado = reader("Estado")
        localidad = reader("Localidad")
        adeudo = reader("Adeudo")
        vence = reader("Vence")
        rfc = reader("RFC")
        moral = reader("Moral")
    End If

    reader.Close()
%>
<h1>Edicion de cliente</h1>
<form method="POST" action="/?page=clientes&action=update">
    <!--#include file="clientesForm.asp"-->
</form>
<br />
<br />