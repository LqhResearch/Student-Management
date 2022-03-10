<%@ Page Title="" Language="C#" MasterPageFile="~/Frame.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="Student_Management.Teachers.list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Danh sách giáo viên</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="text-danger text-center pb-3">Danh sách giáo viên</h3>
    <table class="table table-bordered table-hover">
        <thead class="bg-info">
            <tr>
                <th>Mã giáo viên</th>
                <th>Họ giáo viên</th>
                <th>Tên giáo viên</th>
                <th>Giới tính</th>
                <th>Địa chỉ</th>
                <th>Số điện thoại</th>
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
