<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>
<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String username=request.getParameter("username");

ResultSet rs=s.stmt.executeQuery("select * from login where username='"+username+"' ");
if(rs.next())
{
ResultSet rs1=s.stmt.executeQuery("select * from login where username='"+username+"' ");
rs1.next();
String u_name=rs1.getString(1);
String h_q=rs1.getString(4);
%>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>Forgot Password</span></h2>
                     <div class="module-body">

<form name="form1" method="post" action="forgot_3.jsp">
  <table width="290" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center">Forgot Password </div></td>
    </tr>
    <tr>
      <td width="116">Username</td>
      <td width="200"><input name="username" type="text" id="username" value="<%=u_name%>" size="30" readonly=""></td>
    </tr>
    <tr>
      <td>Hint Question </td>
      <td><input name="h_q" type="text" id="h_q" value="<%=h_q%>" size="30" readonly=""></td>
    </tr>
    <tr>
      <td>Hint Answer</td>
      <td><input name="h_a" type="text" id="h_a" size="30"></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" value="Submit">
      </div></td>
    </tr>
	<%
	}
	else
	{
	%>
	<script>
	alert("Sorry Check User Name");
	document.location="login.jsp";
	</script>
	<%
	
	}
	%>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>
</div>  <!-- End .module-body -->
 </div>  <!-- End .module -->
  <div style="clear:both;"></div>
  </div> <!-- End .grid_12 -->
</div> <!-- End .container_12 -->
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
