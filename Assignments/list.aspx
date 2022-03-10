<%@ Page Title="" Language="C#" MasterPageFile="~/Frame.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="Student_Management.Assignments.list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Danh sách phân công</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="text-danger text-center pb-3">Danh sách phân công</h3>
    <div class="clear-fix">
        <div class="float-end">
            <div class="input-group mb-3">
                <asp:TextBox ID="txtSearch" CssClass="form-control" Placeholder="Word" runat="server"></asp:TextBox>
                <asp:Button ID="btnSearch" CssClass="btn btn-primary fa" Text="&#xf002;" runat="server" OnClick="btnSearch_Click" />
            </div>
        </div>
    </div>
    <table class="table table-bordered table-hover">
        <thead class="bg-info">
            <tr>
                <th>Giáo viên</th>
                <th>Môn học</th>
                <th>Ghi chú</th>
                <th width="104">Công cụ</th>
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
                            <asp:HyperLink ID="hplEdit" NavigateUrl='<%# "edit.aspx?MaGV="+ Eval("MaGV") + "&MaMH="+Eval("MaMH") %>' CssClass="btn btn-warning" ToolTip="Sửa" runat="server"><i class="fas fa-pen"></i></asp:HyperLink>
                            <asp:HyperLink ID="hplDelete" NavigateUrl='<%# "?del-MaGV="+ Eval("MaGV") + "&del-MaMH="+Eval("MaMH") %>' CssClass="btn btn-danger" ToolTip="Xoá" runat="server"><i class="fas fa-trash-alt"></i></asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
