<%@page import="com.java2.pojo.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%-- <%
	if (request.getParameter("id") != null) {
		String id = request.getParameter("id");
		conn.execute("update music set click=click+1 where id=" + id
				+ "");
		ResultSet rs = conn
				.executeQuery("select * from music where id = " + id
						+ "");
		if (rs.next()) {
			String title = rs.getString("title");
			String singer = rs.getString("singer");
			String special = rs.getString("special");
			String value = rs.getString("value");
			long time = rs.getLong("time");
			Date date = new Date(time);
			SimpleDateFormat sdf = new SimpleDateFormat(
					"yyyy年MM月dd日 HH:mm:ss");
			String music_time = sdf.format(date);
			String click = rs.getString("click");
			String filePath = rs.getString("url");
			Random rd = new Random();
			int rd_id = rd.nextInt(9999);
%> --%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'show.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.form.js"></script>
<script type="text/javascript" src="js/nicejforms.js"></script>
<script type="text/javascript" src="js/audioplayer.js"></script>
<script type="text/javascript" src="js/thickbox.js"></script>
<link href="css/table.css" rel="stylesheet" type="text/css" />
<link href="css/page.css" rel="stylesheet" type="text/css" />
<link href="css/default.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/LoadingStatus.css" type="text/css" />
<link href="css/thickbox.css" rel="stylesheet" type="text/css" />
<style type="text/css" media="screen">
@import url(css/niceforms.css);
</style>
<script type="text/javascript">
$(document).ready(function(){
	$.NiceJForms.build();
});
</script>


</head>
<%User user = (User)session.getAttribute("User"); %>
<body>
	<div id="header">
		<div id="logo">
			<h1>JerryMusic</h1>
			<h2></h2>
		</div>
		<div id="menu">
			<ul>
				<li class="active"><a href="index.jsp" accesskey="1" title="">首页</a>
				</li>
				<li><a href="Controller?op=QueryAllMusic" accesskey="2"
					title="">音乐盒</a></li>
				<li><a href="show.jsp" accesskey="3" title="">音乐播放</a></li>
				<li><a href="uploadmusic.jsp" accesskey="3" title="">分享歌曲</a></li>
				<li><a href="together.jsp" accesskey="3" title="">音乐心情</a></li>
			</ul>
		</div>
	</div>
	<hr />
	<div id="page">
		<div id="bg">
			<div id="content">
				<div class="post">
					<h2 class="title">
						<%-- <%=title%> --%>
					</h2>
					<h3 class="date">
						<%-- <%=music_time%> --%>
					</h3>
					<%String url = (String)session.getAttribute("musicUrl"); 
								  if(url == null){
								  	url = "youlang.mp3";
								  }
								  String singer = (String)session.getAttribute("singer"); 
								  if(singer == null){
								  	singer = "网曲";
								  }
								%>
					<div class="entry">
						<p>
							试听：
							<embed width="290" height="24"
								src="file:///D:/myeclipsepojo/JerryMusic/WebRoot/music/<%=url %>"
								type="application/x-mplayer2" autostart="true" loop="true" />
							<br /> 歌手：
							<%=singer %><br /> 所在专辑：
							<%-- <%=special%> --%>
							<br /> 下载： <a href="<%-- <%=filePath%> --%>">
								<%-- <%=filePath%> --%>
							</a> <br />
							<%-- <%=value%> --%>
						</p>

					</div>
					<p class="meta">
						<%-- <%
								if (session.getAttribute("PlutoUser") != null) {
							%> --%>
						<a href="JavaScript:addbox('<%-- <%=id%> --%>');" class="comments">添加到我的音乐盒</a>
						<%-- <%
								}
							%> --%>
					</p>
				</div>
				<div class="post">
					<h2 class="title">我要留言</h2>
					<h3 class="date">&nbsp;</h3>
					<div class="entry">
						<p>
						<table width="80%" border="0" align="center">
							<tr>
								<td>
									<form id="myForm" name="myForm" method="post"
										action="Controller?op=liuyan">
										<label> 昵称： <br /> <%if(user!=null){ %> <input
											type="text" name="name" id="textfield" maxlength="16"
											value="<%=user.getNickname() %>" /> <%}else{ %> <input
											type="text" name="name" id="textfield" maxlength="16"
											value="游客" /> <%} %>
										</label> <br /> <br /> <label> 留言： <br /> <input
											type="hidden" /> <textarea name="comments" id="valueid"
												cols="20" rows="8"></textarea>
										</label>
										<div id="valueTip"></div>
										<br /> <label>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

											<input type="submit" name="button" id="button" value="提交" />
											<!-- <script type="text/javascript">
													$(function(){
														$("#button").click(function(){
															$.ajax({
																url:"Controller?op=liuyan",
																type:"post",
																//dataType:"json",
																success:function(data){
																	$("#one").html(data);
																}
															});
														});
													});
												</script> --> <!-- <script type="text/javascript">
													function toSubmit(){
														$("#myForm").submit();
													}
												</script> -->
										</label>
										<div id="message"></div>
									</form>
								</td>
							</tr>
						</table>

					</div>
					<p class="meta"></p>
				</div>
				<div id="LoadingStatus">
					<img src="images/ajax-loader.gif" />
				</div>
				<div>
					<h2 class="title">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;最近留言
					</h2>
					<h3 class="date">&nbsp;</h3>
					<div id="msg">
						<%ArrayList<String> msgList = (ArrayList<String>)session.getAttribute("msgList");
								if(msgList!=null){
									for(String str:msgList){
							 %>
						<p>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=str %></p>
						<%}} %>
						<!-- <div id="one"></div> -->
						<%-- <%
								for(int i=0;i<10;i++)
								{%>
									
								<%}
							 %> --%>

					</div>
					<!-- <script type="text/javascript">
							$(document).ready(function(){
								var options={
									target:"#msg",
								};
								$("#myForm").submit(function(){
									$(this).ajaxSubmit(options);
									return false;
								});
							});
						</script> -->
					<p class="meta"></p>

				</div>
			</div>
			<!-- end content -->
			<div id="sidebar">
				<div id="about-box" style="font-size: 12px">
					<p>
						<%
								if (user == null) {
							%>
					
					<form action="Controller?op=login" method="post">
						<label for="textinput"> &nbsp;&nbsp;用户名： </label> <br />
						&nbsp;&nbsp; <input type="text" id="textinput" name="userName"
							size="15" maxlength="16" /> <br /> <label for="passwordinput">
							&nbsp;&nbsp;密 码： </label> <br /> &nbsp;&nbsp; <input type="password"
							id="passwordinput" name="userPwd" size="15" maxlength="16" /> <br />
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
					<p>
						退出请点 <a href="Controller?op=logout" style="color: #FF0000">[注销登陆]</a>！
					</p>
					<%
							}
						%>
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
<%-- <%
	} else {
			response.sendRedirect("index.jsp");
		}
	} else {
		response.sendRedirect("index.jsp");
	}
%> --%>
