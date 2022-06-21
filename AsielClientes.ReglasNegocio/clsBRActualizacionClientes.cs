using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AsielClientes.EntidadesNegocio;
using AsielClientes.DatosNegocio;
using System.Data;

namespace AsielClientes.ReglasNegocio
{
    public class clsBRActualizacionClientes
    {
        private readonly clsBDActualizacionClientes clsBDActualizacionClientes = new clsBDActualizacionClientes();
        public void Guardar(clsBEActualizacionClientes objClientes)
        {
            clsBDActualizacionClientes.Guardar(objClientes);
        }

        public DataTable Consultar()
        {
            return clsBDActualizacionClientes.Consultar();
        }
    }
}
