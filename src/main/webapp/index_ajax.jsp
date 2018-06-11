<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index_ajax.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/thickbox.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/thickbox.js"></script>
<script type="text/javascript" src="js/nicejforms.js"></script>

  </head>
  
  <body>
    <div class="post">
	<h2 class="title">
		<a href="show.jsp?id=<%-- <%=id%> --%>"><%-- <%=title%> --%></a>
	</h2>
	<h3 class="date">
		<%-- <%=music_time%> --%>
	</h3>
	<div class="entry">
		<p>
			试听：
			<object type="application/x-shockwave-flash"
				data="player/audioplayer.swf" width="290" height="24"
				id="audioplayer<%-- <%=rd_id%> --%>">
				<param name="movie" value="player/audioplayer.swf" />
				<param name="FlashVars"
					value="playerID=<%-- <%=rd_id%> --%>&soundFile=<%-- <%=filePath%> --%>" />
				<param name="quality" value="high" />
				<param name="menu" value="false" />
				<param name="wmode" value="transparent" />
			</object>
			<br />
			类型：
			<%-- <%=type%> --%><br />
			歌手：
			<%-- <%=singer%> --%><br />
			所在专辑：
			<%-- <%=special%> --%><br />
			<%-- <%=value%> --%>
		</p>
	</div>
	<p class="meta">
		<a href="show.jsp?id=<%-- <%=id%> --%>" class="more">阅读全文</a>
		<b>|</b>
		<span class="comments"><%-- <%=comments%> --%>条评论</span>
		<b>|</b>
		<span class="comments"><%-- <%=click%> --%>次点击</span>
		<%
			if (session.getAttribute("PlutoUser") != null) {
		%>
		<b>|</b>
		<a href="JavaScript:addbox('<%-- <%=id%> --%>');" class="comments">添加到我的音乐盒</a>
		<b>|</b>
		分享人:<img src="images/img14.gif">
		&nbsp;
		<a href="sendmusic.jsp?height=230&width=350&modal=true&id=<%-- <%=id%> --%>&userId=<%-- <%=userId %> --%>&uname=<%-- <%=uid %> --%>"
			class="thickbox" title="我要注册"><%-- <%=uid %> --%></a>
		<%
			}
		%>
	</p>
</div>
<%
	/* } while (rs.next());
		out.println("<div class=\"yahoo2\">"
				+ function.page(maxPage, nowpage, pagesize,
						"index_ajax.jsp") + "</div><br />");
	} else { */
%>
<div class="post">
	暂无任何歌曲，快来分享给大家喔~！
</div>
  </body>
</html>
