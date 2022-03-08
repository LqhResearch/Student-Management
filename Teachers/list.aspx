<%@ Page Title="" Language="C#" MasterPageFile="~/Frame.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="Student_Management.Teachers.list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Danh sách giáo viên</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="text-danger text-center">Danh sách môn học</h3>
    <table class="table table-bordered table-hover">
        <thead class="bg-teal">
            <tr>
                <td>Mã giáo viên</td>
                <td>Họ giáo viên</td>
                <td>Tên giáo viên</td>
                <td>Giới tính</td>
                <td>Địa chỉ</td>
                <td>Số điện thoại</td>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="rptList" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("MaGV") %></td>
                        <td><%# Eval("HoGV") %></td>
                        <td><%# Eval("TenGV") %></td>
                        <td><%# Eval("GioiTinh") %></td>
                        <td><%# Eval("DiaChi") %></td>
                        <td><%# Eval("DienThoai") %></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
