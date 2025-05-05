using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace UI
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnValidar_Click(object sender, EventArgs e)
        {
            string codigo = txtCodigoVoucher.Text.Trim();

            if (string.IsNullOrEmpty(codigo))
            {
                lblResultado.Text = "Por favor, ingrese un código.";
                return;
            }

            VoucherManager manager = new VoucherManager();
            bool esValido = manager.ValidarCodigo(codigo);

            if (esValido)
            {
                lblResultado.Text = "El código es válido.";
                Session["codigoVoucher"] = codigo;
                //Response.Redirect("SeleccionarPremio.aspx"); 
            }
            else
            {
                lblResultado.Text = "El código es inválido o ya fue utilizado.";
            }
        }
    }
}