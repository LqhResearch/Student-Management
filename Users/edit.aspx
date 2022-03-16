<%@ Page Title="" Language="C#" MasterPageFile="~/Frame.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="Student_Management.Users.edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Cập nhật tài khoản</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="text-danger text-center pb-3">Cập nhật tài khoản</h3>
    <div class="row">
        <div class="col-md-12 mb-3">
            <label class="form-label">Tên đăng nhập</label>
            <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 mb-3">
            <label class="form-label">Quyền truy cập</label>
            <asp:DropDownList ID="ddlRole" CssClass="form-select" runat="server">
                <asp:ListItem Value="1">Quản trị viên</asp:ListItem>
                <asp:ListItem Value="0">Thành viên</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-md-6 mb-3">
            <label class="form-label">Trạng thái</label>
            <asp:DropDownList ID="ddlStatus" CssClass="form-select" runat="server">
                <asp:ListItem Value="1">Hoạt động</asp:ListItem>
                <asp:ListItem Value="0">Khoá</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
    <asp:Button ID="btnEdit" CssClass="btn btn-primary" runat="server" Text="Sửa" OnClick="btnEdit_Click" />
</asp:Content>
