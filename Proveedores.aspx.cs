using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class Proveedores : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        FormView1.Visible = true;
        FormView1.ChangeMode(FormViewMode.Edit);
    }

    protected void FormView1_ModeChanged(object sender, EventArgs e)
    {
        if (FormView1.CurrentMode == FormViewMode.ReadOnly)
        {
            GridView1.Visible = true;
            FormView1.Visible = false;
        }
    }

    protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        FormView1.Visible = true;
        FormView1.ChangeMode(FormViewMode.Insert);
    }


    protected void ProveedoresFormDS_Updating(object sender, SqlDataSourceCommandEventArgs e)
    {
        e.Command.Parameters["@localidad_id"].Value = Request.Form["localidad_id"];
    }
}