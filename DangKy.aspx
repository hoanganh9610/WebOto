<%@ Page Title="" Language="C#" MasterPageFile="~/trangmau.master" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="DangKy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="cssdangky.css" rel="stylesheet" type="text/css" />
    <div class="content-w3ls" style="background-color:cadetblue;height:580px;margin-top:50px">
	<div class="content-agile1">
		<h2 class="agileits1">OtoCu.com</h2>
	
	</div>
	<div class="content-agile2" style="padding-top:0px">
        
			<div class="form-control w3layouts"> 
                <asp:TextBox ID="txttendangnhap" runat="server" type="text" name="firstname" placeholder="Tên đăng nhập" title="Nhập tên đăng nhập của bạn" required="" CssClass="dangky"></asp:TextBox>
			</div>
            <asp:RegularExpressionValidator 
			ID="RegularExpressionValidator2"
			runat="server" 
			ErrorMessage="Độ dài phải từ 6 đến 20 kí tự"
			ControlToValidate="txttendangnhap" 
			ValidationExpression=".{6,20}"></asp:RegularExpressionValidator>
            <div class="form-control agileinfo">	
                <asp:TextBox ID="txtpassword" runat="server" type="password" name="password" placeholder="Mật khẩu" title="Nhập mật khẩu của bạn" required="" CssClass="dangky"></asp:TextBox>
                <asp:RegularExpressionValidator 
			ID="RegularExpressionValidator1"
			runat="server" 
			ErrorMessage="Độ dài phải từ 6 đến 20 kí tự"
			ControlToValidate="txtpassword" 
			ValidationExpression=".{6,20}"></asp:RegularExpressionValidator>
			</div>	

			<div class="form-control agileinfo">	
                <asp:TextBox ID="txtpassword1" runat="server" type="password" name="password" placeholder="Nhập lại mật khẩu" title="Nhập lại mật khẩu của bạn" required="" CssClass="dangky"></asp:TextBox>
			</div>			
			

			<div class="form-control w3layouts">	
                <asp:TextBox ID="txtemail" runat="server" type="Email" name="Email" placeholder="mail@gmail.com" title="Nhập email của bạn" CssClass="dangky"></asp:TextBox>
			</div>
        <div class="form-control w3layouts">	
                <asp:TextBox ID="txtdiachi" runat="server" type="text" name="Địa Chỉ" placeholder="Địa chỉ" title="Nhập địa chỉ của bạn" CssClass="dangky"></asp:TextBox>
			</div>
         <div class="form-control w3layouts">	
                <asp:TextBox ID="txtsdt" runat="server" type="text" name="Số điện thoại" placeholder="Số Điện Thoại" title="Nhập số điện thoại của bạn" CssClass="dangky"></asp:TextBox>
			</div>
        <asp:Button ID="btndangky"  runat="server" Text="Đăng Ký" CssClass="register" OnClick="btndangky_Click" ></asp:Button>
		<script type="text/javascript">
		    window.onload = function () {
		        document.getElementById("txtpassword").onchange = validatePassword;
		        document.getElementById("txtpassword1").onchange = validatePassword;
		    }
		    function validatePassword() {
		        var pass2 = document.getElementById("txtpassword1").value;
		        var pass1 = document.getElementById("txtpassword").value;
		        if (pass1 != pass2)
		            document.getElementById("txtpassword1").setCustomValidity("Mật khẩu không trùng với ban đầu");
		        else
		            document.getElementById("txtpassword1").setCustomValidity('');
		        //empty string means no validation error
		    }
		    function locdau(obj) {
		        var str;
		        if (eval(obj))
		            str = eval(obj).value;
		        else
		            str = obj;
		        str = str.toLowerCase();
		        str = str.replace(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g, "a");
		        str = str.replace(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g, "e");
		        str = str.replace(/ì|í|ị|ỉ|ĩ/g, "i");
		        str = str.replace(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g, "o");
		        str = str.replace(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g, "u");
		        str = str.replace(/ỳ|ý|ỵ|ỷ|ỹ/g, "y");
		        str = str.replace(/đ/g, "d");
		        //str= str.replace(/!|@|%|\^|\*|\(|\)|\+|\=|\<|\>|\?|\/|,|\.|\:|\;|\'| |\"|\&|\#|\[|\]|~|$|_/g,"-");  
		        /* tìm và thay thế các kí tự đặc biệt trong chuỗi sang kí tự - */
		        //str= str.replace(/-+-/g,"-"); //thay thế 2- thành 1-  
		        str = str.replace(/^\-+|\-+$/g, "");
		        //cắt bỏ ký tự - ở đầu và cuối chuỗi 
		        eval(obj).value = str.toUpperCase();
		    }
		</script>
        <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-120828173-1"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'UA-120828173-1');
</script>
	</div>
</div>
</asp:Content>

