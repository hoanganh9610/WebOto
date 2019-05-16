<%@ Page Title="" Language="C#" MasterPageFile="~/trangmau.master" AutoEventWireup="true" CodeFile="TimKiemSanPham.aspx.cs" Inherits="TimKiemSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:XEMAY1ConnectionString %>" SelectCommand="SELECT IDSanPham, TenSP, HinhSP, Gia,TinhTrang,XuatXu,NamSanXuat,KieuGiang,NoiBan,Odo FROM SANPHAM WHERE (IDSanPham LIKE '%' + @IDSanPham + '%') OR (TenSP LIKE '%' + @TenSP + '%') OR (Gia LIKE '%' + @Gia + '%')">
            <SelectParameters>
                <asp:QueryStringParameter Name="IDSanPham" QueryStringField="a"  />
                <asp:QueryStringParameter Name="TenSP" QueryStringField="a"  />
                <asp:QueryStringParameter Name="Gia" QueryStringField="a"  />
            </SelectParameters>
        </asp:SqlDataSource>
    <asp:DataList ID="DataList9" runat="server" Width="100%" Height="100%" DataKeyField="IDSanPham" DataSourceID="SqlDataSource1" RepeatColumns="3">
       <ItemTemplate>
           <div class="woocommerce columns-4">
			<ul class="products" >			
					<li class="post-5562 product type-product status-publish has-post-thumbnail product_cat-honda first instock shipping-taxable purchasable product-type-variable has-default-attributes has-children" style="width:auto;margin-left:100px;margin-top:100px">
                        <a href="#" class="woocommerce-LoopProduct-link"><h3>
                                    <asp:Image ID="Image5" runat="server" Height="215px" ImageUrl='<%# Eval("HinhSP", "~/image/{0}") %>' Width="100%" />
                                    <br />
                                    <asp:Label ID="TenSPLabel" runat="server" CssClass="tensanpham" Text='<%# Eval("TenSP") %>' />
                                    <br />
                            <div class="giasanpham">
                                    <a style="color: #1aaa53;font-weight:bolder">Giá:</a>
                                    <asp:Label ID="GiaLabel" runat="server" Text='<%# Eval("Gia") %>' />
                                    <br />
                                </div>
                            <div class="row mt-2" >
                                <div class="col  pr-0">
                                    <i class="fas fa-info-circle" style="background:url(NewFolder1/information.png)"></i>
                                    <span class="text-muted small">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("TinhTrang") %>' />
                                    </span>
                                </div>
                                <div class="col pr-0 pl-0">
                                    <i class="fas fa-globe"></i>
                                    <span class="text-muted small ">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("XuatXu") %>' />
                                    </span>
                                </div>
                                <div class="col pr-0" style="padding-left:10px;">
                                    <i class="fas fa-calendar"></i>
                                    <span class="text-muted small ">
                                     <asp:Label ID="Label3" runat="server" Text='<%# Eval("NamSanXuat") %>' />
                                    </span>
                                </div>
                            </div>
                            <div class="row mt-2">
                                <div class="col  pr-0">
                                    <i class="fas fa-car"></i>
                                    <span class="text-muted small">
                                     <asp:Label ID="Label4" runat="server" Text='<%# Eval("KieuGiang") %>' />
                                    </span>
                                </div>
                                <div class="col pr-0 pl-0">
                                    <i class="fas fa-location-arrow"></i>
                                    <span class="text-muted small ">
                                     <asp:Label ID="Label5" runat="server" Text='<%# Eval("NoiBan") %>' />
                                    </span>
                                </div>
                                <div class="col pr-0" style="padding-left:10px;">
                                    <i class="fas fa-road"></i>
                                    <span class="text-muted small ">
                                     <asp:Label ID="Label6" runat="server" Text='<%# Eval("Odo") %>' />&nbsp;km
                                    </span>
                                </div>
                             </div>
                                    <asp:Button ID="Button13" runat="server" BackColor="Red" CssClass="button" Height="33px" Text="Đặt Hàng" Width="110px" PostBackUrl='<%# "TrangSanPham.aspx?hc="+Eval("IDSanPham") %>' />
                                    <br />
                          </h3>
                         </a>                
					</li>
			</ul>
        </ItemTemplate>
     </asp:DataList>
</asp:Content>

