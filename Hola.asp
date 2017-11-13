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
        <iframe width="100%" height="500px" src="http://localhost/ReportServer/Pages/ReportViewer.aspx?%2fReportesASP%2fProveedores&rs:Command=Render">

        </iframe>
	</body>
</html>