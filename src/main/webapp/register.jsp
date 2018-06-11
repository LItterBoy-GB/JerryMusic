<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%-- <base href="<%=basePath%>"> --%>

<title>My JSP 'register.jsp' starting page</title>

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
	<DIV style="TEXT-ALIGN: center">
		<form action="Controller?op=register" method="post">
			<table style="MARGIN: 0px auto" cellSpacing=3 cellPadding=3 border=0>
				<TBODY>
					<TR>
						<td colspan="2"><div align="center">用户注册</div>
						</td>
					</TR>
					<TR>
						<TD>&nbsp;</TD>
						<TD>&nbsp;</TD>
					</TR>
					<TR>
						<TD><LABEL>用 户 名：</LABEL></TD>
						<TD><INPUT type="text" name="userName" maxlength="16" />
						</TD>
					</TR>
					<TR>
						<TD><LABEL>用户密码：</LABEL></TD>
						<TD><INPUT type="password" name="userPwd" maxlength="16" />
						</TD>
					</TR>
					<TR>
						<TD><LABEL>确认密码：</LABEL></TD>
						<TD><INPUT type="password" name="confirmPwd" maxlength="16" />
						</TD>
					</TR>
					<TR>
						<TD><LABEL>性&nbsp;&nbsp;&nbsp;&nbsp;别：</LABEL></TD>
						<TD><INPUT type="radio" name="sex" maxlength="8"
							checked="checked" value="男" />男<INPUT type="radio" name="sex" maxlength="8" value="女" />女</TD>
					<TR>
						<TD><LABEL>昵&nbsp;&nbsp;&nbsp;&nbsp;称：</LABEL></TD>
						<TD><INPUT type="text" name="nickName" maxlength="16" />
						</TD>
					</TR>
					<TR align=right>
						<TD colSpan=2><div align="center">
								<INPUT id=Login type=submit value="注 册"> &nbsp; <INPUT
									type="reset" onclick=tb_remove() value="取 消" />
						</TD>
					</TR>
				</TBODY>
			</TABLE>
		</form>
</body>
</html>
