<%@page import="com.java2.pojo.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%-- <jsp:useBean id="conn" class="Pluto.DBConnection" scope="session" /> --%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'together.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<LINK rel=stylesheet type=text/css href="bsg/style_4_common.css">
	<LINK rel=stylesheet type=text/css href="bsg/style_4_forum_index.css">
    <SCRIPT type=text/javascript src="bsg/common.js"></SCRIPT>
    <LINK rel=archives href="http://bbs.besgold.com/archiver/">
    <LINK id=css_widthauto rel=stylesheet type=text/css href="bsg/style_4_widthauto.css">
	<SCRIPT type=text/javascript src="bsg/forum.js"></SCRIPT>


  </head>
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
<script type="text/javascript" src="js/audioplayer.js"></script>
		<link href="css/table.css" rel="stylesheet" type="text/css" />
		<link href="css/page.css" rel="stylesheet" type="text/css" />
		<link href="css/default.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="css/LoadingStatus.css" type="text/css" />
		<link href="css/thickbox.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript">
		function selectAll(chk)
		{
			var chk = document.form2.chkAll.checked;
			for (i=0;i<document.all.length;i++) {
				if (document.all[i].name=="list") {
					document.all[i].checked=chk;
				}
			}
		}
		</script>
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
						
						<div id="LoadingStatus">
							<img src="images/ajax-loader.gif" />
						</div>
						<div class="entry" id="musicbox">
							<SCRIPT type=text/javascript 
src="bsg/logging.js"></SCRIPT>


<DIV class="fl bm" style="width: 100%">
<DIV class="bm bmw  flg cl" style="width: 100%">
<DIV class="bm_h cl"><SPAN class=o><IMG id=category_128_img title=收起/展开 
onclick="toggle_collapse('category_128');" alt=收起/展开 
src="bsg/collapsed_no.gif"> </SPAN><SPAN class=y>分区版主: <A 
class=notabs href="#" 
c="1">tanxhua</A></SPAN>
<H2><A href="#">≡ 音乐心情 ≡</A></H2></DIV>
<DIV id=category_128 class=bm_c>
<TABLE class=fl_tb cellSpacing=0 cellPadding=0>
  <TBODY>
  <TR>
    <TD class=fl_g width="49.9%">      
      <DL>
        <DT><A href="http://bbs.besgold.com/forum-63-1.html">音乐讨论</A> <B><CITE 
        title=主题>2543</CITE><STRONG title=帖数><SPAN 
        title=42620>4万</SPAN></STRONG><EM title=今日>1</EM></B> </DT>
        <DD></DD>
        <DD class=fb2><A class=xi2 
        href="http://bbs.besgold.com/forum.php?mod=redirect&amp;tid=391269&amp;goto=lastpost#lastpost">求大神推荐耳机</A> 
        </DD>
        <DD class=fb1><A 
        href="http://u.besgold.com/home.php?mod=space&amp;username=gzswghb">gzswghb</A>&nbsp;&nbsp;&nbsp;发表于：<CITE><SPAN 
        title="2014-8-7 00:33">9&nbsp;小时前</SPAN></CITE></DD></DL></TD>
    <TD class=fl_g width="49.9%">      
      <DL>
        <DT><A href="#">原创交流</A> <B><CITE 
        title=主题>4151</CITE><STRONG title=帖数><SPAN 
        title=140406>14万</SPAN></STRONG><EM title=今日>1</EM></B> </DT>
        <DD></DD>
        <DD class=fb2><A class=xi2 
        href="http://bbs.besgold.com/forum.php?mod=redirect&amp;tid=133174&amp;goto=lastpost#lastpost">《软件求助帖》—— 
        找软件请到 ...</A> </DD>
        <DD class=fb1><A 
        href="http://u.besgold.com/home.php?mod=space&amp;username=mzz67255">mzz67255</A>&nbsp;&nbsp;&nbsp;发表于：<CITE><SPAN 
        title="2014-8-7 08:59">半小时前</SPAN></CITE></DD></DL></TD></TR>
  <TR class=fl_row>
    <TD class=fl_g width="49.9%">      
      <DL>
        <DT><A href="#">零碎心情</A> 
        <B><CITE title=主题>63</CITE><STRONG title=帖数>309</STRONG></B> </DT>
        <DD></DD>
        <DD class=fb2><A class=xi2 
        href="#">三动圈耳塞神器诞生 
        JVC全新FXZ ...</A> </DD>
        <DD class=fb1><A 
        href="http://u.besgold.com/home.php?mod=space&amp;username=mbl">mbl</A>&nbsp;&nbsp;&nbsp;发表于：<CITE><SPAN 
        title="2014-8-6 18:26">昨天&nbsp;18:26</SPAN></CITE></DD></DL></TD>
    <TD width="49.9%">&nbsp;</TD></TR></TR></TBODY></TABLE></DIV></DIV>

 
<STYLE type=text/css>A:link {
	TEXT-DECORATION: none
}
A:active {
	TEXT-DECORATION: none
}
A:visited {
	TEXT-DECORATION: none
}
</STYLE>

<SCRIPT> 
/* <!-- 
if (self.location !=top.location) 
{ 
　top.location="http://bbs.besgold.com" 
} 
// -->  */
</SCRIPT>

<SCRIPT type=text/javascript src="bsg/key.htm"></SCRIPT>
</P>
<P class=xs0>GMT+8, 2014-8-7 09:34<SPAN id=debuginfo> , Processed in 0.061544 
second(s), 3 queries , Gzip On, Memcache On. </SPAN></P></DIV>
<DIV id=frt>
<P>Powered by <STRONG><A href="http://www.discuz.net/" 
target=_blank>Discuz!</A></STRONG> <EM>X3</EM></P>
<P class=xs0>&copy; 2005-2014 <A href="http://www.besgold.com/" 
target=_blank>BESGOLD.COM</A></P></DIV></DIV>
<SCRIPT type=text/javascript src="bsg/home.php"></SCRIPT>


<SCRIPT type=text/javascript>_attachEvent(window, 'scroll', function () { showTopLink(); });checkBlind();</SCRIPT>

<DIV style="DISPLAY: none" id=discuz_tips></DIV>
<SCRIPT type=text/javascript>
				var tipsinfo = '1026111|X3|0.6||0||0|7|1407375255|78761a8fb6d951753e5158cc260ae270|2';
			</SCRIPT>

<SCRIPT type=text/javascript charset=UTF-8 
src="bsg/discuz_tips.js"></SCRIPT>

<SCRIPT type=text/javascript>
			if($('debuginfo')) {
				$('debuginfo').innerHTML = '. This page is cached  at 09:34:15 , Gzip enabled .';
			}
			</SCRIPT>
									<p class="meta">

									</p>
									</div>
									</div>
									</div>
									<!-- end contentn -->
									<div id="sidebar">
				<div id="about-box" style="font-size: 12px">
					<p>
						<%
								User user = (User)session.getAttribute("User");
								if (user == null) {
							%>
					
					<form action="Controller?op=login" method="post" class="niceform">
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
<%-- <%-- <%
	}
	} else {
		out.println(function.PlutoJump("请登陆后再访问!", "index.jsp"));
	}
%>
 --%> 
