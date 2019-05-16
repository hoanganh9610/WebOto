<%@ Page Title="" Language="C#" MasterPageFile="~/trangmau.master" AutoEventWireup="true" CodeFile="DatHang.aspx.cs" Inherits="DatHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="wrapper">
<asp:Panel ID="pnView" runat="server" CssClass="pnview">    
    <asp:GridView  CssClass="table table-bordered cart_summary" ID="gvGioHang" runat="server" AutoGenerateColumns="False" Width="70%" PageSize="5" Font-Size="13px" BackColor="White" BorderStyle="None" CellPadding="3" AllowPaging="True" DataKeyNames="HinhSP" OnPageIndexChanging="gvGioHang_PageIndexChanging" OnSelectedIndexChanged="gvGioHang_SelectedIndexChanged" OnRowCommand="gvGioHang_RowCommand"  >
        <Columns>
            <asp:ButtonField ButtonType="Image" CommandName="Xoa"
                            ImageUrl="NewFolder1/Delete.gif" HeaderStyle-Width="50px" />
             <asp:TemplateField HeaderText="HÌNH" HeaderStyle-Width="180px">
            <ItemStyle HorizontalAlign="Center" />
                 <ItemTemplate>
                    <asp:Image ID="Image1" Height="200px"  runat="server" ImageUrl='<%# Eval("HinhSP", "~/image/{0}") %>'/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="MÔ TẢ"  HeaderStyle-Width="100px">
            <%--<ItemStyle HorizontalAlign="Center" />--%>
                <ItemTemplate>
                    <asp:Label ID="lblgi" runat="server" Text='<%# Bind("TenSP")%>' />
                    </br>
                    <Label>Màu ngoại thất:</Label>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("MauNgoaiThat")%>' />
                    </br>
                    <Label>Phiên bản:</Label>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("PhienBan")%>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="GIÁ" HeaderStyle-Width="100px">
                <ItemStyle HorizontalAlign="Center" />
                <ItemTemplate>
                    
                    <asp:Label ID="lblgia" runat="server" Text='<%# Bind("Gia")%>' />
                    <label>đ</label>
                   
                </ItemTemplate>
            </asp:TemplateField>
            <%--<asp:TemplateField HeaderText="THÀNH TIỀN" HeaderStyle-Width="150px">
                <ItemTemplate>
                    <asp:Label ID="lbltien" runat="server" Text='<%# Bind("ThanhTien")%>' />
                    <label>đồng</label>
                </ItemTemplate>
            </asp:TemplateField>--%>

        </Columns>
        <HeaderStyle Height="60px" BackColor="White"  />
    </asp:GridView>
    </asp:Panel>
    <div class="tongtien" style="margin-left:980px;margin-bottom:40px;">
            <tr>
                <td colspan="3"><strong>Tổng tiền:</strong>
                </td>
                <td colspan="2"><strong><asp:Label ID="lbtongtien" runat="server" CssClass="lb_tongtien" ForeColor="black"></asp:Label></strong>
                </td>
            </tr>
        </div>
    </div>
    <div class="cart_navigation ">
            <a class="prev-btn" href="/">Quay lại</a>
            <asp:label style="color:black;font-weight:700;float:right" id="lbthongbao" CssClass="next-btn" runat="server">&nbsp;&nbsp;*:Quý khách vui lòng <a href="dangnhap.aspx" class="next-btn">Đăng Nhập</a> <br />&nbsp;&nbsp;trước khi đặt hàng ^^</asp:label>
            <asp:LinkButton runat="server" Text="Xác nhận đơn hàng" ID="btndathang" CssClass="next-btn" OnClick="btDatHang_Click"/>
        </div>
    <style>
        *{
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	-o-box-sizing: border-box;
}
th{
    background:darkgrey;
}
table{
    padding: 0;
    border: none;
    border-collapse: collapse;
    border: 1px solid #ddd;
    width: 1170px;
    margin: 50px auto 10px;
}
table td {
    padding: 0;
    border: none;
    border-collapse: collapse;
}
a {
    color: #666;
    text-decoration: none;
}
.table tr>td, 
.table tr>th {
    border: 1px solid #ddd;
    padding: 8px;
    line-height: 1.42857143;
    vertical-align: top;
    border-top: 1px solid #ddd;
    font-weight: normal;
}
.cart_avail {
    text-align: center;
}
img {
    vertical-align: top;
    max-width: 100%;
}
.cart_summary > thead, 
.cart_summary > tfoot {
    background: #f7f7f7;
    font-size: 16px;
}
.cart_summary td.cart_product {
    width: 120px;
    padding: 15px;
}
.page-order .cart_description {
    font-size: 14px;
}
.page-order .product-name {
    font-size: 16px;
}
.cart_summary td {
    vertical-align: middle!important;
    padding: 20px;
}
a {
    color: #666;
    text-decoration: none;
	outline: none !important;
}
.cart_avail .label {
    white-space: normal;
    display: inline-block;
    padding: 6px 10px;
    font-size: 14px;
    border-radius: 0px;
}
.cart_summary .price {
    text-align: right;
}
.cart_summary .qty {
    text-align: center;
    width: 100px;
}
.cart_summary .qty a:hover {
    background: #ff3366;
    color: #fff;
}
.form-control {
    display: block;
    width: 100%;
    height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
}
.form-control:focus {
    border-color: #66afe9;
    outline: 0;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102,175,233,.6);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102,175,233,.6);
}
.input-sm {
    height: 30px;
    padding: 5px 10px;
    font-size: 12px;
    line-height: 1.5;
    border-radius: 3px;
}
.cart_summary .qty input {
    text-align: center;
    max-width: 64px;
    margin: 0 auto;
    border-radius: 0px;
    border: 1px solid #eaeaea;
}
.cart_avail .label-success {
    background: #FFF;
    border: 1px solid #55c65e;
    color: #48b151;
    font-weight: normal;
}
.cart_summary .qty a {
    padding: 8px 10px 5px 10px;
    border: 1px solid #eaeaea;
    display: inline-block;
    width: auto;
    margin-top: 5px;
}
.cart_summary .action {
    text-align: center;
}
.cart_summary .action a {
    background: url(https://i.imgur.com/wBgtljO.png) no-repeat center center;
    font-size: 0;
    height: 9px;
    width: 9px;
    display: inline-block;
    line-height: 24px;
}
.cart_summary tfoot {
    text-align: right;
}
.cart_navigation {
    margin: 10px 10% 40px;
    float: left;
    width: 80%;
}
.cart_navigation a.prev-btn {
    float: left;
    background: #ff3366;
    color: #fff;

}
.cart_navigation a {
    padding: 10px 20px;
    border: 1px solid #eaeaea;
}
.cart_navigation a.prev-btn:before {
    font: normal normal normal 14px/1 FontAwesome;
    content: "\f104";
    padding-right: 15px;
}
.cart_navigation a.next-btn {
    float: right;
    background: #ff3366;
    color: #fff;
    border: 1px solid #ff3366;
}
.cart_navigation a:hover {
    background: #ff3366;
    color: #fff;
}
    </style>
</asp:Content>

