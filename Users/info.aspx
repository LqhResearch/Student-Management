<%@ Page Title="" Language="C#" MasterPageFile="~/Frame.Master" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="Student_Management.Users.info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Thông tin tài khoản</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="text-danger text-center">Thông tin tài khoản</h3>

    <asp:Label ID="lblMessage" runat="server"></asp:Label>

    <div class="row">
        <div class="col-md-6 mb-3">
            <label class="form-label">Mật khẩu cũ</label>
            <asp:TextBox ID="txtPassword" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-6 mb-3">
            <label class="form-label">Mật khẩu mới</label>
            <asp:TextBox ID="txtNewPassword" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 mb-3">
            <label class="form-label">Nhập lại mật khẩu mới</label>
            <asp:TextBox ID="txtReNewPassword" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
    <asp:Button ID="btnSignUp" CssClass="btn btn-outline-primary" runat="server" Text="Cập nhật" OnClick="btnSignUp_Click" />
</asp:Content>
