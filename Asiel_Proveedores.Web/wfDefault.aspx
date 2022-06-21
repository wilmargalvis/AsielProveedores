<%@ Page Language="C#" MasterPageFile="~/LayoutDefault.Master" AutoEventWireup="true" CodeBehind="wfDefault.aspx.cs" Inherits="Asiel_Proveedores.Web.wfDefault" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



  <div class="col-md-4">
    <label for="validationCustom01" class="form-label">First name</label>
    <asp:TextBox runat="server" CssClass="form-control" ID="validationCustom01" Value="Mark"  />
  
  
  </div>
  <div class="col-md-4">
    <label for="validationCustom02" class="form-label">Last name</label>
    <asp:TextBox runat="server" CssClass="form-control" ID="validationCustom02" Value="otro"  />
  
  </div>
  <div class="col-md-4">
    <label for="validationCustomUsername" class="form-label">Username</label>


       <asp:TextBox runat="server" CssClass="form-control" ID="validationCustomUsername"  />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="validationCustomUsername" ForeColor="Red" InitialValue="" ErrorMessage="*"></asp:RequiredFieldValidator>
      <%--<input type="text" class="form-control" id="validationCustomUsername" aria-describedby="inputGroupPrepend" required>--%>
 
    </div>
 
 
  <div class="col-12">
      <asp:Button runat="server" ID="btnBoton" CssClass="btn btn-primary" Text="Click" OnClick="btnBoton_Click" CausesValidation="true" />
    <%--<button class="btn btn-primary" type="submit">Submit form</button>--%>
  </div>


    <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        //(function () {
        //    'use strict'

        //    // Fetch all the forms we want to apply custom Bootstrap validation styles to
          

        //    //// Loop over them and prevent submission
        //    //Array.prototype.slice.call(forms)
        //    //    .forEach(function (form) {
        //    //        form.addEventListener('submit', function (event) {
        //    //            if (!form.checkValidity()) {
        //    //                event.preventDefault()
        //    //                event.stopPropagation()
        //    //            }

        //    //            form.classList.add('was-validated')
        //    //        }, false)
        //    //    })
           
        //    document.getElementById('ContentPlaceHolder1_btnBoton').addEventListener("click", mensaje);
        //})
        //    ()

        //function mensaje() {
        //    var forms = document.querySelectorAll('.needs-validation')
        //    if (!form.checkValidity()) {
        //                    event.preventDefault()
        //                    event.stopPropagation()
        //                }

        //                form.classList.add('was-validated')
        //}
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>




</asp:Content>
