﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>My JSP 'main.jsp' starting page</title>
<script type="text/javascript">
	function mod(id) {
		var form = document.getElementById(id);
		form.setAttribute("action", "admin/modifyItem.jsp");
		form.submit();
	}
	function del(id) {
		var form = document.getElementById(id);
		form.setAttribute("action", "deleteItem");
		form.submit();
	}
</script>
<style type="text/css">
.item {
	margin: 0 0 10px 5px;
	border-top: 0px;
	border-left: 0px;
	border-right: 0px;
	border-bottom: 0px;
	border-top: 0px;
	width: 300px;
	background-color: transparent;
}
</style>
<!-- Bootstrap Styles-->
<link href="css/bootstrap.css" rel="stylesheet">
<!-- FontAwesome Styles-->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- Custom Styles-->
<link href="css/custom-styles.css" rel="stylesheet">
<!-- Google Fonts-->
<link href="https://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet" type="text/css">
</head>
<body>
	<div id="wrapper">
		<nav class="navbar navbar-default top-navbar" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand"> <strong><i
						class="icon fa fa-globe"></i> 电信网络学院</strong>
				</a>


			</div>
			<ul class="nav navbar-top-links navbar-right">
				<li><a href="login.jsp"><i class="fa fa-power-off"></i>&nbsp;&nbsp;&nbsp;&nbsp;</a>
				</li>
			</ul>

		</nav>
		<!--/. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">

					<li><a href="admin/main.jsp"><i class="fa fa-desktop"></i>
							首页</a></li>
					<li><a href="showUserList.do"><i class="fa fa-user"></i>
							用户列表</a></li>

					<li><a href="showAdminScoreList.do"><i class="fa fa-pencil"></i>
							考试记录</a></li>

					<li><a class="active-menu" href="admin/libManagement.jsp"><i
							class="fa fa-cog fa-fw" aria-hidden="true"></i> 题库管理</a></li>

				</ul>

			</div>
		</nav>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header"></h1>
			</div>

			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading">题目列表</div>
							&nbsp;&nbsp;
							<button type="add" class="btn btn-default">
								<a href='admin/addItem.jsp'>添加试题</a>
							</button>

							<div class="panel-body">


								<c:forEach items="${requestScope.items}" var="item" varStatus="status">
									<div class="alert alert-warning">
										<form  id="${item.getQid()}" method="post">
											<input
													type="hidden" name="qid" 
													value="${item.getQid()}" >
											<div>
													${status.count}.
													<input
													type="text" name="question" class="item"
													value="${item.getQuestion()}" readonly>
													答案：
													<input
													type="text" name="answer" class="item"
													value="${item.getAnswer()}" readonly>
											</div>
											<div>
												<input type="text" name="option_a" class="item"
													value="${item.getOption_a()}" readonly>
											</div>
											<div>
												<input type="text" name="option_b" class="item"
													value="${item.getOption_b()}" readonly>
											</div>
											<div>
												<input type="text" name="option_c" class="item"
													value="${item.getOption_c()}" readonly>
											</div>
											<div>
												<input type="text" name="option_d" class="	item"
													value="${item.getOption_d()}" readonly>
											</div>
											<input type="button" class="btn btn-default" value="修改"
												onClick="mod(${item.getQid()})"> 
											<input type="button" class="btn btn-default" value="删除" 
											    onClick="del(${item.getQid()})">
										</form>
									</div>
								</c:forEach>

								<!-- <div class="alert alert-warning">
									1. JDK的构成中不包含以下哪个部分？ （答案：C）
									<p></p>
									A. Java编程语言
									<p></p>
									B. 工具及工具的API
									<p></p>
									C. Java EE扩展API
									<p></p>
									D. Java平台虚拟机
									<p></p>
									<button type="modify" class="btn btn-default">
										<a href="admin/modifyItem.jsp">修改</a>
									</button>
									<button type="delete" class="btn btn-default" align="right">删除</button>
								</div> -->


							</div>

						</div>
					</div>
				</div>

			</div>
		</div>
	</div>








	<!-- /. WRAPPER  -->
	<!-- JS Scripts-->
	<!-- jQuery Js -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- Bootstrap Js -->
	<script src="assets/js/bootstrap.min.js"></script>
	<!-- Metis Menu Js -->
	<script src="assets/js/jquery.metisMenu.js"></script>
	<!-- Custom Js -->
	<script src="assets/js/custom-scripts.js"></script>

</body>
</html>
