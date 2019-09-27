using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationLogin.Vistas.Login
{
    public partial class Registro : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            NoRegistrado.Visible = false;
            Exito.Visible = false;
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            String Name = Nom_User.Text;
            String Pass = Contra.Text;

            if (Name.Equals(Session["User"]))
            {
                if (Pass.Equals(Session["Con"]))
                {
                    Response.Redirect("/Vistas/Login/Pag1.aspx");
                }
            }
            else{
                NoRegistrado.Visible = true;
            }
   
        }

        protected void Reg_Click(object sender, EventArgs e)
        {
            String Name = Nom_User.Text;
            String Pass = Contra.Text;
            String Pass2 = Contra2.Text;

            if (Pass.Equals("") && Pass2.Equals(""))
            {
                NoRegistrado.Visible = true;
            }
            else if (Pass.Equals(Pass2))
            {
                Session["User"] = Name.ToString();
                Session["Con"] = Pass.ToString();

                Exito.Visible = true;
            }
            else {
                NoRegistrado.Visible = true;
            }
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.Url.AbsoluteUri);
        }
    }
}