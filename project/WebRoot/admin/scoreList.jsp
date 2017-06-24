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
                        <a  href="admin/userList.jsp"><i class="fa fa-user"></i> 用户列表</a>
                    </li> 
					 
					 <li>
                        <a class="active-menu"  href="admin/scoreList.jsp"><i class="fa fa-pencil"></i> 考试记录</a>
                        
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
                            <small>总计：35条记录 &nbsp;&nbsp;&nbsp;&nbsp;平均成绩：90分</small>
                        </h1>
			
									
		</div>
<div id="page-inner"> 
               
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                    
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table width="80%" style="vertical-align:middle;text-align:center;" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th style="vertical-align:middle;text-align:center;" width="8%">编号</th>
                                            <th style="vertical-align:middle;text-align:center;" width="16%">用户名</th>
                                            <th style="vertical-align:middle;text-align:center;" width="20%">真实姓名</th>
                                      <th style="vertical-align:middle;text-align:center;" width="30%">考试时间</th>
                                      <th style="vertical-align:middle;text-align:center;" width="20%">成绩</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="odd gradeX">
                                            <td >1</td>
                                            <td>zhangsan</td>
                                            <td>张三</td>
                                            <td>2016.12.17 9:00</td>
                                            <td>90</td>     
                                        </tr>
                                        <tr class="even gradeC">
                                            <td>2</td>
                                            <td>abc</td>
                                            <td>刘一</td>
                                            <td>2016.12.19 9:00</td>
                                            <td>87</td>
                                        </tr>
                                        <tr class="odd gradeA">
                                            <td>3</td>
                                            <td>jvsw</td>
                                            <td>陈五</td>
                                            <td>2016.12.22 9:00</td>
                                            <td>93</td>
                                        </tr>
                                        <tr class="even gradeA">
                                            <td>4</td>
                                            <td>Internet Explorer 6</td>
                                            <td>Win 98+</td>
                                            <td>141041004104047777</td>
                                            <td>18878672511</td>
                                        </tr>
                                        <tr class="odd gradeA">
                                            <td>5</td>
                                            <td>Internet</td>
                                            <td>Win XP SP2+</td>
                                            <td>111041004104047777</td>
                                            <td>12378672511</td>
                                        </tr>
                                        <tr class="even gradeA">
                                            <td>6</td>
                                            <td>AOL browser (AOL desktop)</td>
                                            <td>Win XP</td>
                                            <td>141049904104047777</td>
                                            <td>19978672511</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>7</td>
                                            <td>Firefox 1.0</td>
                                            <td>Win 98+ / OSX.2+</td>
                                            <td>141841004104047777</td>
                                            <td>18878672091</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>8</td>
                                            <td>Firefox 1.5</td>
                                            <td>Win 98+ / OSX.2+</td>
                                            <td>141041004104046477</td>
                                            <td>18878672512</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>9</td>
                                            <td>Firefox 2.0</td>
                                            <td>Win 98+ / OSX.2+</td>
                                            <td>141041554104047777</td>
                                            <td>18878602511</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>10</td>
                                            <td>Firefox 3.0</td>
                                            <td>Win 2k+ / OSX.3+</td>
                                            <td>141041004188047777</td>
                                            <td>18878671211</td>
      
                                        </tr>
                                        <tr class="gradeA">
                                            <td>11</td>
                                            <td>Camino 1.0</td>
                                            <td>OSX.2+</td>
                                            <td>141041123104047777</td>
                                            <td>18879002511</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>12</td>
                                            <td>Camino 1.5</td>
                                            <td>OSX.3+</td>
                                            <td>141131004104047777</td>
                                            <td>10078672511</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>13</td>
                                            <td>Netscape 7.2</td>
                                            <td>Win 95+ / Mac OS 8.6-9.2</td>
                                            <td>141052004104047777</td>
                                            <td>18008672511</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>14</td>
                                            <td>Netscape Browser 8</td>
                                            <td>Win 98SE+</td>
                                            <td>141041004123047777</td>
                                            <td>18878609811</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>15</td>
                                            <td>Netscape Navigator 9</td>
                                            <td>Win 98+ / OSX.2+</td>
                                            <td>141041119874047777</td>
                                            <td>18878543511</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>16</td>
                                            <td>Mozilla 1.0</td>
                                            <td>Win 95+ / OSX.1+</td>
                                            <td>141041037704047777</td>
                                            <td>18878670867</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>17</td>
                                            <td>Mozilla 1.1</td>
                                            <td>Win 95+ / OSX.1+</td>
                                            <td>142321004104047777</td>
                                            <td>18870982511</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>18</td>
                                            <td>Mozilla 1.2</td>
                                            <td>Win 95+ / OSX.1+</td>
                                            <td>141041004104047777</td>
                                            <td>18878672511</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>19</td>
                                            <td>Mozilla 1.3</td>
                                            <td>Win 95+ / OSX.1+</td>
                                            <td>141041004156047777</td>
                                            <td>18878882511</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>20</td>
                                            <td>Mozilla 1.4</td>
                                            <td>Win 95+ / OSX.1+</td>
                                            <td>141013004104047777</td>
                                            <td>18878542511</td>
                                        </tr>
                                        
                                           
                                            
                                        
                                        
                                        
                                        
                                     
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
