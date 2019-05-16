<%@ Page Title="" Language="C#" MasterPageFile="~/trangmau.master" AutoEventWireup="true" CodeFile="DonHang.aspx.cs" Inherits="DonHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
    .Control ul li{
        display:inline;
        list-style:none;
        padding: 0 10px 0 4px;
        background: url(../image/control_li_split.gif) right no-repeat;
    }
    .form-control{
       display: block;
    width: 100%;
    height: 42px;
    padding: 10px 20px;
    font-size: 14px;
    line-height: 1.42857;
    color: #555555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    }
    .Control {
        margin-left: 10px;
        margin-right:10px;
        padding: 10px;
        border: 1px solid #99BBE8;
        background: #D0DEF0;
        height: 26px;
        line-height: 26px;
        width:96%;
    }
    .PageName {
        text-align:center;
        color:#00B4B3;
        padding-top:0px;
        margin-left:5px;
        padding-bottom:5px;
        margin-top:30px;
        margin-bottom:30px;
        font-size:20px;
        font-weight:bold;
        border-bottom:1px solid gray;
        width:98%;
        border-bottom-width:2px;
        border-bottom-color:blue;
    }
    .timkiem {
        margin-left:10px;
        margin-right:10px;
        background: #d3e2f9;
        border: 1px solid #99bbe8;
        padding: 10px;
        border-bottom: none;
        width:96%;
        line-height:35px;
    }
    .text_chung {
        line-height:25px;
         width: 400px;
         border-radius:5px 5px;
         padding-left:5px;
    }
    .ddl_chung {
        height:25px;
    }
    .lbl_floaiphim {
        color:#0a6ccf;
        font-weight:bold;
    }
    .btn_chung {
        background: url(../image/button-background-gray.gif) repeat-x scroll 0 0 #E3E3E3;
        border: 1px solid #CCCCCC;
        border-radius: 3px 3px 3px 3px;
        color: #0b1985;
        line-height: 20px;
        padding: 3px 5px;
        font-family: helvetica;
    }
    .fck_edit {
        height:400px;
    }
    .grid{
        padding-right:30px;
        width:400px;
        margin-bottom:30px;
        text-align:center;
        color:#5c5c5c;
        font-weight:400;
    }
    .grid img {

        padding-top:5px;
        margin:auto;
        object-fit:cover;
    }
    .columnpad {
        padding-left:10px;
        padding-right:10px;
    }
    .action {
        padding-right:10px;
        margin:0 auto;
    }
    .ChkBoxClass input {width:20px; height:20px;margin-top:10px;}
    .head{
        text-align:center;
    }
    .btngiohang{
        list-style-type:none;
        list-style:none;
        margin:auto;
        width:1100px;
        margin-bottom: 70px; 
    }
    .txtsoluong{
        width:30%;
        text-align:center;
    }
    .congtru{
        list-style:none;
        list-style-type:none;
    }
    *{
        border:none;
    }
    th{
        text-align:center;
        color:black;
    }
    tbody{
    font-family: Roboto,sans-serif;
    color: black;
    font-weight: 600;
    }
    .lb_tongtien{
        float:right;
        font-weight:bold;
    }
    .lbtongtien{
        margin-top: 20px;
    }
        .lbtong {
            background: none;
            font-size: 11px;
            color: cornflowerblue;
        }
        .pnview{
   border-bottom:2px solid blue;
    display: -webkit-inline-box;
    border-top:2px solid blue;
        }
        .tbthanhtoan{
            width:900px;
            margin:5px auto;
            border:1px solid #0094ff;
            background-color:#f5fafb;
            margin-bottom:20px;
        }
        
        .tieude{
            height:40px;
            vertical-align:bottom;
            color:#3DA5E9;
            font-size:14pt;
            font-weight:bold;
            text-shadow:3px 3px 2px #c6effa;
            text-align:center;
        }
        .tieude1{
            height:40px;
            vertical-align:bottom;
            color:#ff6a00;
            font-size:12pt;
            font-weight:bold;
            padding-left:5px;
        }
        .tieude2{
            height:30px;
            font-size:10pt;
            padding-left:10px;
        }
         .tdtongtien{
            height:30px;
            font-size:12pt;
            text-align:right;
            font-weight:bold;
            padding-right:40px;
        }

        .thongtintaikhoan{
            color:#490a81;
            font-size:12pt;
            font-weight:bold;
         }
        .thongtingiohang{
            border:1px solid #DEBA84;
            text-align:center;
            height:30px; 
        }
        .thongtinnguoinhan{
            border:1px solid #b4b0b0;
            width:200px;
            height:25px;
            border-radius:5px;
            padding-left:5px;
        }
        .colnutlenh{
            height:50px;
            text-align:center;
        }
        .btdongy{
            background-color:#57AFF2;
            width:90px;
            height:25px;
            border-radius:5px;
            cursor:pointer;
            border:1px solid #C8CED4;
            font-weight:bold;
            color:white;
            font-size:9pt;
        }
      table{
          border-collapse:initial;
      }
</style>
    <div class="PageName">
        THÔNG TIN ĐƠN ĐẶT HÀNG
    </div>
    <asp:Panel runat="server" ID="as">
    <table class="tbthanhtoan" style="margin-top:20px;" >
        <tr>
            <td colspan="2" class="tieude1">THÔNG TIN TÀI KHOẢN</td>
        </tr>
        <tr>
            <td class="tieude2">Họ tên:</td>
            <td><asp:Label ID="lbHoTen" runat="server" CssClass="thongtintaikhoan"></asp:Label> </td>
        </tr>
        <tr>
            <td class="tieude2">Địa chỉ:</td>
            <td> <asp:Label ID="lbDiaChi" runat="server" CssClass="thongtintaikhoan"></asp:Label>   </td>
        </tr>
        <tr>
            <td class="tieude2">Điện thoại:</td>
            <td><asp:Label ID="lbDienThoai" runat="server"  CssClass="thongtintaikhoan"></asp:Label></td>
        </tr>
        <tr>
            <td class="tieude2">Email:</td>
            <td><asp:Label ID="lbEmail" runat="server"  CssClass="thongtintaikhoan"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" class="tieude1">THÔNG TIN GIỎ HÀNG</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="pnView" runat="server" CssClass="pnview">    
    <asp:GridView  CssClass="grid" ID="gvGioHang" runat="server" AutoGenerateColumns="False" Width="100%" PageSize="5" Font-Size="13px" BackColor="White" BorderStyle="None" CellPadding="3" AllowPaging="True" DataKeyNames="HinhSP" OnPageIndexChanging="gvGioHang_PageIndexChanging"  OnRowCommand="gvGioHang_RowCommand"  >
        <Columns>
            <%--<asp:BoundField DataField="MaSanPham" HeaderText="Mã Sản Phẩm" HeaderStyle-Width="150px" ControlStyle-CssClass="head" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>--%>
            <asp:ButtonField ButtonType="Image" CommandName="Xoa"
                            ImageUrl="NewFolder1/Delete.gif" HeaderStyle-Width="50px" />
             <asp:TemplateField HeaderText="HÌNH" HeaderStyle-Width="180px">
            <ItemStyle HorizontalAlign="Center" />
                 <ItemTemplate>
                    <asp:Image ID="Image1" Height="200px"  runat="server" ImageUrl='<%# Eval("HinhSP", "~/image/{0}") %>'/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:Label ID="lblten" runat="server" Text='<%# Bind("TenSP") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="GIÁ" HeaderStyle-Width="150px">
                <ItemTemplate>
                    <asp:Label ID="lblgia" runat="server" Text='<%# Bind("Gia")%>' />
                    <label>đ</label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="THÀNH TIỀN" HeaderStyle-Width="150px">
                <ItemTemplate>
                    <asp:Label ID="lbltien" runat="server" Text='<%# Bind("ThanhTien")%>' />
                    <label>đ</label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <HeaderStyle Height="60px" BackColor="White"  />
    </asp:GridView>
   </asp:Panel>
    <div class="lbtongtien">
        <label style="color:black;margin-left:10px;">Tổng tiền:</label>&nbsp;&nbsp;<label style="float:right;font-weight:bold;color:black">&nbsp; đ</label><asp:Label ID="lbtongtien" runat="server" CssClass="lb_tongtien" ForeColor="black"></asp:Label>
    </div>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="tieude1"> THÔNG TIN GIAO HÀNG</td>
        </tr>
        <tr>
            <td class="tieude2"> Ngày giao:</td>
            <td>
                <asp:Calendar ID="cldNgayGiaoHang" runat="server" BackColor="#FFFFCC" 
                    BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                    ShowGridLines="True" Width="220px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                        ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="tieude2"> Người nhận:</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtTenNguoiNhan" ErrorMessage="Người nhận không được rỗng" 
                    ForeColor="Red" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator><br />
                <asp:TextBox ID="txtTenNguoiNhan" runat="server" CssClass="form-control"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td class="tieude2"> Địa chỉ:</td>
            <td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtDiaChiNhan" ErrorMessage="Địa chỉ không được rỗng" 
                    ForeColor="Red" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator><br />
                <asp:TextBox ID="txtDiaChiNhan" runat="server" CssClass="form-control"></asp:TextBox>
               
            </td>
        </tr>
        <tr>
            <td class="tieude2">  Điện thoại:</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtDienThoaiNhan" ErrorMessage="Điện thoại không được rỗng" 
                    ForeColor="Red" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator><br />
                <asp:TextBox ID="txtDienThoaiNhan" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr class="input">
             <td class="tieude2"> Email:</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="tieude2"> Ghi chú:</td>
            <td>
                <asp:TextBox ID="txtnote" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
                <td id="noidung">Hình thức thanh toán:</td>
                <td >
                    <asp:RadioButtonList ID="rbl_httt" runat="server" CssClass="checkbox">
                        <asp:ListItem Value="0">Thanh toán khi nhận hàng</asp:ListItem>
                        <asp:ListItem Value="2">Chuyển khoản</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td >&nbsp;</td>
            </tr>
            <tr >
                <td id="noidung">Hình thức giao hàng:</td>
                <td>
                    <asp:RadioButtonList ID="rbl_htgh" runat="server" CssClass="checkbox">
                        <asp:ListItem Value="0">Lắp đặt tại nhà</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td >&nbsp;</td>
            </tr>
       <tr>
            <td colspan="2" class="colnutlenh">
                <asp:Button ID="btDongY" runat="server" CssClass="btdongy" 
                     Text="Đồng ý" Width="103px" onclick="btDongY_Click" />
                
            </td>
        </tr>
        <tr>
             <td>
               <asp:Label runat="server" ID="lbloi"></asp:Label>
           </td>
        </tr>
    </table>
        </asp:Panel>
</asp:Content>

