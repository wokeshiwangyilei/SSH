<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% 
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
%>
<!-- 中间首页 -->
	<div class="wrap typocn" >
		<div class="container" style="width:75%;float:left;margin:15px">
			<div class="row-fluid">
				<!-- 权限与版本信息 和 资源统计 -->
				<div class="span6">
					<!-- 权限与版本信息 -->
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">授权与版本信息</h3>
						</div>
						<table class="table table-hover">
							<tbody>
								<tr>
									<td class="td1">授权用户名称:</td>
									<td class="td2">竞技场</td>
								</tr>
								<tr>
									<td class="td1">授权用户数:</td>
									<td class="td2">无限制</td>
								</tr>
								<tr>
									<td class="td1">授权使用时间:</td>
									<td class="td2">无限制</td>
								</tr>
								<tr>
									<td class="td1">版本：</td>
									<td class="td2">5.0.3656</td>
								</tr>
								<tr>
									<td class="td1">发布日期</td>
									<td class="td2">20161001</td>
								</tr>
								<tr>
									<td class="td1">当前时间</td>
									<td class="td2">2017年9月27日&nbsp;(星期三,第39周)</td>
								</tr>
							</tbody>
						</table>
					</div>
                    <!-- end 权限与版本信息 -->
                    <!-- 资源统计 -->
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">资源统计</h3>
						</div>
						<table class="table table-hover">
							<tbody>
								<tr>
									<td class="td1">系统账号数:</td>
									<td class="td2">340 (新注册: 365 )</td>
								</tr>
								<tr>
									<td class="td1">系统课程数:</td>
									<td class="td2">33</td>
								</tr>
								<tr>
									<td class="td1">发布考试总数:</td>
									<td class="td2">综合考试: 17 , 课程考试: 2</td>
								</tr>
								<tr>
									<td class="td1">举办面授培训总数:</td>
									<td class="td2">18</td>
								</tr>
								<tr>
									<td class="td1">发布调查问卷总数:</td>
									<td class="td2">33</td>
								</tr>
								<tr>
									<td class="td1">知识库总条目数:</td>
									<td class="td2">32</td>
								</tr>
						 
							</tbody>
						</table>
					</div>
				    <!-- end 资源统计 -->
				</div>
                <!-- end 权限与版本信息 和 资源统计 -->

                <!-- 系统运行环境   和  活动统计-->
				<div class="span6">
				    <!-- 系统运行环境 -->
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">系统运行环境等信息</h3>
						</div>
						<table class="table table-hover">
							<tbody>
								<tr>
									<td class="td1">操作系统</td>
									<td class="td2">WINNT</td>
								</tr>
								<tr>
									<td class="td1">Web服务器:</td>
									<td class="td2">Apache/2.2.22 (Win32) mod_ssl/2.2.22
										OpenSSL/0.9.8o mod_h264_streaming/2.2.7&nbsp;cgi-fcgi</td>
								</tr>
								<tr>
									<td class="td1">数据库:</td>
									<td class="td2">Mysql &nbsp; 5.1.50-community</td>
								</tr>
								<tr>
									<td class="td1">PHP版本:</td>
									<td class="td2">5.3.14</td>
								</tr>
								<tr>
									<td class="td1">临时上传文件夹位置:</td>
									<td class="td2">C:\Windows\TEMP</td>
								</tr>
								<tr>
									<td class="td1">PHP 最大允许上传:</td>
									<td class="td2">100M</td>
								</tr>
 
							</tbody>
						</table>
					</div>
                    <!-- end 系统运行环境 -->
 
                    <!-- 活动统计 -->
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">活动统计</h3>
						</div>
						<table class="table table-hover">
							<tbody>
								<tr>
									<td class="td1">学习总时间:</td>
									<td class="td2">62 小时</td>
								</tr>
								<tr>
									<td class="td1">本年度学习总时间:</td>
									<td class="td2">7 小时</td>
								</tr>
								<tr>
									<td class="td1">本月学习总时间:</td>
									<td class="td2">1 小时</td>
								</tr>
								<tr>
									<td class="td1">本年度访问总次数:</td>
									<td class="td2">1063</td>
								</tr>
								<tr>
									<td class="td1">本月访问总次数:</td>
									<td class="td2">514</td>
								</tr>
								<tr>
									<td class="td1">上月访问总次数:</td>
									<td class="td2">11</td>
								</tr>
							</tbody>
						</table>
					</div>
				    <!-- end 活动统计 -->
				</div>
                <!-- end 系统运行环境  和活动统计-->
			</div>

		</div>

	</div>
	<!--  end 中间首页  -->
	<!-- 返回顶部 -->
	<a id="scrollUp" href="#top" title="" style="position: fixed; z-index: 2147483647; display: none;"></a>
	<!-- end 返回顶部 --> 
