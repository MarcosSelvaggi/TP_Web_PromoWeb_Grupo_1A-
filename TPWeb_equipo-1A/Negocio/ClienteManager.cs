using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class ClienteManager
    {
        public List<Cliente> ListarClientes()
        {
            List<Cliente> listaClientes = new List<Cliente>();
            AccesoADatos conexion = new AccesoADatos();

            try
            {
                string query = "Select Id, Documento, Nombre, Apellido, Email, Direccion, Ciudad, CP from Clientes";
                conexion.setearConsulta(query);
                conexion.ejecutarQuery();

                while (conexion.Lector.Read())
                {
                    Cliente aux = new Cliente();
                    aux.Id = (int)conexion.Lector["ID"];
                    aux.Documento = (string)conexion.Lector["Documento"];
                    aux.Nombre = (string)conexion.Lector["Nombre"];
                    aux.Apellido = (string)conexion.Lector["Apellido"];
                    aux.Email = (string)conexion.Lector["Email"];
                    aux.Direccion = (string)conexion.Lector["Direccion"];
                    aux.Ciudad= (string)conexion.Lector["Ciudad"];
                    aux.CP = (int)conexion.Lector["CP"];

                    listaClientes.Add(aux);
                }

            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                conexion.cerrarConexion();
            }
            return listaClientes;
        }
    }
}
