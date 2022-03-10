<%@ Page Title="" Language="C#" MasterPageFile="~/Frame.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Student_Management.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Đăng ký</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="text-danger text-center">Đăng ký</h3>
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
    <div class="row">
        <div class="col-md-6 mb-3">
            <label class="form-label">Email: </label>
            <asp:TextBox ID="txtEmail" TextMode="Email" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
    <asp:Button ID="btnSignUp" CssClass="btn btn-outline-primary" runat="server" Text="Đăng ký" OnClick="btnSignUp_Click" />
</asp:Content>
