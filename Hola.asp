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