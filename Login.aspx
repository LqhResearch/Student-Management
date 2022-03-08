<%@ Page Title="" Language="C#" MasterPageFile="~/Frame.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Student_Management.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Đăng nhập</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="text-danger text-center">Đăng nhập</h3>
    <div class="row">
        <div class="col-md-6 mb-3">
            <label class="form-label">Tên đăng nhập</label>
            <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-6 mb-3">
            <label class="form-label">Mật khẩu</label>
            <asp:TextBox ID="txtPassword" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
    <asp:Button ID="btnLogin" CssClass="btn btn-outline-danger" runat="server" Text="Đăng nhập" OnClick="btnLogin_Click" />
</asp:Content>
