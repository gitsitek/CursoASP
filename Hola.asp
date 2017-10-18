<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<title>Hola <%= Request.QueryString("nombre") %></title>
	</head>
	<body>
        <% For i=1 To 10 %>
		    Hola <%= Request.QueryString("nombre") %> <br/>
        <% Next %>
	</body>
</html>
<%
Set cnn = Server.CreateObject("ADODB.Connection")
cnn.open "PROVIDER=SQLOLEDB;DATA SOURCE=sqlservername;UID=username;PWD=password;DATABASE=mydatabase "
'set param = cmd.CreateParameter("@id", adInteger, adInput,0,0)
%>
