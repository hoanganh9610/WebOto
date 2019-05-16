<%@ Page Title="" Language="C#" MasterPageFile="~/trangmau.master" AutoEventWireup="true" CodeFile="quanlysanpham.aspx.cs" Inherits="Admin_quanlysanpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div  runat="server" style="margin-bottom:30px;font-size:13px;overflow:auto">
        <asp:ListView ID="PostsListView"  runat="server" DataKeyNames="MaSSP" DataSourceID="SqlDataSource3" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr class="hang">
                    <td  class="cot">
                        <asp:Label ID="MaSanPhamLabel" runat="server" Text='<%# Eval("MaSP") %>' />
                    </td>
                    <td class="cot">
                        <asp:Label ID="TenSanPhamLabel" runat="server" Text='<%# Eval("TenSP") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="GiaSanPhamLabel" runat="server" Text='<%# Eval("Gia") %>' />
                    </td>
                   
                    <td  class="cot">
                        <asp:Label ID="HinhSanPhamLabel" runat="server" Text='<%# Eval("HinhSP") %>' />
                        <asp:Image ID="imgPhoto" runat="server" Width="100px" Height="100px" ImageUrl='<%# Eval("HinhSP") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("HinhSP2") %>' />
                        <asp:Image ID="Image1" runat="server" Width="100px" Height="100px" ImageUrl='<%# Eval("HinhSP2") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("HinhSP3") %>' />
                        <asp:Image ID="Image2" runat="server" Width="100px" Height="100px" ImageUrl='<%# Eval("HinhSP3") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("HinhSP4") %>' />
                        <asp:Image ID="Image3" runat="server" Width="100px" Height="100px" ImageUrl='<%# Eval("HinhSP4") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("HinhSP5") %>' />
                        <asp:Image ID="Image4" runat="server" Width="100px" Height="100px" ImageUrl='<%# Eval("HinhSP5") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="TextBox5" runat="server" Text='<%# Eval("DongCo") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("BaoHanh") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("IDDanhMuc") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("TinhTrang") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("XuatXu") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("NamSanXuat") %>' />     
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("KieuGiang") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("NoiBan") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("Odo") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("HopSo") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label14" runat="server" Text='<%# Eval("MauNgoaiThat") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label15" runat="server" Text='<%# Eval("MauNoiThat") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label16" runat="server" Text='<%# Eval("SoCua") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label17" runat="server" Text='<%# Eval("SoGhe") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label18" runat="server" Text='<%# Eval("DungTichXiLanh") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label19" runat="server" Text='<%# Eval("DanDong") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label20" runat="server" Text='<%# Eval("NhienLieu") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label21" runat="server" Text='<%# Eval("PhienBan") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label22" runat="server" Text='<%# Eval("MoTa") %>' />
                    </td>
                    <td class="cothinh">          
                        <asp:ImageButton ID="EditButton" runat="server" CommandName="Edit" ImageUrl="~/NewFolder1/edit.gif"/>
                        <asp:ImageButton ID="DeleteButton" runat="server" CommandName="Delete" ImageUrl="~/NewFolder1/delete.gif" />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <<tr class="hang">
                    <td  class="cot">
                        <asp:Label ID="MaSanPhamLabel" runat="server" Text='<%# Eval("MaSP") %>' />
                    </td>
                    <td class="cot">
                        <asp:TextBox ID="TenSanPhamLabel" runat="server" Text='<%# Bind("TenSP") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="GiaSanPhamLabel" runat="server" Text='<%# Bind("Gia") %>' />
                    </td>
                   
                    <td  class="cot">
                        <asp:Label ID="HinhSanPhamLabel" runat="server" Text='<%# Bind("HinhSP") %>' />
                        <asp:Image ID="Image5" runat="server" Width="100px" Height="100px" ImageUrl='<%# Eval("HinhSP") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="Label5" runat="server" Text='<%# Bind("HinhSP2") %>' />
                        <asp:Image ID="Image1" runat="server" Width="100px" Height="100px" ImageUrl='<%# Eval("HinhSP2") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="Label6" runat="server" Text='<%# Bind("HinhSP3") %>' />
                        <asp:Image ID="Image2" runat="server" Width="100px" Height="100px" ImageUrl='<%# Eval("HinhSP3") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="Label7" runat="server" Text='<%# Bind("HinhSP4") %>' />
                        <asp:Image ID="Image3" runat="server" Width="100px" Height="100px" ImageUrl='<%# Eval("HinhSP4") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="Label8" runat="server" Text='<%# Bind("HinhSP5") %>' />
                        <asp:Image ID="Image4" runat="server" Width="100px" Height="100px" ImageUrl='<%# Eval("HinhSP5") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="Label23" runat="server" Text='<%# Bind("DongCo") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="Label9" runat="server" Text='<%# Bind("BaoHanh") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="Label1" runat="server" Text='<%# Bind("IDDanhMuc") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="Label2" runat="server" Text='<%# Bind("TinhTrang") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="Label3" runat="server" Text='<%# Bind("XuatXu") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="Label4" runat="server" Text='<%# Bind("NamSanXuat") %>' />     
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="Label10" runat="server" Text='<%# Bind("KieuGiang") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="Label11" runat="server" Text='<%# Bind("NoiBan") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="Label12" runat="server" Text='<%# Bind("Odo") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="Label13" runat="server" Text='<%# Bind("HopSo") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="Label14" runat="server" Text='<%# Bind("MauNgoaiThat") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="Label15" runat="server" Text='<%# Bind("MauNoiThat") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="Label16" runat="server" Text='<%# Bind("SoCua") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="Label17" runat="server" Text='<%# Bind("SoGhe") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="Label18" runat="server" Text='<%# Bind("DungTichXiLanh") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="Label19" runat="server" Text='<%# Bind("DanDong") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="Label20" runat="server" Text='<%# Bind("NhienLieu") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="Label21" runat="server" Text='<%# Bind("PhienBan") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="Label22" runat="server" Text='<%# Bind("MoTa") %>' />
                    </td>
                    <td class="cothinh">          
                        <asp:ImageButton ID="btnthemsp" runat="server" OnClick="btnthemsp_Click" ImageUrl="~/NewFolder1/plus.png" />
                        <asp:ImageButton ID="DeleteButton" runat="server" CommandName="Delete" ImageUrl="~/NewFolder1/cancel.gif" />
                    </td>
                <tr class="hang">
                    <td  class="cot">
                        <asp:Label ID="Label24" runat="server" Text='<%#Bind("MaSP") %>' />
                    </td>
                    <td class="cot">
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TenSP") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Gia") %>' />
                    </td>
                   
                    <td  class="cot">
                        <asp:Label ID="Label25" runat="server" Text='<%# Bind("HinhSP") %>' />
                        <asp:Image ID="Image6" runat="server" Width="100px" Height="100px" ImageUrl='<%# Eval("HinhSP") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("HinhSP2") %>' />
                        <asp:Image ID="Image7" runat="server" Width="100px" Height="100px" ImageUrl='<%# Eval("HinhSP2") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("HinhSP3") %>' />
                        <asp:Image ID="Image8" runat="server" Width="100px" Height="100px" ImageUrl='<%# Eval("HinhSP3") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("HinhSP4") %>' />
                        <asp:Image ID="Image9" runat="server" Width="100px" Height="100px" ImageUrl='<%# Eval("HinhSP4") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("HinhSP5") %>' />
                        <asp:Image ID="Image10" runat="server" Width="100px" Height="100px" ImageUrl='<%# Eval("HinhSP5") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("DongCo") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("BaoHanh") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("IDDanhMuc") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("TinhTrang") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("XuatXu") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("NamSanXuat") %>' />     
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("KieuGiang") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox15" runat="server" Text='<%# Bind("NoiBan") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox16" runat="server" Text='<%# Bind("Odo") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox17" runat="server" Text='<%# Bind("HopSo") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox18" runat="server" Text='<%# Bind("MauNgoaiThat") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox19" runat="server" Text='<%# Bind("MauNoiThat") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox20" runat="server" Text='<%# Bind("SoCua") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox21" runat="server" Text='<%# Bind("SoGhe") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox22" runat="server" Text='<%# Bind("DungTichXiLanh") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox23" runat="server" Text='<%# Bind("DanDong") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox24" runat="server" Text='<%# Bind("NhienLieu") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox25" runat="server" Text='<%# Bind("PhienBan") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox26" runat="server" Text='<%# Bind("MoTa") %>' />
                    </td>
                    <td class="cothinh">          
                        <asp:ImageButton ID="ImageButton1" runat="server" OnClick="btnthemsp_Click" ImageUrl="~/NewFolder1/plus.png" />
                        <asp:ImageButton ID="ImageButton2" runat="server" CommandName="Delete" ImageUrl="~/NewFolder1/cancel.gif" />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="margin-top:0px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr class="hang">
                    <td  class="cot">
                        <asp:Label ID="Label24" runat="server" Text='<%#Bind("MaSP") %>' />
                    </td>
                    <td class="cot">
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TenSP") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Gia") %>' />
                    </td>
                    </td>
                   
                    <td  class="cot">
                        <asp:FileUpload runat="server" ID="uploadimg" />
                    </td>
                    <td  class="cot">
                        <asp:FileUpload runat="server" ID="FileUpload1" />
                    </td>
                    <td  class="cot">
                       <asp:FileUpload runat="server" ID="FileUpload2" />
                    </td>
                    <td  class="cot">
                       <asp:FileUpload runat="server" ID="FileUpload3" />
                    </td>
                    <td  class="cot">
                       <asp:FileUpload runat="server" ID="FileUpload4" />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("DongCo") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("BaoHanh") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("IDDanhMuc") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("TinhTrang") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("XuatXu") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("NamSanXuat") %>' />     
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("KieuGiang") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox15" runat="server" Text='<%# Bind("NoiBan") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox16" runat="server" Text='<%# Bind("Odo") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox17" runat="server" Text='<%# Bind("HopSo") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox18" runat="server" Text='<%# Bind("MauNgoaiThat") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox19" runat="server" Text='<%# Bind("MauNoiThat") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox20" runat="server" Text='<%# Bind("SoCua") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox21" runat="server" Text='<%# Bind("SoGhe") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox22" runat="server" Text='<%# Bind("DungTichXiLanh") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox23" runat="server" Text='<%# Bind("DanDong") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox24" runat="server" Text='<%# Bind("NhienLieu") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox25" runat="server" Text='<%# Bind("PhienBan") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox26" runat="server" Text='<%# Bind("MoTa") %>' />
                    </td>
                    <td class="cothinh">          
                        <asp:ImageButton ID="btnthemsp" runat="server" OnClick="btnthemsp_Click" ImageUrl="~/NewFolder1/plus.png" />
                        <asp:ImageButton ID="DeleteButton" runat="server" CommandName="Delete" ImageUrl="~/NewFolder1/cancel.gif" />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr class="hang">
                    <td  class="cot">
                        <asp:Label ID="MaSanPhamLabel" runat="server" Text='<%# Eval("MaSP") %>' />
                    </td>
                    <td class="cot">
                        <asp:Label ID="TenSanPhamLabel" runat="server" Text='<%# Eval("TenSP") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="GiaSanPhamLabel" runat="server" Text='<%# Eval("Gia") %>' />
                    </td>
                   
                    <td  class="cot">
                        <asp:Label ID="HinhSanPhamLabel" runat="server" Text='<%# Eval("HinhSP") %>' />
                        <asp:Image ID="imgPhoto" runat="server" Width="100px" Height="100px" ImageUrl='<%# Eval("HinhSP") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("HinhSP2") %>' />
                        <asp:Image ID="Image1" runat="server" Width="100px" Height="100px" ImageUrl='<%# Eval("HinhSP2") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("HinhSP3") %>' />
                        <asp:Image ID="Image2" runat="server" Width="100px" Height="100px" ImageUrl='<%# Eval("HinhSP3") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("HinhSP4") %>' />
                        <asp:Image ID="Image3" runat="server" Width="100px" Height="100px" ImageUrl='<%# Eval("HinhSP4") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("HinhSP5") %>' />
                        <asp:Image ID="Image4" runat="server" Width="100px" Height="100px" ImageUrl='<%# Eval("HinhSP5") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="TextBox5" runat="server" Text='<%# Eval("DongCo") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("BaoHanh") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("IDDanhMuc") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("TinhTrang") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("XuatXu") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("NamSanXuat") %>' />     
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("KieuGiang") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("NoiBan") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("Odo") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("HopSo") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label14" runat="server" Text='<%# Eval("MauNgoaiThat") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label15" runat="server" Text='<%# Eval("MauNoiThat") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label16" runat="server" Text='<%# Eval("SoCua") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label17" runat="server" Text='<%# Eval("SoGhe") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label18" runat="server" Text='<%# Eval("DungTichXiLanh") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label19" runat="server" Text='<%# Eval("DanDong") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label20" runat="server" Text='<%# Eval("NhienLieu") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label21" runat="server" Text='<%# Eval("PhienBan") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label22" runat="server" Text='<%# Eval("MoTa") %>' />
                    </td>
                    <td class="cothinh">          
                        <asp:ImageButton ID="ImageButton3" runat="server" CommandName="Edit" ImageUrl="~/NewFolder1/edit.gif"/>
                        <asp:ImageButton ID="ImageButton4" runat="server" CommandName="Delete" ImageUrl="~/NewFolder1/delete.gif" />
                    </td>
          
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server"  class="cot">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family:monospace">
                                <tr runat="server" style="">
                                    <th runat="server" class="hang1">Mã Sản Phẩm</th>
                                    <th runat="server" class="hang1">Tên Sản Phẩm</th>
                                    <th runat="server" class="hang1">Giá Sản Phẩm</th>
                                    <th runat="server" class="hang1" style="width:200px">Hình Sản Phẩm1</th>
                                    <th runat="server" class="hang1" style="width:200px">Hình Sản Phẩm2</th>
                                    <th runat="server" class="hang1" style="width:200px">Hình Sản Phẩm3</th>
                                    <th runat="server" class="hang1" style="width:200px">Hình Sản Phẩm4</th>
                                    <th runat="server" class="hang1" style="width:200px">Hình Sản Phẩm5</th>
                                    <th runat="server" class="hang1">Động cơ</th>
                                    <th runat="server" class="hang1">Bảo hành</th>
                                    <th runat="server" class="hang1">IDDanhMuc</th>
                                    <th runat="server" class="hang1">TinhTrang</th>
                                    <th runat="server" class="hang1">XuatXu</th>
                                    <th runat="server" class="hang1">NamSanXuat</th>
                                    <th runat="server" class="hang1">KieuGiang</th>
                                    <th runat="server" class="hang1">NoiBan</th>
                                    <th runat="server" class="hang1">Odo</th>
                                    <th runat="server" class="hang1">HopSo</th>
                                    <th runat="server" class="hang1">MauNgoaiThat</th>
                                    <th runat="server" class="hang1">MauNoiThat</th>
                                    <th runat="server" class="hang1">SoCua</th>
                                    <th runat="server" class="hang1">SoGhe</th>
                                    <th runat="server" class="hang1">DungTichXiLanh</th>
                                    <th runat="server" class="hang1">DanDong</th>
                                    <th runat="server" class="hang1">NhieuLieu</th>
                                    <th runat="server" class="hang1">PhienBan</th>
                                    <th runat="server" class="hang1">MoTa</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr >
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" text="Xóa" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" text="Sửa"/>
                    </td>
                    <td  class="cot">
                        <asp:Label ID="MaSanPhamLabel" runat="server" Text='<%# Bind("MaSP") %>' />
                    </td>
                    <td class="cot">
                        <asp:Label ID="TenSanPhamLabel" runat="server" Text='<%# Bind("TenSP") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="GiaSanPhamLabel" runat="server" Text='<%# Bind("Gia") %>' />
                    </td>
                   
                    <td  class="cot">
                        <asp:Label ID="HinhSanPhamLabel" runat="server" Text='<%# Bind("HinhSP") %>' />
                        <asp:Image ID="imgPhoto" runat="server" Width="100px" Height="100px" ImageUrl='<%# Bind("HinhSP") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("HinhSP2") %>' />
                        <asp:Image ID="Image1" runat="server" Width="100px" Height="100px" ImageUrl='<%# Bind("HinhSP2") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("HinhSP3") %>' />
                        <asp:Image ID="Image2" runat="server" Width="100px" Height="100px" ImageUrl='<%# Bind("HinhSP3") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("HinhSP4") %>' />
                        <asp:Image ID="Image3" runat="server" Width="100px" Height="100px" ImageUrl='<%# Bind("HinhSP4") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("HinhSP5") %>' />
                        <asp:Image ID="Image4" runat="server" Width="100px" Height="100px" ImageUrl='<%# Bind("HinhSP5") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="TextBox5" runat="server" Text='<%# Bind("DongCo") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("BaoHanh") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("IDDanhMuc") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("TinhTrang") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("XuatXu") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("NamSanXuat") %>' />     
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label10" runat="server" Text='<%# Bind("KieuGiang") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label11" runat="server" Text='<%# Bind("NoiBan") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label12" runat="server" Text='<%# Bind("Odo") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label13" runat="server" Text='<%# Bind("HopSo") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label14" runat="server" Text='<%# Bind("MauNgoaiThat") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label15" runat="server" Text='<%# Bind("MauNoiThat") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label16" runat="server" Text='<%# Bind("SoCua") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label17" runat="server" Text='<%# Bind("SoGhe") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label18" runat="server" Text='<%# Bind("DungTichXiLanh") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label19" runat="server" Text='<%# Bind("DanDong") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label20" runat="server" Text='<%# Bind("NhienLieu") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label21" runat="server" Text='<%# Bind("PhienBan") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label22" runat="server" Text='<%# Bind("MoTa") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>

 
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:XEMAY1ConnectionString %>" DeleteCommand="DELETE FROM [SANPHAM] WHERE [IDSanPham] = @original_IDSanPham" InsertCommand="INSERT INTO [SANPHAM] ([TenSP], [HinhSP], [HinhSP2], [HinhSP3], [HinhSP4], [HinhSP5], [Gia], [DongCo], [BaoHanh], [IDDanhMuc], [TinhTrang], [XuatXu], [NamSanXuat], [KieuGiang], [NoiBan], [Odo], [HopSo], [MauNgoaiThat], [MauNoiThat], [SoCua], [SoGhe], [DungTichXiLanh], [DanDong], [NhienLieu], [PhienBan], [MoTa]) VALUES (@TenSP, @HinhSP, @HinhSP2, @HinhSP3, @HinhSP4, @HinhSP5, @Gia, @DongCo, @BaoHanh, @IDDanhMuc, @TinhTrang, @XuatXu, @NamSanXuat, @KieuGiang, @NoiBan, @Odo, @HopSo, @MauNgoaiThat, @MauNoiThat, @SoCua, @SoGhe, @DungTichXiLanh, @DanDong, @NhienLieu, @PhienBan, @MoTa)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [TenSP], [HinhSP], [HinhSP2], [HinhSP3], [HinhSP4], [HinhSP5], [Gia], [DongCo], [BaoHanh], [IDDanhMuc], [TinhTrang], [XuatXu], [NamSanXuat], [KieuGiang], [NoiBan], [Odo], [HopSo], [MauNgoaiThat], [MauNoiThat], [SoCua], [SoGhe], [DungTichXiLanh], [DanDong], [NhienLieu], [PhienBan], [MoTa] FROM [SANPHAM]" UpdateCommand="UPDATE [SANPHAM] SET [TenSP] = @TenSP, [HinhSP] = @HinhSP, [HinhSP2] = @HinhSP2, [HinhSP3] = @HinhSP3, [HinhSP4] = @HinhSP4, [HinhSP5] = @HinhSP5, [Gia] = @Gia, [DongCo] = @DongCo, [BaoHanh] = @BaoHanh, [IDDanhMuc] = @IDDanhMuc, [TinhTrang] = @TinhTrang, [XuatXu] = @XuatXu, [NamSanXuat] = @NamSanXuat, [KieuGiang] = @KieuGiang, [NoiBan] = @NoiBan, [Odo] = @Odo, [HopSo] = @HopSo, [MauNgoaiThat] = @MauNgoaiThat, [MauNoiThat] = @MauNoiThat, [SoCua] = @SoCua, [SoGhe] = @SoGhe, [DungTichXiLanh] = @DungTichXiLanh, [DanDong] = @DanDong, [NhienLieu] = @NhienLieu, [PhienBan] = @PhienBan, [MoTa] = @MoTa WHERE [IDSanPham] = @original_IDSanPham">
            <DeleteParameters>
                <asp:Parameter Name="original_IDSanPham" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="HinhSP" Type="String" />
                <asp:Parameter Name="HinhSP2" Type="String" />
                <asp:Parameter Name="HinhSP3" Type="String" />
                <asp:Parameter Name="HinhSP4" Type="String" />
                <asp:Parameter Name="HinhSP5" Type="String" />
                <asp:Parameter Name="Gia" Type="String" />
                <asp:Parameter Name="DongCo" Type="String" />
                <asp:Parameter Name="BaoHanh" Type="String" />
                <asp:Parameter Name="IDDanhMuc" Type="Int32" />
                <asp:Parameter Name="TinhTrang" Type="String" />
                <asp:Parameter Name="XuatXu" Type="String" />
                <asp:Parameter Name="NamSanXuat" Type="Int32" />
                <asp:Parameter Name="KieuGiang" Type="String" />
                <asp:Parameter Name="NoiBan" Type="String" />
                <asp:Parameter Name="Odo" Type="Int32" />
                <asp:Parameter Name="HopSo" Type="String" />
                <asp:Parameter Name="MauNgoaiThat" Type="String" />
                <asp:Parameter Name="MauNoiThat" Type="String" />
                <asp:Parameter Name="SoCua" Type="Int32" />
                <asp:Parameter Name="SoGhe" Type="Int32" />
                <asp:Parameter Name="DungTichXiLanh" Type="Int32" />
                <asp:Parameter Name="DanDong" Type="String" />
                <asp:Parameter Name="NhienLieu" Type="String" />
                <asp:Parameter Name="PhienBan" Type="String" />
                <asp:Parameter Name="MoTa" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="HinhSP" Type="String" />
                <asp:Parameter Name="HinhSP2" Type="String" />
                <asp:Parameter Name="HinhSP3" Type="String" />
                <asp:Parameter Name="HinhSP4" Type="String" />
                <asp:Parameter Name="HinhSP5" Type="String" />
                <asp:Parameter Name="Gia" Type="String" />
                <asp:Parameter Name="DongCo" Type="String" />
                <asp:Parameter Name="BaoHanh" Type="String" />
                <asp:Parameter Name="IDDanhMuc" Type="Int32" />
                <asp:Parameter Name="TinhTrang" Type="String" />
                <asp:Parameter Name="XuatXu" Type="String" />
                <asp:Parameter Name="NamSanXuat" Type="Int32" />
                <asp:Parameter Name="KieuGiang" Type="String" />
                <asp:Parameter Name="NoiBan" Type="String" />
                <asp:Parameter Name="Odo" Type="Int32" />
                <asp:Parameter Name="HopSo" Type="String" />
                <asp:Parameter Name="MauNgoaiThat" Type="String" />
                <asp:Parameter Name="MauNoiThat" Type="String" />
                <asp:Parameter Name="SoCua" Type="Int32" />
                <asp:Parameter Name="SoGhe" Type="Int32" />
                <asp:Parameter Name="DungTichXiLanh" Type="Int32" />
                <asp:Parameter Name="DanDong" Type="String" />
                <asp:Parameter Name="NhienLieu" Type="String" />
                <asp:Parameter Name="PhienBan" Type="String" />
                <asp:Parameter Name="MoTa" Type="String" />
                <asp:Parameter Name="original_IDSanPham" Type="Int32" />
            </UpdateParameters>

        </asp:SqlDataSource>
        </div>
</asp:Content>

