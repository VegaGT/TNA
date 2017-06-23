<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<!-- CSS Files -->
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet" media="screen">
<link href="css/owl.theme.css" rel="stylesheet">
<link href="css/owl.carousel.css" rel="stylesheet">

<!-- Colors -->
<link href="css/css-index.css" rel="stylesheet" media="screen">
<!-- <link href="css/css-index-green.css" rel="stylesheet" media="screen"> -->
<!-- <link href="css/css-index-purple.css" rel="stylesheet" media="screen"> -->
<!-- <link href="css/css-index-red.css" rel="stylesheet" media="screen"> -->
<!-- <link href="css/css-index-orange.css" rel="stylesheet" media="screen"> -->
<!-- <link href="css/css-index-yellow.css" rel="stylesheet" media="screen"> -->

<!-- Google Fonts -->
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic" />
	

  </head>

  
  <body>
   <!-- /.parallax full screen background image -->
<div class="fullscreen landing parallax" style="background-image:url('images/bg.jpg');" data-img-width="2000" data-img-height="1333" data-diff="100">
	
	<div class="overlay">
		<div class="container">
			<div class="row">
				<div class="col-md-7">
					<!-- /.logo -->
					<div class="logo wow fadeInDown"> <a href=""><img src="images/logo.png" alt="logo"></a></div>

					<!-- /.main title -->
						<h1 class="wow fadeInLeft">
						电信网络学院
						</h1>
				</div> 
			
				<!-- /.signup form -->
				<div class="row">
				
				<div class="col-md-5">
					<div class="register-header wow fadeInUp">
					    <h3 class="form-title text-center" >欢迎加入TNA</h3>
						<form class="form-header" action="registration.do" role="form" method="POST" id="#">
						<input type="hidden" name="u" value="503bdae81fde8612ff4944435">
						<input type="hidden" name="id" value="bfdba52708">
							<div class="form-group">
								<input class="form-control input-lg" name="username" value="${param.username}" type="text" placeholder="用户名" required>
								<div class="tip">${errors["usernameE"]}</div>
							</div>
							<div class="form-group">
								<input class="form-control input-lg" name="password"  type="password" placeholder="密码" required>
							</div>
							<div class="form-group">
								<input class="form-control input-lg" name="okpassword"  type="password" placeholder="确认密码" required>
							</div>
							<div class="form-group">
								<input class="form-control input-lg" name="realnmae"  type="text" placeholder="真实姓名" required>
							</div>
							<div class="form-group">
								<input class="form-control input-lg" name="id"  type="text" maxlength="18"
								onKeypress="if(event.keyCode<48||event.keyCode>57)event.returnValue=false;" placeholder="身份证号" required>
							</div>
							<div class="form-group">
								<input class="form-control input-lg" name="phone"  type="text" maxlength="11"
								onKeypress="if(event.keyCode<48||event.keyCode>57)event.returnValue=false;" placeholder="联系电话" required>
							</div>
							<div class="form-group last">
								<input type="submit" class="btn" value="注册">
							</div>
							<p></p>
						</form>
					</div>				
				
				</div>
			</div>
		</div> 
	</div> 
</div>
</div>
         
  </body>
</html>

