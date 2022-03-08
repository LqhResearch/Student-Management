<%@ Page Title="" Language="C#" MasterPageFile="~/Frame.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="Student_Management.Assignments.list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Danh sách phân công</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="text-danger text-center">Danh sách phân công</h3>
    <div class="clear-fix">
        <div class="float-end">
            <div class="input-group mb-3">
                <asp:TextBox ID="txtSearch" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:Button ID="btnSearch" CssClass="btn btn-primary" runat="server" Text="Tìm kiếm" OnClick="btnSearch_Click" />
            </div>
        </div>
    </div>
    <table class="table table-bordered table-hover">
        <thead class="bg-teal">
            <tr>
                <td>Giáo viên</td>
                <td>Môn học</td>
                <td>Ghi chú</td>
                <td width="69">Sửa</td>
                <td width="69">Xoá</td>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="rptList" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("Fullname") %></td>
                        <td><%# Eval("TenMH") %></td>
                        <td><%# Eval("GhiChu") %></td>
                        <td>
                            <asp:HyperLink ID="hplEdit" NavigateUrl='<%# "edit.aspx?MaGV="+ Eval("MaGV") + "&MaMH="+Eval("MaMH") %>' CssClass="btn btn-warning" runat="server">Sửa</asp:HyperLink>
                        </td>
                        <td>
                            <asp:HyperLink ID="hplDelete" NavigateUrl='<%# "?del-MaGV="+ Eval("MaGV") + "&del-MaMH="+Eval("MaMH") %>' CssClass="btn btn-danger" runat="server">Xoá</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
