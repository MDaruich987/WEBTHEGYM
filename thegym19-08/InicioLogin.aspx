<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioLogin.aspx.cs" Inherits="thegym19_08.InicioLogin" %>

<style type="text/css">
    .auto-style1 {
        margin-left: 1;
    }
</style>

<form id="form1" runat="server">
&nbsp;<html><head><title>TheGym :: LogIn</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet' type='text/css'>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />-->
<script src="js/jquery.min.js"></script>
<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
<!-- grid-slider -->
<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
<script type="text/javascript" src="js/jquery.contentcarousel.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<!-- //grid-slider -->
</head>
<body>
     <!-- start header_top -->
	<div class="header">
	   <div class="container">
		  <div class="header-text">
			<h1>
                <asp:Label ID="Label3" runat="server" Text="LOG IN"></asp:Label>
              </h1>
			<h2>
                <asp:Label ID="lblusuario" runat="server" Text="Usuario:" Font-Size="Large"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="tbusuario" runat="server" Height="27px" Width="180px" CssClass="auto-style1" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
                <br>
                <asp:Label ID="lblusuario0" runat="server" Font-Size="Medium" Text="Contraseña:"></asp:Label>
                <asp:TextBox ID="tbcontraseña" runat="server" Height="27px" Width="177px" Font-Size="Medium" ForeColor="Black" TextMode="Password"></asp:TextBox>
            </h2>
              <h2>
                  <asp:Label ID="Label1" runat="server" Font-Size="Medium"></asp:Label>
                <br>
            </h2>
              <div class="banner_btn">
				  <asp:Button ID="btnlogeo" runat="server" BorderColor="White" BorderStyle="None" Height="37px" OnClick="btnlogeo_Click" Text="Ingresar" Width="100px" />
&nbsp;</div>
		  </div>
		  <div class="header-arrow">
		     <a href="#menu" class="class scroll"><span> </span </a>
		  </div>
	    </div>
	  </div>
	<!-- end header_top -->
    </form>
</body>
    </html>
