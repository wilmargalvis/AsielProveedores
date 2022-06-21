using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AsielClientes.EntidadesNegocio;
using AsielClientes.ReglasNegocio;

namespace AsielClientes.Web
{
    public partial class wfDatosCliente : System.Web.UI.Page
    {
        private readonly clsBEActualizacionClientes objClientes = new clsBEActualizacionClientes();
        private readonly clsBRActualizacionClientes clsBRActualizacionClientes = new clsBRActualizacionClientes();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {

                //DataTable dt = clsBRActualizacionClientes.Consultar();
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            LlenarEntidad();
            clsBRActualizacionClientes.Guardar(objClientes);
        }

        private void LlenarEntidad()
        {
            objClientes.RazonSocial = txtRazonSocial.Text;
            objClientes.Ciudad = txtCiudad.Text;
            objClientes.Direccion = txtDireccion.Text;
            objClientes.Email1 = txtEmail1.Text;
            objClientes.Email2 = txtEmail2.Text;
        }
    }
}