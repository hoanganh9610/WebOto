<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>OtoCu.com</title>
<link rel="stylesheet" type="text/css" href="trangchu2.css" />
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
        }
        .auto-style2 {
            font-size: large;
        }
        .btntimkiem{
            background:url(NewFolder1/search.png);
            background-size: contain;
            border: none;
            float:right;
        }
    </style>
</head>
<body  bgcolor="#FFFFFF">
    <form id="form2" runat="server">
    
<div id="main">
	<div id="header" style="background:url(NewFolder1/head.png);width:100%">
        <div class="timkiem" style="width:25%;margin-left:500px;padding-top:25px;">
            <asp:TextBox ID="txttimkiem" runat="server" placeholder="Nhập từ khóa tìm kiếm..." Height="40px" Width="280px" ></asp:TextBox>
            <asp:Button ID="btntimkiem" runat="server" Height="39px" Width="39px" CssClass="btntimkiem" OnClick="btntimkiem_click" /> 
            </div>
	</div>
	<div id="menu">
		<ul>
		<span style="font-family: Cambria, Hoefler Text, Liberation Serif, Times, Times New Roman, serif">
			<li><a href="/">TRANG CHỦ</a></li>
			<li><a href="gioithieu.aspx">GIỚI THIỆU</a></li>
			<li>
			 <a href="#">DANH MỤC</a>
				 <ul class="sub-menu">
					<li><a href="danhmuc_honda.aspx">XE HONDA</a></li>	
					<li><a href="danhmuc_toyota.aspx">XE TOYOTA</a></li>
					<li><a href="danhmuc_ford.aspx">XE FORD</a></li>
					<li><a href="danhmuc_kia.aspx">XE KIA</a></li>
					<li><a href="#">XE KHÁC</a></li>			
				 </ul>
			</li>
			<li><a ><asp:LinkButton runat="server" Text="ĐĂNG NHẬP" ID="btndangnhap" PostBackUrl="~/DangNhap.aspx" /><asp:Label runat="server" ID="lbtendn" ></asp:Label> </a></li>
			<li><a href="lienhe.aspx">LIÊN HỆ</a></li>
            <li > <a "><asp:LinkButton runat="server" ID="btdangxuat"  OnClick="btdangxuat_Click"></asp:LinkButton></a></li>
            <!--<a href class="visible-sx" id="clickToShowSearch">
                <img src="NewFolder1/icon-face.png" height="24px" width="24px" alt="Search" />
            </a>-->
            		</span>
		</ul>
	</div>
</div>
<div id="main-center">
    <div class="container">
