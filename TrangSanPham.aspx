<%@ Page Title="" Language="C#" MasterPageFile="~/trangmau.master" AutoEventWireup="true" CodeFile="TrangSanPham.aspx.cs" Inherits="TrangSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="dlSanPham" runat="server" DataKeyField="IDSanPham"   >
                                    <ItemTemplate>
                                        &nbsp;<h2 style="letter-spacing:2px;font-weight:600;margin-left:340px;color: #373737;"><asp:Label ID="lbtensp" runat="server" Text='<%# Eval("TenSP") %>' /></h2>
                                        <br />
                                        <div class="chitiet">
                                        <div class="w">
                                          <div class="ts">
                                            <input type="radio" id="c1" name="ts" checked="checked"/>
                                            <label class="t" for="c1" ><asp:Image ID="Image1"  runat="server" ImageUrl='<%# Eval("HinhSP", "~/image/{0}") %>'/></label>
                                            <input type="radio" id="c2" name="ts"/>
                                            <label class="t" for="c2"><asp:Image ID="Image2"  runat="server" ImageUrl='<%# Eval("HinhSP2", "~/image/{0}") %>'/></label>
                                            <input type="radio" id="c3" name="ts"/>
                                            <label class="t" for="c3" ><asp:Image ID="Image3"  runat="server" ImageUrl='<%# Eval("HinhSP3", "~/image/{0}") %>'/></label>
                                            <input type="radio" id="c4" name="ts"/>
                                            <label class="t" for="c4" ><asp:Image ID="Image4"  runat="server" ImageUrl='<%# Eval("HinhSP4", "~/image/{0}") %>'/></label>
                                            <input type="radio" id="c5" name="ts"/>
                                            <label class="t" for="c5" ><asp:Image ID="Image5"  runat="server" ImageUrl='<%# Eval("HinhSP5", "~/image/{0}") %>'/></label>
                                          </div>
                                        </div>
                                        <br />
                                                                                
                                        &nbsp;<div class="chitiettrai" style="letter-spacing:1px;font-weight:740;text-align:center;margin-top:10px;font-size: 17px;">
                                            <asp:Label ID="Label2" runat="server" Text="GIÁ:"></asp:Label>
                                            <asp:Label ID="lbgiasp" runat="server" Text='<%# Eval("Gia") %>'/>
                                            <div class="mota">
                                                <div class="row mt-2" style="display:block;float:left" >
                                <div class="col  pr-00" style="width:100%">
                                    <i class="fas fa-info-circle" style="background:url(NewFolder1/information.png)"></i>
                                    <span class="text-muted small">
                                    <asp:Label ID="Label20" runat="server" Text='<%# Eval("TinhTrang") %>' />
                                    </span>
                                </div>
                                <div class="col pr-00 pl-00" style="width:100%">
                                    <i class="fas fa-globe"></i>
                                    <span class="text-muted small ">
                                    <asp:Label ID="Label21" runat="server" Text='<%# Eval("XuatXu") %>' />
                                    </span>
                                </div>
                                <div class="col pr-00" style="width:100%">
                                    <i class="fas fa-calendar"></i>
                                    <span class="text-muted small ">
                                     <asp:Label ID="Label22" runat="server" Text='<%# Eval("NamSanXuat") %>' />
                                    </span>
                                </div>
                            </div>
                            <div class="row mt-2" style="display:block;float:right">
                                <div class="col  pr-00" style="width:100%">
                                    <i class="fas fa-car"></i>
                                    <span class="text-muted small">
                                     <asp:Label ID="Label23" runat="server" Text='<%# Eval("KieuGiang") %>' />
                                    </span>
                                </div>
                                <div class="col pr-00 pl-00" style="width:100%">
                                    <i class="fas fa-location-arrow"></i>
                                    <span class="text-muted small ">
                                     <asp:Label ID="Label24" runat="server" Text='<%# Eval("NoiBan") %>' />
                                    </span>
                                </div>
                                <div class="col pr-00" style="width:100%">
                                    <i class="fas fa-road"></i>
                                    <span class="text-muted small ">
                                     <asp:Label ID="Label25" runat="server" Text='<%# Eval("Odo") %>' />&nbsp;km
                                    </span>
                                </div>
                                </div>
                             <div class="btndathang">
                                <asp:HyperLink ID="HyperLink1" runat="server" Text="Đặt Hàng" CssClass="dathang"  NavigateUrl='<%# "~/DatHang.aspx?hc="+Eval("IDSanPham") %>'  ></asp:HyperLink>
                                      </div>
                                            
                                                </div>
                                            </div>
                                            </div>
                                              </div>
                                        </div>
                                        <h2>
                                            <asp:Label ID="lbmasp" runat="server" Text='<%# Eval("IDSanPham") %>' Visible="false"></asp:Label>
                                        </h2>
                                        <br />
                                        <br />
                                        <div class="item">
                                             <div class="testimony-slide active text-center">
                                                <div class="thongtin">
                                                    <p style="font-size:18px;color:#0d0d0d;font-weight:bold;margin-left:280px;"><label>Mô tả:</label></p>
                                                    <ul style="width:900px;text-align:left;">
                                                        <li class="chitiet"><asp:Label ID="lbthongtin1" runat="server" Text='<%# Bind("MoTa") %>'></asp:Label></li>
                                                    </ul>
                                                </div>
                                             </div>
                                        </div>
                                        <div class="thongtinchitiet">
                                            <div class="w3-container">
                                              <table class="w3-table w3-striped" style="width:50%;margin-left:280px;margin-bottom:50px;border: 1px solid #ccc;margin-top:20px;">
                                                <tr>
                                                  <td>Phiên bản</td>
                                                  <td><asp:Label ID="Label17" runat="server" Text='<%# Bind("PhienBan") %>'></asp:Label></td>
                                                </tr>
                                                <tr>
                                                  <td>Xuất xứ</td>
                                                  <td><asp:Label ID="Label18" runat="server" Text='<%# Bind("XuatXu") %>'></asp:Label></td>
                                                </tr>
                                                <tr>
                                                  <td>Kiểu giáng</td>
                                                  <td><asp:Label ID="Label19" runat="server" Text='<%# Bind("KieuGiang") %>'></asp:Label></td>
                                                </tr>
                                                <tr>
                                                  <td>Tình trạng</td>
                                                  <td><asp:Label ID="Label26" runat="server" Text='<%# Bind("TinhTrang") %>'></asp:Label></td>
                                                </tr>
                                                  <tr>
                                                  <td>Năm sản xuất</td>
                                                  <td><asp:Label ID="Label27" runat="server" Text='<%# Bind("NamSanXuat") %>'></asp:Label></td>
                                                </tr>
                                                  <tr>
                                                  <td>Nơi bán</td>
                                                  <td><asp:Label ID="Label28" runat="server" Text='<%# Bind("NoiBan") %>'></asp:Label></td>
                                                </tr>
                                                  <tr>
                                                  <td>Odo</td>
                                                  <td><asp:Label ID="Label29" runat="server" Text='<%# Bind("Odo") %>'></asp:Label></td>
                                                </tr>
                                                  <tr>
                                                  <td>Hộp số</td>
                                                  <td><asp:Label ID="Label30" runat="server" Text='<%# Bind("HopSo") %>'></asp:Label></td>
                                                </tr>
                                                  <tr>
                                                  <td>Màu ngoại thất</td>
                                                  <td><asp:Label ID="Label31" runat="server" Text='<%# Bind("MauNgoaiThat") %>'></asp:Label></td>
                                                </tr>
                                                  <tr>
                                                  <td>Màu nội thất</td>
                                                  <td><asp:Label ID="Label32" runat="server" Text='<%# Bind("MauNoiThat") %>'></asp:Label></td>
                                                </tr>
                                                  <tr>
                                                  <td>Số cửa</td>
                                                  <td><asp:Label ID="Label33" runat="server" Text='<%# Bind("SoCua") %>'></asp:Label></td>
                                                </tr>
                                                  <tr>
                                                  <td>Số ghế</td>
                                                  <td><asp:Label ID="Label34" runat="server" Text='<%# Bind("SoGhe") %>'></asp:Label></td>
                                                </tr>
                                                  <tr>
                                                  <td>Dung thích xi lanh</td>
                                                  <td><asp:Label ID="Label35" runat="server" Text='<%# Bind("DungTichXiLanh") %>'></asp:Label></td>
                                                </tr>
                                                  <tr>
                                                  <td>Dẫn động</td>
                                                  <td><asp:Label ID="Label36" runat="server" Text='<%# Bind("DanDong") %>'></asp:Label></td>
                                                </tr>
                                                  <tr>
                                                  <td>Nhiên liệu</td>
                                                  <td><asp:Label ID="Label37" runat="server" Text='<%# Bind("NhienLieu") %>'></asp:Label></td>
                                                </tr>


                                              </table>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:DataList>
