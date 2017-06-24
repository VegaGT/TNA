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
                        <a href="user/scoreList.jsp"><i class="fa fa-pencil"></i> 考试记录</a>
                        
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

			  <div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">
				 题目列表
				</div>        
							&nbsp;&nbsp;<button type="add" class="btn btn-default"><a href="admin/addItem.jsp">添加试题</button></a> 
							<div class="panel-body">
								<div class="alert alert-warning">
									1. JDK的构成中不包含以下哪个部分？ （答案：C）<p></p> 
									A. Java编程语言<p></p>
									B. 工具及工具的API<p></p>
C. Java EE扩展API<p></p>
D. Java平台虚拟机<p></p>
<button type="modify" class="btn btn-default"><a href="admin/modifyItem.jsp">修改</button>
                                        <button type="delete" class="btn btn-default" align="right">删除</button>
								</div>
								
							</div>
				</div>
			</div>						
				</div>
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
      <!-- Custom Js -->
    <script src="assets/js/custom-scripts.js"></script>
 
</body>
</html>
			