<%@ Page Title="" Language="C#" MasterPageFile="~/Frame.Master" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="Student_Management.Assignments.add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Thêm phân công</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="text-danger text-center pb-3">Thêm phân công</h3>
    <div class="row">
        <div class="col-md-6 mb-3">
            <label class="form-label">Giáo viên</label>
            <asp:DropDownList ID="ddlTeacherID" CssClass="form-select" runat="server"></asp:DropDownList>
        </div>
        <div class="col-md-6 mb-3">
            <label class="form-label">Môn học</label>
            <asp:DropDownList ID="ddlSubjectID" CssClass="form-select" runat="server"></asp:DropDownList>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 mb-3">
            <label class="form-label">Ghi chú</label>
            <asp:TextBox ID="txtNote" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
    <asp:Button ID="btnAdd" CssClass="btn btn-primary" runat="server" Text="Thêm" OnClick="btnAdd_Click" />
</asp:Content>