<style>
    body {
  place-content:center;
  min-height:100vh;
}
    .btndathang {
        margin-top: 200px;
    }
.dathang{
    text-decoration:none;
    color:black;
    background:red;
    padding:17px 60px; 
}
.w {
  width: 600px;
  height: 400px;
  margin: auto;
}
.ts {
  width:100%; height:100%;
  position:relative;
  --barH:10%;/*active zone height = 100% - barH*/
}

.t {
  --w:20%;
  display:block; width:var(--w); height:var(--barH);
  position:absolute; bottom:0; left:var(--l);
  transform-origin:top left;
}

.t img {
  dislay:block; width:100%; height:100%;
  object-fit:cover;
  transform:scale(0.8);
}

[type="radio"] { 
  display:none; 
}

:checked + label.t {
  left:0; bottom:var(--barH);
  height:calc(100% - var(--barH));
}

:checked + label.t img {
  object-fit:contain;
}

/* 
optional
*/

.ts {/*thumbnails bar*/
  perspective-origin:center center;
  transform-style:preserve-3d;
  pointer-events:none;
}

.ts:after {/*the plate*/
  content:"";
  display:block; width:100%; height:15px;
  position:absolute; bottom:0;
  background:linear-gradient(transparent 20%, rgba(0,0,0,0.1));
  transform:rotateX(90deg)scaleX(1.2);
  transform-origin:bottom center;
}

