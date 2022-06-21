<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="wfDatosCliente.aspx.cs" Inherits="AsielClientes.Web.wfDatosCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clientes</title>
    <link rel="stylesheet" href="Layout.css">
</head> 
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <a class="navbar-brand" href="#">Asiel</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarColor01">
           <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Datos
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Documentos</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Impuestos</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contacto</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Más</a>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <a class="dropdown-item" href="#">Something else here</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Separated link</a>
              </div>
            </li>
          </ul>
          <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Buscar">
            <button class="btn btn-secondary my-2 my-sm-0" type="submit">Buscar</button>
          </form>
        </div>
      </nav>
    <div class="border border-light p-5">
        <div class="form-group row">
            <div class="form-group has-success col-sm-4">
                <label class="form-control-label" for="inputValid">Razón Social</label>
                <asp:TextBox runat="server" placeholder="Razón Social" class="form-control is-valid" ID="txtRazonSocial" />
                <div class="valid-feedback">Success! You've done it.</div>
            </div>
            <div class="form-group has-success col-sm-4">
                <label class="form-control-label" for="inputValid">Dirección</label>
                <asp:TextBox runat="server" placeholder="Dirección" class="form-control is-valid" id="txtDireccion" />
                <div class="valid-feedback">Success! You've done it.</div>
            </div>
            <div class="form-group has-success col-sm-4">
                <label class="form-control-label" for="inputValid">Ciudad</label>
                <asp:TextBox runat="server" placeholder="Ciudad" class="form-control is-valid" id="txtCiudad" />
                <div class="valid-feedback">Success! You've done it.</div>
            </div>
        </div>

        <div class="form-group row">
            <div class="form-group has-success col-sm-6">
                <label class="form-control-label" for="inputValid">Email 1</label>
                <asp:TextBox runat="server" placeholder="Email 1" class="form-control is-valid" id="txtEmail1" />
                <div class="valid-feedback">Success! You've done it.</div>
            </div>
            <div class="form-group has-success col-sm-6">
                <%--<asp:Label runat="server" Cssclass="form-control-label" for="txtEmail2" Text="Email 2"/>--%>
                <label class="form-control-label" for="txtEmail2">Email 2</label>
                <asp:TextBox runat="server" placeholder="Email 2" Cssclass="form-control is-valid" id="txtEmail2" required="required"/>
                <div class="invalid-feedback">Success! You've done it.</div>
            </div>
        </div>

        <div style="text-align: center;">
            <asp:Button runat="server" ID="btnActualizar" CssClass="btn btn-primary" OnClick="btnActualizar_Click" text="Actualizar" />
        </div>
    </div>
    <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function () {
            'use strict'

            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.querySelectorAll('.needs-validation')

            // Loop over them and prevent submission
            Array.prototype.slice.call(forms)
                .forEach(function (form) {
                    form.addEventListener('submit', function (event) {
                        if (!form.checkValidity()) {
                            event.preventDefault()
                            event.stopPropagation()
                        }

                        form.classList.add('was-validated')
                    }, false)
                })
        })()

    </script>
</body>
</html>
</asp:Content>
