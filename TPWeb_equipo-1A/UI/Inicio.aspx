<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="UI.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title><%:Title%></title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-5">
                <div class="card shadow-lg border-0">
                    <div class="card-body p-4">
                        <h4 class="card-title text-center mb-4 text-primary fw-bold">🎁 Participá con tu Código Promocional</h4>

                        <div class="mb-3">
                            <label for="txtCodigoVoucher" class="form-label">Código</label>
                            <asp:TextBox ID="txtCodigoVoucher" runat="server" CssClass="form-control form-control-lg" placeholder="Ej: Cod0105" />
                        </div>

                        <div class="d-grid mb-3">
                            <asp:Button ID="btnValidar" runat="server" Text="Validar" CssClass="btn btn-success btn-lg" OnClick="btnValidar_Click" />
                        </div>

                        <div class="text-center">
                            <asp:Label ID="lblResultado" runat="server" CssClass="text-danger fw-semibold" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>