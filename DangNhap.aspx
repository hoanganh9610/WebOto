<%@ Page Title="" Language="C#" MasterPageFile="~/trangmau.master" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="DangNhap" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="cssdangky.css" rel="stylesheet" type="text/css" />
    <div class="content-w3ls" style="background-color:cadetblue;margin-top:50px">
	<div class="content-agile1">
		<h2 class="agileits1">OtoCu.com</h2>
	
	</div>
	<div class="content-agile2" style="padding:130px 0 0">
        
			<div class="form-control w3layouts"> 
                <asp:TextBox ID="txttendangnhap" runat="server" type="text" name="firstname" placeholder="Tên đăng nhập" title="Nhập tên đăng nhập của bạn" required="" CssClass="dangky"></asp:TextBox>
			</div>

            <div class="form-control agileinfo">	
                <asp:TextBox ID="txtpassword" runat="server" type="password" name="password" placeholder="Mật khẩu" title="Nhập mật khẩu của bạn" required="" CssClass="dangky"></asp:TextBox>
                <asp:RegularExpressionValidator 
			ID="RegularExpressionValidator1"
			runat="server" 
			ErrorMessage="Độ dài phải từ 6 đến 20 kí tự"
			ControlToValidate="txtpassword" 
			ValidationExpression=".{6,20}"></asp:RegularExpressionValidator>
			</div>	
            <asp:Button ID="btndangnhap"  runat="server" Text="Đăng Nhập" CssClass="register" OnClick="btndangnhap_Click" ></asp:Button>
		<p class="wthree w3l">Nếu bạn chưa có tài khoản , vui lòng  <a href="dangky.aspx" style="color:red">đăng kí</a> </p>
		
	</div>
	<div class="clear"></div>
</div>
</asp:Content>

