<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
                        <a  href="admin/main.jsp"><i class="fa fa-desktop"></i> 首页</a>
                    </li>
                    <li>
                        <a  class="active-menu" href="showUserList.do"><i class="fa fa-user"></i> 用户列表</a>
                    </li> 
					 
					 <li>
                        <a href="showAdminScoreList.do"><i class="fa fa-pencil"></i> 考试记录</a>
                        
						</li>	
							
                    <li>
                        <a href="admin/libManagement.jsp" ><i class="fa fa-cog fa-fw" aria-hidden="true"></i> 题库管理</a>
                    </li>
                  
                </ul>

            </div>
     </nav>
  </div>
  <div id="page-wrapper">
  <div class="header"> 
                        <h1 class="page-header">
                           <small>当前共计：${requestScope.countOfUsers }人</small>
                        </h1>
			
									
		</div>
<div id="page-inner"> 
               
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                    
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table style="vertical-align:middle;text-align:center;" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th width="8%" style="vertical-align:middle;text-align:center;">编号</th>
                                            <th width="14%" style="vertical-align:middle;text-align:center;">用户名</th>
                                            <th width="19%" style="vertical-align:middle;text-align:center;">真实姓名</th>
                                      <th width="30%" style="vertical-align:middle;text-align:center;">身份证号</th>
                                      <th width="29%" style="vertical-align:middle;text-align:center;">联系电话</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    
                                    	<c:forEach items="${requestScope.userList}" 
                                         step="1" varStatus="i" var="item" >
                                        	
                                        	<tr>
              									<td>${i.index + 1}</td>
              									<td>${item.getUsername()}</td>
              									<td>${item.getName()}</td>
              									<td>${item.getIdnumber()}</td>
              									<td>${item.getTelno()}</td>
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
