<%@page import="com.java2.pojo.User"%>
<%@page import="com.java2.pojo.Music"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%-- <jsp:useBean id="conn" class="Pluto.DBConnection" scope="session" /> --%>
<%-- <%
	if (session.getAttribute("PlutoUser") != null) {
		int nowpage = function.strToInt(request.getParameter("page"));
		int pagesize = 20; //每页容纳的条数
		int limit = 0; //从多少条开始
		int maxPage = 0; //一共多少页
		if (nowpage != 0) {
			limit = (nowpage - 1) * pagesize;
		} else {
			nowpage = 1;
		}
		String userName = session.getAttribute("PlutoUser").toString();
		ResultSet user_rs = conn
				.executeQuery("select id,music_box from [user] where name = '"
						+ userName + "'");
		user_rs.next();

		String id = user_rs.getString("id");
		ResultSet message_rs = conn
				.executeQuery("select count(id) as count from message where [to] ="
						+ id + " and new = 1");
		message_rs.next();
		int myMessage = message_rs.getInt("count");
		String music_box = user_rs.getString("music_box");
		if (function.isInvalid(music_box)) {
			out.println(function.PlutoJump("对不起，您的音乐盒中没有任何音乐，请先添加！",
					"index.jsp"));
		} else {
			String[] music_box_arr = music_box.split(",");
			int count = music_box_arr.length;
			maxPage = (count % pagesize == 0) ? (count / pagesize)
					: (count / pagesize + 1);
%> --%>
<html>
<head>
<%-- <base href="<%=basePath%>"> --%>

<title>My JSP 'musicbox.jsp' starting page</title>

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
<script type="text/javascript">
		function selectAll(chk)
		{
			var chk = document.form2.chkAll.checked;
			for (var i=0;i<document.all.length;i++) {
				if (document.all[i].name=="list") {
					document.all[i].checked=chk;
				}
			}
		}
		</script>

</head>
<%User user = (User)session.getAttribute("User");
    String Name = "我们";
    if(user!=null){
    	Name = user.getNickname();
    }
   %>
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
						<%=Name %>的音乐盒
					</h2>
					<div id="LoadingStatus">
						<img src="images/ajax-loader.gif" />
					</div>
					<div class="entry" id="musicbox">
						<p>
						<form method="post" name="form2" id="form2" action="setbox.action">
							<TABLE width="580" align="center" class="mytable">
								<THEAD>
									<TR class=odd>
										<TH scope=col width="5">ID</TH>
										<TH scope=col>歌曲</TH>
										<TH scope=col>歌手</TH>
										<TH scope=col>试听</TH>
										<TH scope=col><input type="checkbox" name="chkAll"
											value="" title="全选/取消" onclick="selectAll();" /></TH>
									</TR>
								</THEAD>
								<tbody>
									<%ArrayList<Music> musicArr = (ArrayList<Music>)session.getAttribute("AllMusic"); %>
									<%if(musicArr!=null){
									  int i = 1;
									  for(Music music:musicArr){
									 %>
									<tr>
										<td><%=i++ %></td>
										<td><%=music.getTitle() %></td>
										<td><%=music.getSinger() %></td>
										<td><font color="red"><a
												href="Controller?op=shwoMusic&url=<%=music.getUrl() %>&singer=<%=music.getSinger() %>">播放</a></font></td>
										<td><input type="checkbox" name="list" /></td>
									</tr>
									<%}} %>
								</tbody>
								<TFOOT></TFOOT>
							</TABLE>
						</form>
					</div>
				</div>
			</div>
			<div id="sidebar">
				<div id="about-box" style="font-size: 12px">
					<p>
						<%
								if (user == null) {
							%>
					
					<form action="Controller?op=login" method="post">
						<label for="textinput"> &nbsp;&nbsp;用户名： </label> <br />
						&nbsp;&nbsp; <input type="text" id="textinput" name="userName"
							style="width:150;" size="15" maxlength="16" /> <br /> <label
							for="passwordinput"> &nbsp;&nbsp;密 码： </label> <br />
						&nbsp;&nbsp; <input type="password" id="passwordinput"
							name="userPwd" style="width:150; " size="15" maxlength="16" /> <br />
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
					<%} %>
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
