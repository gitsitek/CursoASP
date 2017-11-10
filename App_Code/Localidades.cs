using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
using System.Web.Script.Serialization;

/// <summary>
/// Summary description for Localidades
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
public class Localidades : System.Web.Services.WebService
{

    public Localidades()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public string GetEstados()
    {
        DataSet datos = new DataSet();
        using (SqlConnection connection = new SqlConnection("Data Source=localhost;Initial Catalog=CursoASP;Integrated Security=True;UID=sa;PWD=sitekcode;"))
        {
            connection.Open();
            string queryString = "SELECT * FROM Localidades Where padre_id is null";
            SqlDataAdapter adapter = new SqlDataAdapter(queryString, connection);
            adapter.Fill(datos, "Localidades");
            connection.Close();
        }

        Dictionary<string, string> lista = new Dictionary<string, string>();
        foreach (DataRow r in datos.Tables["Localidades"].Rows)
            lista.Add(r["id"].ToString(),r["Nombre"].ToString());
        return new JavaScriptSerializer().Serialize(lista); ;
    }

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public string GetCiudades(int padre_id)
    {
        DataSet datos = new DataSet();
        using (SqlConnection connection = new SqlConnection("Data Source=localhost;Initial Catalog=CursoASP;Integrated Security=True;UID=sa;PWD=sitekcode;"))
        {
            connection.Open();
            string queryString = String.Format("SELECT * FROM Localidades Where padre_id = {0}", padre_id);
            SqlDataAdapter adapter = new SqlDataAdapter(queryString, connection);
            adapter.Fill(datos, "Localidades");
            connection.Close();
        }

        Dictionary<string, string> lista = new Dictionary<string, string>();
        foreach (DataRow r in datos.Tables["Localidades"].Rows)
            lista.Add(r["id"].ToString(), r["Nombre"].ToString());
        return new JavaScriptSerializer().Serialize(lista); ;
    }

    public class Localidad
    {
        int _int;
        string _nombre;
        public Localidad()
        {
        }

        public Localidad(int id, string nombre)
        {
            this.Id = id;
            this.Nombre = nombre;
        }
        int Id
        {
            get { return _int; }
            set { _int = value; }
        }
        string Nombre
        {
            get { return _nombre; }
            set { _nombre = value; }
        }
    }
}