<div class="row">
<div class="col-xl-9 mx-auto">
<h1 class="mb-5">Mô hình mua bán xe cũ đã qua kiểm định đầu tiên tại Việt Nam</h1>
</div>
<div class="col-md-12 col-lg-12 col-xl-12 mx-auto">
<div class="form-row" style="margin-top:20px;display:flex;">
<div class="col-6 col-md-3" style="flex: 0 0 25%;">
<div class="input-group mb-3">
<div class="input-group-prepend">
<label class="input-group-text" for="muaXeManufacture"><i class="fa fa-car"></i></label>
</div>
<select name="brand" class="custom-select manufacture" id="muaXeManufacture">
<option value="" selected>Chọn hãng xe</option>
<option value="10002" data-key="toyota">Toyota</option>
<option value="10045" data-key="hyundai">Hyundai</option>
<option value="10005" data-key="mercedes_benz">Mercedes Benz</option>
<option value="10012" data-key="ford">Ford</option>
<option value="10068" data-key="mazda">Mazda</option>
<option value="10003" data-key="honda">Honda</option>
<option value="10008" data-key="mitsubishi">Mitsubishi</option>
<option value="10004" data-key="nissan">Nissan</option>
<option value="10026" data-key="chevrolet">Chevrolet</option>
<option value="10055" data-key="kia">Kia</option>
<option value="10022" data-key="bmw">Bmw</option>
<option value="10046" data-key="isuzu">Isuzu</option>
<option value="10092" data-key="suzuki">Suzuki</option>
<option value="10017" data-key="audi">Audi</option>
<option value="10011" data-key="lexus">Lexus</option>
<option value="10080" data-key="rover">Rover</option>
<option value="10006" data-key="volkswagen">Volkswagen</option>
<option value="10010" data-key="peugeot">Peugeot</option>
<option value="10091" data-key="subaru">Subaru</option>
<option value="10090" data-key="ssangyong">Ssangyong</option>
<option value="10078" data-key="renault">Renault</option>
<option value="10013" data-key="acura">Acura</option>
<option value="10020" data-key="bentley">Bentley</option>
<option value="10024" data-key="cadillac">Cadillac</option>
<option value="10029" data-key="daewoo">Daewoo</option>
<option value="10037" data-key="fiat">Fiat</option>
<option value="10048" data-key="jaguar">Jaguar</option>
<option value="10049" data-key="jeep">Jeep</option>
<option value="10071" data-key="mini">Mini</option>
<option value="10076" data-key="porsche">Porsche</option>
<option value="10058" data-key="lamborghini">Lamborghini</option>
<option value="10067" data-key="maserati">Maserati</option>
<option value="10079" data-key="rolls_royce">Rolls Royce</option>
<option value="10099" data-key="volvo">Volvo</option>
<option value="10334" data-key="vinfast">Vinfast</option>
</select>
</div>
</div>
<div class="col-6 col-md-3" style="flex: 0 0 25%;">
<div class="input-group mb-3">
<div class="input-group-prepend">
<label class="input-group-text" for="muaXeModel"><i class="fa fa-car"></i></label>
</div>
<select name="model" class="custom-select model" id="muaXeModel">
<option value="" selected>Chọn dòng xe</option>
</select>
</div>
</div>
<div class="col-6 col-md-3" style="flex: 0 0 25%;">
<div class="input-group mb-3">
<div class="input-group-prepend">
<label class="input-group-text" for="inputGroupSelect01">
<i class="far fa-calendar-alt"></i>
</label>
</div>
<select name="year" id="namsanxuat" class="custom-select">
<option value="">Năm sản xuất</option>
<option value="2019">2019</option>
<option value="2018">2018</option>
<option value="2017">2017</option>
<option value="2016">2016</option>
 <option value="2015">2015</option>
<option value="2014">2014</option>
<option value="2013">2013</option>
<option value="2012">2012</option>
<option value="2011">2011</option>
<option value="2010">2010</option>
<option value="2009">2009</option>
<option value="2008">2008</option>
<option value="2007">2007</option>
<option value="2006">2006</option>
<option value="2005">2005</option>
<option value="2004">2004</option>
<option value="2003">2003</option>
<option value="2002">2002</option>
<option value="2001">2001</option>
<option value="2000">2000</option>
<option value="1999">1999</option>
<option value="1998">1998</option>
<option value="1997">1997</option>
<option value="1996">1996</option>
<option value="1995">1995</option>
<option value="1994">1994</option>
<option value="1993">1993</option>
<option value="1992">1992</option>
<option value="1991">1991</option>
<option value="1990">1990</option>
<option value="1989">1989</option>
<option value="1988">1988</option>
<option value="1987">1987</option>
<option value="1986">1986</option>
<option value="1985">1985</option>
<option value="1984">1984</option>
<option value="1983">1983</option>
<option value="1982">1982</option>
<option value="1981">1981</option>
<option value="1980">1980</option>
<option value="1979">1979</option>
<option value="1978">1978</option>
<option value="1977">1977</option>
<option value="1976">1976</option>
<option value="1975">1975</option>
<option value="1974">1974</option>
<option value="1973">1973</option>
<option value="1972">1972</option>
<option value="1971">1971</option>
<option value="1970">1970</option>
<option value="1969">1969</option>
<option value="1968">1968</option>
<option value="1967">1967</option>
<option value="1966">1966</option>
<option value="1965">1965</option>
</select>
</div>
</div>
<div class="col-6 col-md-3">
<button type="button" class="btn btn-primary" onclick="buildURLSearch()" style="padding-left:15px;padding-right:15px;">Tìm mua xe</button>
</div>
</div>
</div>
</div>
</div>
    </div>
<div id="main 2">
<div class="main3">
    <div class="vc_row wpb_row td-pb-row box_padding">
        <div class="wpb_column vc_column_container td-pb-span12">
            <div class="wpb_wrapper">
                <div class="vc_row wpb_row vc_inner td-pb-row">
                    <div class="wpb_column vc_column_container td-pb-span12">
                        <div class="vc_column-inner ">
                            <div class="wpb_wrapper">
	<div class="wpb_text_column wpb_content_element ">
		<div class="wpb_wrapper">
			<div class="title_box">
