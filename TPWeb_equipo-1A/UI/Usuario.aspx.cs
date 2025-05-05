using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace UI
{
    public partial class Usuario : System.Web.UI.Page
    {
        private bool UsuarioNuevo { get; set; } = true;
        private bool datosModificados { get; set; } = false;
        private Cliente clienteAux { get; set; }

        private ClienteManager clienteManager = new ClienteManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            clienteAux = new Cliente();
            if (!IsPostBack)
            {
                //Por si quiere ingresar sin haber puesto el cupón ni el documento
                //if (Session["documento"] == null || Session["codigoVoucher"] == null)
                if (Session["codigoVoucher"] == null)
                {
                    Response.Redirect("Inicio.aspx", true);
                }

                List<Cliente> listaClientes = clienteManager.ListarClientes();
                Session["Documento"] = 323332; //Documento de prueba, eliminar después
                foreach (var item in listaClientes)
                {
                    if (item.Documento == Session["documento"].ToString())
                    {
                        clienteAux = item;
                        lblDocumento.InnerText = "Documento " + item.Documento;
                        lblConfirmarDatos.InnerText = "Confirme que los datos son correctos";
                        txtNombre.Text = item.Nombre;
                        txtApellido.Text = item.Apellido;
                        txtEmail.Text = item.Email;
                        txtDireccion.Text = item.Direccion;
                        txtCiudad.Text = item.Ciudad;
                        txtCP.Text = item.CP.ToString();
                        UsuarioNuevo = false;
                    }
                }
                if (UsuarioNuevo)
                {
                    activarTxTs();
                }
            }
            else
            {
                datosModificados = true;
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {

            //Queda feo, lo sé, pero es más legible
            int valorAux = 0;
            if (datoVacio(txtNombre.Text) || datoVacio(txtApellido.Text)  ||
                datoVacio(txtEmail.Text)  || datoVacio(txtDireccion.Text) ||
                datoVacio(txtCiudad.Text) || !Int32.TryParse(txtCP.Text, out valorAux))
            {
                lblAceptar.InnerText = "Por favor ingrese valores correctos en todos los campos";
            }
            else
            {
                clienteAux.Documento = Session["Documento"].ToString();
                clienteAux.CP = valorAux;
                clienteAux.Nombre = txtNombre.Text;
                clienteAux.Apellido = txtApellido.Text;
                clienteAux.Direccion = txtDireccion.Text;
                clienteAux.Email = txtEmail.Text;
                clienteAux.Ciudad = txtCiudad.Text;
                if (datosModificados)
                {
                    clienteManager.modificarCliente(clienteAux);
                }
                else
                {
                    clienteManager.agregarCliente(clienteAux);
                }


            }
        }

        private bool datoVacio(string revisarValor)
        {
            if (revisarValor == null || revisarValor == "")
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        protected void btnModificarDatos_Click(object sender, EventArgs e)
        {
            activarTxTs();
        }

        protected void activarTxTs()
        {
            txtNombre.ReadOnly = false;
            txtApellido.ReadOnly = false;
            txtEmail.ReadOnly = false;
            txtDireccion.ReadOnly = false;
            txtCiudad.ReadOnly = false;
            txtCP.ReadOnly = false;
            datosModificados = true;
            btnModificarDatos.Visible = false;
        }
    }
}