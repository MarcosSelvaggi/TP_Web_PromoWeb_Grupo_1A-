<%@ Page Title="Usuario" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="UI.Usuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row justify-content-center">
        <div class="col-3">
            <div class="mb-3">
                <label id="lblDocumento" runat="server" class="form-label">Documento</label>
            </div>
            <div class="mb-3">
                <label id="lblConfirmarDatos" runat="server" class="form-label">Rellene el formulario para reclamar sus premios</label>
            </div>
            <div class="mb-3">
                <label for="txtNombre" class="form-label">Nombre</label>
                <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control" ReadOnly="true"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="txtApellido" class="form-label">Apellido</label>
                <asp:TextBox runat="server" ID="txtApellido" CssClass="form-control" ReadOnly="true"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="txtEmail" class="form-label">Dirección de mail</label>
                <asp:TextBox runat="server" ID="txtEmail" TextMode="Email" CssClass="form-control" ReadOnly="true"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="txtDireccion" class="form-label">Dirección</label>
                <asp:TextBox runat="server" ID="txtDireccion" CssClass="form-control" ReadOnly="true"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="txtCiudad" class="form-label">Ciudad</label>
                <asp:TextBox runat="server" ID="txtCiudad" CssClass="form-control" ReadOnly="true"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="txtCP" class="form-label">Código postal</label>
                <asp:TextBox runat="server" ID="txtCP" CssClass="form-control" ReadOnly="true"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Button ID="btnAceptar" Text="Confirmar Datos" OnClick="btnAceptar_Click" CssClass="btn btn-primary" runat="server" />
                <asp:Button ID="btnModificarDatos" Text="Modificar Datos" OnClick="btnModificarDatos_Click" CssClass="btn btn-primary" runat="server" />
            </div>
            <div class="mb-3">
                <label id="lblAceptar" runat="server" class="form-label"></label>
            </div>
        </div>
    </div>

    <div class="modal fade" id="registroExitosoModal" tabindex="-1" aria-labelledby="registroExitosoModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header bg-success text-white">
                    <h5 class="modal-title" id="registroExitosoModalLabel">🎉 Registro Exitoso</h5>
                </div>
                <div class="modal-body">
                    ¡Sus datos fueron registrados correctamente! Serás redirigido en unos segundos.
                </div>
                <div class="modal-footer">
                    <!-- <a href="Exito.aspx" class="btn btn-success">Ir ahora</a> -->
                    <a href="Inicio.aspx" class="btn btn-success">Ir ahora</a>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
