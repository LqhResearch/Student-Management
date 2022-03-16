<%@ Page Title="" Language="C#" MasterPageFile="~/Frame.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="Student_Management.Users.list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Danh sách tài khoản</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="text-danger text-center pb-3">Danh sách tài khoản</h3>
    <table class="table table-bordered table-hover">
        <thead class="bg-info">
            <tr>
                <th>Tên đăng nhập</th>
                <th>Quyền truy cập</th>
                <th>Trạng thái</th>
                <th>Ảnh đại diện</th>
                <th width="59">Sửa</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="rptList" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("Username") %></td>
                        <td><%# Eval("Role").ToString() == "1" ? "<span class='badge bg-success'>Quản trị viên</span>" : "<span class='badge bg-info'>Thành viên</span>" %></td>
                        <td><%# Eval("Status").ToString() == "1" ? "<span class='badge bg-success'>Hoạt động</span>" : "<span class='badge bg-warning'>Khóa</span>" %></td>
                        <td>
                            <img width="40" src="../<%# Eval("Avatar") %>" /></td>
                        <td>
                            <asp:HyperLink ID="hplEdit" NavigateUrl='<%# "edit.aspx?Username="+ Eval("Username") %>' CssClass="btn btn-warning" ToolTip="Sửa" runat="server"><i class="fas fa-pen"></i></asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
