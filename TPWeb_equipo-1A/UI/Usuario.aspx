<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="UI.Usuario" %>

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

</asp:Content>
