<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="com.oracle.tna.domain.User"%>
<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">  
    <title>My JSP 'main.jsp' starting page</title>
     <!-- Bootstrap Styles-->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="assets/js/Lightweight-Chart/cssCharts.css">
	
  </head>
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
      <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">

                  <li>
                        <a  href="user/main.jsp"><i class="fa fa-desktop"></i> 首页</a>
                    </li>
                    <li>
                        <a class="active-menu" href="user/personalInfo.jsp"><i class="fa fa-user"></i> 个人信息</a>
                    </li> 
					 
					 <li>
                        <a href="user/exam.jsp"><i class="fa fa-pencil"></i> 参加考试</a>
                        
						</li>	
							
                    <li>
                        <a href="showScoreList.do"><i class="fa fa-list"></i> 考试记录</a>
                    </li>
                  
                </ul>

            </div>
     </nav>
  </div>
  <div id="page-wrapper">
    <div class="header"> 
                        <h7 class="page-header">
                           
                        </h7>
                        </div>
                        
   <div id="page-inner">
  		  <div class="row">
                        <div class="col-xs-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="card-title">
                                        <div class="title">个人资料</div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                  
                                    <%
    									User user = (User)session.getAttribute("user");
    									String name = new String(user.getName());
    									String username = new String(user.getUsername());
    									String password = new String(user.getPassword());
    									String idnumber = new String(user.getIdnumber());
    									String telno = new String(user.getTelno());
    								%>
                                    <div>
                                    <div class="alert alert-danger">
									用户名：<%=username%><p></p>
									真实姓名：<%=name%> <p></p>
									身份证号：<%=idnumber%><p></p>
									联系电话：<%=telno%><p></p> 
									
									
									
                                        </div>
                                        <button type="submit" class="btn btn-default"><a href="user/modifyInfo.jsp">修改个人资料</a></button>
                                       
  									</div>
  					</div>
  				</div>
  			</div>
  		</div>
  	</div>

          
</html>