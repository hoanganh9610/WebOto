<%@ Page Title="" Language="C#" MasterPageFile="~/trangmau.master" AutoEventWireup="true" CodeFile="trangTQ.aspx.cs" Inherits="trangTQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="trangTQ.css" rel="stylesheet" type="text/css" />
    <div class="thongtin">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IDSanPham" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
    <Columns>
        <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="IDSanPham" HeaderText="IDSanPham" InsertVisible="False" ReadOnly="True" SortExpression="IDSanPham" />
        <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
        <asp:BoundField DataField="HinhSP" HeaderText="HinhSP" SortExpression="HinhSP" />
        <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
        <asp:BoundField DataField="MaSP" HeaderText="MaSP" SortExpression="MaSP" />
        <asp:BoundField DataField="NgayCapNhat" HeaderText="NgayCapNhat" SortExpression="NgayCapNhat" />
        <asp:BoundField DataField="IDDanhMuc" HeaderText="IDDanhMuc" SortExpression="IDDanhMuc" />
    </Columns>
    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#330099" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    <SortedAscendingCellStyle BackColor="#FEFCEB" />
    <SortedAscendingHeaderStyle BackColor="#AF0101" />
    <SortedDescendingCellStyle BackColor="#F6F0C0" />
    <SortedDescendingHeaderStyle BackColor="#7E0000" />
</asp:GridView>
        <asp:Button ID="Button1" runat="server" BackColor="Black" ForeColor="White" Height="38px" PostBackUrl="~/trangdangnhap.aspx" Text="Đăng Xuất" Width="103px" />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:XEMAY1ConnectionString %>" SelectCommand="SELECT [IDSanPham], [TenSP], [HinhSP], [Gia], [MaSP], [NgayCapNhat], [IDDanhMuc] FROM [SANPHAM]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [SANPHAM] WHERE [IDSanPham] = @original_IDSanPham AND [TenSP] = @original_TenSP AND [HinhSP] = @original_HinhSP AND [Gia] = @original_Gia AND [MaSP] = @original_MaSP AND [NgayCapNhat] = @original_NgayCapNhat AND [IDDanhMuc] = @original_IDDanhMuc" InsertCommand="INSERT INTO [SANPHAM] ([TenSP], [HinhSP], [Gia], [MaSP], [NgayCapNhat], [IDDanhMuc]) VALUES (@TenSP, @HinhSP, @Gia, @MaSP, @NgayCapNhat, @IDDanhMuc)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [SANPHAM] SET [TenSP] = @TenSP, [HinhSP] = @HinhSP, [Gia] = @Gia, [MaSP] = @MaSP, [NgayCapNhat] = @NgayCapNhat, [IDDanhMuc] = @IDDanhMuc WHERE [IDSanPham] = @original_IDSanPham AND [TenSP] = @original_TenSP AND [HinhSP] = @original_HinhSP AND [Gia] = @original_Gia AND [MaSP] = @original_MaSP AND [NgayCapNhat] = @original_NgayCapNhat AND [IDDanhMuc] = @original_IDDanhMuc">
    <DeleteParameters>
        <asp:Parameter Name="original_IDSanPham" Type="Int32" />
        <asp:Parameter Name="original_TenSP" Type="String" />
        <asp:Parameter Name="original_HinhSP" Type="String" />
        <asp:Parameter Name="original_Gia" Type="Double" />
        <asp:Parameter Name="original_MaSP" Type="String" />
        <asp:Parameter DbType="Date" Name="original_NgayCapNhat" />
        <asp:Parameter Name="original_IDDanhMuc" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="TenSP" Type="String" />
        <asp:Parameter Name="HinhSP" Type="String" />
        <asp:Parameter Name="Gia" Type="Double" />
        <asp:Parameter Name="MaSP" Type="String" />
        <asp:Parameter DbType="Date" Name="NgayCapNhat" />
        <asp:Parameter Name="IDDanhMuc" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="TenSP" Type="String" />
        <asp:Parameter Name="HinhSP" Type="String" />
        <asp:Parameter Name="Gia" Type="Double" />
        <asp:Parameter Name="MaSP" Type="String" />
        <asp:Parameter DbType="Date" Name="NgayCapNhat" />
        <asp:Parameter Name="IDDanhMuc" Type="Int32" />
        <asp:Parameter Name="original_IDSanPham" Type="Int32" />
        <asp:Parameter Name="original_TenSP" Type="String" />
        <asp:Parameter Name="original_HinhSP" Type="String" />
        <asp:Parameter Name="original_Gia" Type="Double" />
        <asp:Parameter Name="original_MaSP" Type="String" />
        <asp:Parameter DbType="Date" Name="original_NgayCapNhat" />
        <asp:Parameter Name="original_IDDanhMuc" Type="Int32" />
    </UpdateParameters>
        </asp:SqlDataSource>
        </div>
</asp:Content>

