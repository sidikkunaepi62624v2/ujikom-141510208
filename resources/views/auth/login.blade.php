<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Login</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
		<link href="{{asset('css2.css')}}" rel="stylesheet" type="text/css" media="all">
		<!-- online-fonts -->
		<link href="//fonts.googleapis.com/css?family=Roboto+Slab:100,300,400,700Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900iSlabo+27px&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
	</head>
	<body>
		<div class="main-w3l">
		<div class="w3layouts-main">
			<h2>Login Now</h2>
				<form action="#" method="post">
					<input value="E-MAIL" name="Email" type="email" required="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'E-Mail';}"/>
					<input value="PASSWORD" name="Password" type="password" required="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'password';}"/>
					<span><input type="checkbox" />Remember Me</span>
					<h6><a href="#">Forgot Password?</a></h6>
						<div class="clear"></div>
						<input type="submit" value="login" name="login">
				</form>
				<p>Don't Have an Account ?<a href="#">Register Now</a></p>
		</div>
		</div>
		<!--//main-->

		<!--footer-->
		<div class="footer-w3l">
			<p>&copy; 2017 Smart Login Form. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
		</div>
		<!--//footer-->

	</body>
</html>