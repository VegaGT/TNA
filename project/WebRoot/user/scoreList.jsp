<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import = "com.oracle.tna.domain.User" %>
<%@ page import = "com.oracle.tna.domain.ScoreListItem" %>
<%@ page import = "com.oracle.tna.user.service.ScoreListService" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                        <a  href="user/personalInfo.jsp"><i class="fa fa-user"></i> 个人信息</a>
                    </li> 
					 
					 <li>
                        <a href="user/exam.jsp"><i class="fa fa-pencil"></i> 参加考试</a>
                        
						</li>	
							
                    <li>
                        <a class="active-menu" href="user/scoreList.jsp"><i class="fa fa-list"></i> 考试记录</a>
                    </li>
                  
                </ul>

            </div>
     </nav>
  </div>
  <div id="page-wrapper">
  <div class="header"> 
                        <h1 class="page-header">
                            考试记录 <small>显示您最近的考试情况</small>
                        </h1>
			
									
		</div>
<div id="page-inner"> 
               
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                    
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>编号</th>
                                            <th>考试时间</th>
                                            <th>分数</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                                
                                        <c:forEach  begin="1" end="${requestScope.count}" items="${requestScope.scoreList}" 
                                         step="1" varStatus="i" var="item" >
                                        	
                                        	<tr>
              									<td>${i.index}</td>
              									<td>${item.getData()}</td>
              									<td>${item.getScore()}</td>
          									</tr>
          									
                                        </c:forEach>
                                  
                                    </tbody>
                                </table>
                            </div>
                            
                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>
	</div>
  </div>

          
</html>
