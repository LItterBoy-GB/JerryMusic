<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%-- <jsp:useBean id="conn" class="Pluto.DBConnection" scope="session" /> --%>
		
<%-- <%
	if (session.getAttribute("PlutoUser") != null) {
%> --%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showmessage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/audioplayer.js"></script>
	<link href="css/table.css" rel="stylesheet" type="text/css" />
	<link href="css/default.css" rel="stylesheet" type="text/css" />

  </head>
  
 <body>

		<%-- <%
			String message_id = request.getParameter("id");
				ResultSet rs = conn
						.executeQuery("select title,value from message where id="
								+ message_id + "");

				rs.next();
				String title = rs.getString("title");
				String value = rs.getString("value");
				conn.execute("update message set new=0 where id=" + message_id + "");
		%> --%>
		<TABLE width="80%" align="center" class="mytable">
			<THEAD>
				<TR class=odd>
					<TH scope=col>
						<%-- <%=title%> --%>
					</TH>
				</TR>
			</THEAD>
			<TFOOT></TFOOT>
			<TBODY>
				<TR>
					<td>
						<%-- <%=value%> --%>
					</td>
				</TR>
			</tbody>
	</body>
</html>
<%-- <%
	} else {
		out.println(function.PlutoJump("请登陆后再访问!", "index.jsp"));
	}
%> --%>
