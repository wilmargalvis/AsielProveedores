using System;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AsielClientes.EntidadesNegocio;
using System.Data;

namespace AsielClientes.DatosNegocio
{
    public class clsBDActualizacionClientes
    {
        private readonly Database _dbDB = new DatabaseProviderFactory().Create("Instancia ASIEL");
        public void Guardar(clsBEActualizacionClientes objClientes)
        {
            System.Data.Common.DbCommand dbCommandConsulta = null;
            dbCommandConsulta = _dbDB.GetStoredProcCommand("spCliente_Guardar");
            _dbDB.AddInParameter(dbCommandConsulta, "pRazonSocial", DbType.String, objClientes.RazonSocial);
            _dbDB.AddInParameter(dbCommandConsulta, "pDireccion", DbType.String, objClientes.Direccion);
            _dbDB.AddInParameter(dbCommandConsulta, "pCiudad", DbType.String, objClientes.Ciudad);
            _dbDB.AddInParameter(dbCommandConsulta, "pEmail1", DbType.String, objClientes.Email1);
            _dbDB.AddInParameter(dbCommandConsulta, "pEmail2", DbType.String, objClientes.Email2);
            _dbDB.ExecuteNonQuery(dbCommandConsulta);
        }

        public DataTable Consultar()
        {
            System.Data.Common.DbCommand dbCommandConsulta = null;
            dbCommandConsulta = _dbDB.GetStoredProcCommand("spClienteConsultar");
            return _dbDB.ExecuteDataSet(dbCommandConsulta).Tables[0];
        }
    }
}
