<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%-- <%
		response.setHeader("Expires", "Sat, 6 May 1995 12:00:00 GMT");
		response.setHeader("Cache-Control",
				"no-store, no-cache, must-revalidate");
		response.addHeader("Cache-Control", "post-check=0, pre-check=0");
		response.setHeader("Pragma", "no-cache");
		int id = function.strToInt(request.getParameter("id"));
		int nowpage = function.strToInt(request.getParameter("page"));
		int pagesize = 10; //每页容纳的条数
		int limit = 0; //从多少条开始
		int maxPage = 0; //一共多少页
		if (nowpage != 0) {
			limit = (nowpage - 1) * pagesize;
		} else {
			nowpage = 1;
		}
		ResultSet rs = conn
				.executeQuery("select count(id) as count from comments where music_id = "
						+ id + "");
		rs.next();
		int count = rs.getInt("count");
		maxPage = (count % pagesize == 0) ? (count / pagesize) : (count
				/ pagesize + 1);
		rs.close();
		rs = conn.executeQuery("select top "+pagesize+ " * from comments where music_id not in(select top "
		+limit*pagesize+" music_id from comments order by music_id desc) order by music_id desc");
		if (rs.next()) {
			do {
				String value = rs.getString("value");
				String name = rs.getString("name");
				long time = rs.getLong("time");
				Date date = new Date(time);
				SimpleDateFormat sdf = new SimpleDateFormat(
						"yyyy年MM月dd日 HH:mm:ss");
				String comments_time = sdf.format(date);
	%> --%>
	<TBODY>
		<TR class=odd>
			<TD>
				<div align="left">
					<%-- [<%=name%>] 发表于
					<%=comments_time%> --%>
				</div>
			</TD>
		</TR>
	</TBODY>
	<TFOOT></TFOOT>
	<TBODY>
		<TR>
			<TD>
				<div align="left">
					<%-- <%=value%> --%>
				</div>
			</TD>
		</TR>
	</TBODY>
	<%-- <%
		} while (rs.next());
			out.println("</TABLE>");
			out
					.println("<div class=\"yahoo2\">"
							+ function.page(maxPage, nowpage, pagesize,
									"show_ajax.jsp?id=" + id + "")
							+ "</div><br />");
		} else {
	%> --%>
	<TBODY>
		<TR class=odd>
			<TD>
				<div align="left">
					对不起，暂无任何评论！
				</div>
			</TD>
		</TR>
	</TBODY>
</TABLE>
<%-- <%
	}
%> --%>

	
  <head>
    <%-- <base href="<%=basePath%>"> --%>
    
    <title>My JSP 'show_ajax.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    This is my JSP page. <br>
  </body>
</html>
