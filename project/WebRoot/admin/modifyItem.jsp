<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">  
    <title>My JSP 'main.jsp' starting page</title>
	<!-- Bootstrap Styles-->
    <link href="css/bootstrap.css" rel="stylesheet">
     <!-- FontAwesome Styles-->
    <link href="css/font-awesome.css" rel="stylesheet">
	
    <link href="css/select2.min.css" rel="stylesheet">
	<link href="css/checkbox3.min.css" rel="stylesheet">
        <!-- Custom Styles-->
    <link href="css/custom-styles.css" rel="stylesheet">
     <!-- Google Fonts-->
   <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css">
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
                 <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" >
                <strong><i class="icon fa fa-globe"></i> 电信网络学院</strong>
                </a>
				
		
            </div>
     <ul class="nav navbar-top-links navbar-right">
                 <li>
                        <a href="login.jsp"><i class="fa fa-power-off"></i>&nbsp;&nbsp;&nbsp;&nbsp;</a>
                    </li>
			</ul>
     </nav>
        <!--/. NAV TOP  -->
       <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">

                  <li>
                        <a  href="admin/main.jsp"><i class="fa fa-desktop"></i> 首页</a>
                    </li>
                    <li>
                        <a href="admin/userList.jsp"><i class="fa fa-user"></i> 用户列表</a>
                    </li> 
					 
					 <li>
                        <a href="admin/scoreList.jsp"><i class="fa fa-pencil"></i> 考试记录</a>
                        
						</li>	
							
                    <li>
                        <a  class="active-menu" href="admin/libManagement.jsp" ><i class="fa fa-cog fa-fw" aria-hidden="true"></i> 题库管理</a>
                    </li>
                  
                </ul>

            </div>
     </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
		  
		
            <div id="page-inner"> 
                       
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="card-title">
                                        <!--  <div class="title"></div>-->
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <form>
                                        <div class="form-group">
                                            <label for="Inputmain">题干信息</label>
                                            <input type="test" class="form-control"  value="1. JDK的构成中不包含以下哪个部分？ ">
                                        </div>
                                        <div class="form-group">
                                            <label for="InputOption1">选项A</label>
                                            <input type="option1" class="form-control"  value="A. Java编程语言">
                                        </div>
                                        <div class="form-group">
                                            <label for="InputOption2">选项B</label>
                                            <input type="option1" class="form-control"  value="B. 工具及工具的API">
                                        </div>
                                        <div class="form-group">
                                            <label for="InputOption3">选项C</label>
                                            <input type="option1" class="form-control"  value="C. Java EE扩展API">
                                        </div>
                                        <div class="form-group">
                                            <label for="InputOption4">选项D</label>
                                            <input type="option1" class="form-control"  value="D. Java平台虚拟机">
                                        </div>
                                        <div class="form-group">
                                            <label for="InputOption">正确选项</label>
                                            <input type="option1" class="form-control"  value="C">
                                        </div>
                                        
                                        <button type="submit" class="btn btn-default">确认修改</button>
                                        <button type="reset" class="btn btn-default" align="right">重置</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    
               
			
			</div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- Bootstrap Js -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- Metis Menu Js -->
    <script src="assets/js/jquery.metisMenu.js"></script>
	<script src="assets/js/select2.full.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
	  $(".selectbox").select2();
	});
	</script>
      <!-- Custom Js -->
    <script src="assets/js/custom-scripts.js"></script> 
	

</body></html>