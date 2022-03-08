<%@ Page Title="" Language="C#" MasterPageFile="~/Frame.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="Student_Management.Subjects.list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Danh sách môn học</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="text-danger text-center">Danh sách môn học</h3>
    <table class="table table-bordered table-hover">
        <thead class="bg-teal">
            <tr>
                <td>Mã môn học</td>
                <td>Tên môn học</td>
                <td>Số tiết</td>
                <td>Học phí</td>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="rptList" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("MaMH") %></td>
                        <td><%# Eval("TenMH") %></td>
                        <td><%# Eval("SoTiet") %></td>
                        <td><%# Eval("HocPhi") %></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