:not(:checked) + .t {/*inactive labels*/
  transform:translate3d(0, 0, -5px);
  pointer-events:auto;
}

:not(:checked) + .t:hover {
  transform:translate3d(0, -7px, -5px);
  box-shadow:0 30px 30px -25px rgba(0,0,0,0.3);
  cursor:pointer;
}

:not(:checked) + .t img {
  transform:scale(0.9);/*create gaps*/
}

:checked + .t {/*active label*/
  box-shadow:0 0 0 transparent;
  animation:anim 2s 1;
} @keyframes anim {
  from { transform:rotateY(6deg)rotateX(3deg) }
}

/* 
transitions
*/
.t {/*active->inactive & hover->rest*/
  transition:transform 0.5s, bottom 0.6s, left 0.6s, width 0.3s, box-shadow 1s;
}
.t:hover, :checked + .t {
  transition:transform 0.5s, bottom 0.6s, left 0.6s, width 0.3s, box-shadow 0s;
}
.chitiet{
    display:flex;
    margin-left:250px;
    color: #373737;
}
</style>
<script>    
    
    const els = document.querySelectorAll("[type='radio']");
    for (const el of els)
      el.addEventListener("input", e => reorder(e.target, els));
    reorder(els[0], els);

    function reorder(targetEl, els) {
      const nItems = els.length;
      let processedUncheck = 0;
      for (const el of els) {
        const containerEl = el.nextElementSibling;
        if (el === targetEl) {//checked radio
          containerEl.style.setProperty("--w", "100%");
          containerEl.style.setProperty("--l", "0");
    }
    else {//unchecked radios
          containerEl.style.setProperty("--w", `${100/(nItems-1)}%`);
    containerEl.style.setProperty("--l", `${processedUncheck * 100/(nItems-1)}%`);
    processedUncheck += 1;
    }
    }
    }
</script>

</asp:Content>