<h3>XE NỔI BẬT</h3>
<p><a class="box_right" href="danhmuc_Honda.aspx">Xem tất cả</a></p>
			</div>
		</div>
	</div>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:XEMAY1ConnectionString %>" SelectCommand="SELECT [IDSanPham], [TenSP], [HinhSP], [Gia], [TinhTrang], [XuatXu], [NamSanXuat], [KieuGiang], [NoiBan], [Odo] FROM [SANPHAM]">
    </asp:SqlDataSource>
    <asp:DataList ID="DataList9" runat="server" Width="100%" Height="100%" DataKeyField="IDSanPham" DataSourceID="SqlDataSource2" RepeatColumns="3">
       <ItemTemplate>
           <div class="woocommerce columns-4">
			<ul class="products" >			
					<li class="post-5562 product type-product status-publish has-post-thumbnail product_cat-honda first instock shipping-taxable purchasable product-type-variable has-default-attributes has-children">
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
			</div>
                    </div>
                        </div>

                    </div>

                </div>
                </div>
        </div>
    </div>
    </div>
        
        
<div class="footer">
	<div class="pageWidth">	
             <div class="pageContent">
                
<ul class="menu2">
	<li class="menu2_title">
		<h3>Thông tin</h3>
	</li>
	<li>
	<a href="#">Trang chủ</a>
	</li>
	<li>
	<a href="#">Liên hệ</a>
	</li>
</ul>
	<ul class="menu2">
	<li class="menu2_title">
		<h3>Danh Mục</h3>
	</li>
	<li>
	<a title="Xe máy Honda" href="#">Xe Honda</a>
	</li>
	<li>
	<a title="Xe Toyota" href="#">Xe Toyota</a>
	</li>
	<li>
	<a title="Xe Ford" href="#">Xe Ford</a>
	</li>
	<li>
	<a title="Xe Kia" href="#">Xe Kia</a>
	</li>
	<li>
	<a href="#">Các loại xe máy khác</a>
	</li>
	</ul>
<div class="menu2">
	<div class="menu2_title">
		<h3>Hoạt động</h3>
	</div>
	<ul>
	<li><a target="_blank"  href="#" ><img src="NewFolder1/icon-face.png" alt width="70" height="70"></a><a  rel="publisher" href="#" target="_blank"><img src="NewFolder1/icon-gmail.png" alt width="70" height="70"></a><a href="#" rel="nofollow" target="_blank"><img src="NewFolder1/icon-youtube.png" alt width="70" height="70"></a></li>
	<li></li>
	<li>
		<h3>&nbsp;</h3>
	</li>
		</ul>
	<li><a href="#">Khuyến Mãi</a>
	</li>
	<li>
	<a href="#">Trợ Giúp</a>
	</li>
	</div>
		</div>
	</div>
	<div class="PageContent2">	
			<div id="copyright">
			Diễn đàn sử dụng XenForo&trade; &copy;2011 XenForo Ltd.<br/>
Diễn đàn được xây dựng và phát triển bởi 
<a >www.otocu.com</a>.<br/>
Chịu trách nhiệm nội dung: Nguyễn Văn Công<br/>
Giấy phép MXH số 277/GP-BTTTT do Bộ TTTT cấp ngày 29/06/2015

            
<div class="reg_info"				><a rel="nofollow" target="_blank" href="http://online.gov.vn/HomePage/WebsiteDisplay.aspx?DocId=10121"><img width="90" alt="" title="" src="https://www.2banh.vn/styles/red_v04_2015/images/logo-bo-cong-thuong.jpg" /></a></div>
			</div>
			<div class="contact_info">
				<div class="its_info">Số ĐKKD: 0304710474</div>
				<div class="its_info">Địa chỉ: 427 Phú lợi, TP Thủ Dầu Một, Bình Dương</div>
				<div class="its_info">Tel: (028) 38.124.019 - Email: vancong2511@gmail.com</div>
				<div class="its_info">Hotline : 0362.970.474 (Mr. Công)</div>
		</div>				
			<span class="helper"></span>
			
			<div class="footer_text" style="padding-top:5px;"> Copyrights © 2019 Văn Công All Rights Reserved</div>
        </div>
	</div>
</form>
</body>
</html>
