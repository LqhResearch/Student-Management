<%@ Page Title="" Language="C#" MasterPageFile="~/Frame.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="Student_Management.Assignments.edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Sửa phân công</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="text-danger text-center">Thêm phân công</h3>
    <div class="row">
        <div class="col-md-6 mb-3">
            <label class="form-label">Giáo viên</label>
            <asp:TextBox ID="txtTeacher" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
        </div>
        <div class="col-md-6 mb-3">
            <label class="form-label">Môn học</label>
            <asp:TextBox ID="txtSubject" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 mb-3">
            <label class="form-label">Ghi chú</label>
            <asp:TextBox ID="txtNote" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
    <asp:Button ID="btnEdit" CssClass="btn btn-outline-danger" runat="server" Text="Sửa" OnClick="btnEdit_Click" />
</asp:Content>
