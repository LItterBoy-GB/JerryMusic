<%@page import="com.java2.pojo.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="">
    
    <title>My JSP 'upload.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/nicejforms.js"></script>
		<script type="text/javascript" src="js/thickbox.js"></script>
		<script type="text/javascript" src="js/audioplayer.js"></script>
		<link href="css/default.css" rel="stylesheet" type="text/css" />
		<link href="css/thickbox.css" rel="stylesheet" type="text/css" />
		<style type="text/css" media="screen">
@import url(css/niceforms.css);
</style>
<script type="text/javascript">
		$(document).ready(function(){
			$.NiceJForms.build()
		});
		
		function check(){
			var title = $("#title").val();
			var singer = $("#singer").val();
			var special = $("#special").val();
			var value = $("#value").val();
			if(!title || title.length<1){
				$("#tip").html(" <font color=\"red\">歌曲名称不能为空！</font>");
				return false;
			}else if(!singer || singer.length<1){
				$("#tip").html(" <font color=\"red\">歌手不能为空！</font>");
				return false;
			}else if(!special || special.length<1){
				$("#tip").html(" <font color=\"red\">所属专辑不能为空！</font>");
				return false;
			}else if(!value || value.length<10 || value.length>200){
				$("#tip").html(" <font color=\"red\">简介必须大于10个字符且小于200个字符！</font>");
				return false;
			}else {
				$("#tip").html(" ");
				return true;
			}
		}
		</script>
  </head>
  
  <body>
		<div id="header">
			<div id="logo">
				<h1>
					JerryMusic
				</h1>
				<h2>
			
				</h2>
			</div>
			<div id="menu">
				<ul>
					<li class="active">
						<a href="index.jsp" accesskey="1" title="">首页</a>
					</li>
					<li>
						<a href="Controller?op=QueryAllMusic" accesskey="2" title="">音乐盒</a>
					</li>
					<li>
						<a href="show.jsp" accesskey="3" title="">音乐播放</a>
					</li>
					<li>
						<a href="uploadmusic.jsp" accesskey="3" title="">分享歌曲</a>
					</li>
					<li>
						<a href="together.jsp" accesskey="3" title="">音乐心情</a>
					</li>				
				</ul>
			</div>
		</div>
		<hr />
		<div id="page">
			<div id="bg">
				<div id="content">
					<div class="post">
						<h2 class="title">
							上传音乐第一步（上传音乐）
						</h2>

						<div class="entry">
							<p>
							<form id="form1" name="form1" method="post"
								action="Controller?op=insert"
								onsubmit="">
								<input type="hidden" name="path"
									value="<%-- <%=request.getParameter("path")%> --%>" />
								<table width="80%" border="0" align="center">
									<tr>
										<td height="31">
											<div align="center">
												您的音乐已经上传成功！
											</div>
										</td>
									</tr>
									<tr>
										<td height="10">

										</td>
									</tr>
									<tr>
										<td height="15">

										</td>
									</tr>
									<tr>
										<td>
											<div align="center">
												歌曲名称：
												<input type="text" name="title" id="title" size="15"
													 value = "<%=(String)request.getAttribute("fileName") %>"/>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div align="center">
												歌&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;手：
												<input type="text" name="singer" id="singer" size="15"
													 />
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div align="center" id="tip">

											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div align="center">
												<input type="submit" name="button" id="button" value="提交" />
											</div>
										</td>
									</tr>
								</table>
							</form>
						</div>
						<p class="meta">

						</p>
					</div>
				</div>
				<!-- end content -->
				<div id="sidebar">
				<div id="about-box" style="font-size: 12px">
					<p>
						<%
								User user = (User)session.getAttribute("User");
								if (user == null) {
							%>
					
					<form action="Controller?op=login" method="post">
						<label for="textinput"> &nbsp;&nbsp;用户名： </label> <br />
						&nbsp;&nbsp; <input type="text" id="textinput" name="userName" style="width:150;"
							size="15" maxlength="16" /> <br /> <label for="passwordinput">
							&nbsp;&nbsp;密 码： </label> <br /> &nbsp;&nbsp; <input type="password"
							id="passwordinput" name="userPwd" style="width:150; "size="15" maxlength="16" /> <br />
						<br /> &nbsp;&nbsp;&nbsp;&nbsp; <a
							href="register.jsp?height=175&width=300&modal=true"
							class="thickbox" title="我要注册">我要注册</a> &nbsp;&nbsp; <input
							type="submit" value="登  陆" />

					</form>


					<p></p>
					<%
							} else {
						%>
					<p>
						<%=user.getNickname()%>，欢迎您回来！
					</p>
					<p>
						
						如果您有音乐分享，您可以点我进行 <a href="uploadmusic.jsp" style="color: red">[上传音乐]</a>！
						<br />
					</p>
					<%} %>
					<p>
						退出请点 <a href="Controller?op=logout" style="color: #FF0000">[注销登陆]</a>！
					</p>
				</div>
				<ul>
					<li>
						<h2>最新消息</h2>
						<ul>
						</ul>
					</li>
					<li>
						<h2>友情链接</h2>
						<ul>
						</ul>
					</li>
				</ul>
			</div>
			<!-- end sidebar -->
			<div style="clear: both;">&nbsp;</div>
		</div>
	</div>
	<!-- end page -->
	<hr />
	<div id="footer">
		<p>(c) 2008 onlinemusic</p>
	</div>
	</body>
</html>
