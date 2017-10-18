<%
    Application("connectionString") = "Provider=SQLOLEDB;Server=localhost;Database=CursoMVC;UID=sa;PWD=sitekcode"
    Set cnn = Server.CreateObject("ADODB.Connection")
    cnn.ConnectionString = Application("connectionString")
    cnn.Provider = "SQLOLEDB"
    cnn.open 
    Application("cnn") = cnn
%>