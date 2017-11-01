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

    protected void Page_PreRenderComplete(object sender, EventArgs e)
    {
        if (FormView1.CurrentMode == FormViewMode.Edit)
        {
            ArrayList ids = new ArrayList();
            DropDownList local = (DropDownList)FormView1.FindControl("ddLocalidades");
            foreach (ListItem i in local.Items)
                ids.Add(i.Value);

            if(FormView1.DataItem != null && ids.Contains(((DataRowView)FormView1.DataItem).Row["localidad_id"].ToString()))
                local.SelectedValue = ((DataRowView)FormView1.DataItem).Row["localidad_id"].ToString();
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
        DropDownList local = (DropDownList)FormView1.FindControl("ddLocalidades");
        e.Command.Parameters["@localidad_id"].Value = local.SelectedValue;
    }
}