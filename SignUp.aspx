<%@ Page Title="" Language="C#" MasterPageFile="~/Frame.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Student_Management.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Đăng ký</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="text-danger text-center">Đăng ký</h3>

    <asp:Label ID="lblMessage" runat="server"></asp:Label>

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
            <label class="form-label">Nhập lại mật khẩu</label>
            <asp:TextBox ID="txtPassword2" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-6 mb-3">
            <label class="form-label">Ảnh đại diện: </label>
            <div class="input-group">
                <asp:FileUpload ID="fAvatar" CssClass="form-control" runat="server" />
                <asp:Button ID="btnAvatar" CssClass="btn btn-primary" runat="server" Text="Lưu ảnh" OnClick="btnAvatar_Click" />
            </div>
            <asp:Image ID="imgAvatar" Width="160" CssClass="shadow border border-dark rounded-circle mt-3" runat="server" />
        </div>
    </div>
    <asp:Button ID="btnSignUp" CssClass="btn btn-outline-primary" runat="server" Text="Đăng ký" OnClick="btnSignUp_Click" />
</asp:Content>
