using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationLogin.Vistas.Login
{
    public partial class Pag1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["User"] == null)
                    Response.Redirect("Regitro.aspx");
                Nombre.Text = Session["User"].ToString();
            }


        }

        protected void btnsal_Click(object sender, EventArgs e)
        {
          
            Response.Redirect("/Vistas/Login/Registro.aspx");
        }
    }
}