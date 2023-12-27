<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>

<body>
<table width="366" border="1" align="center">
  <tr>
    <td colspan="7"><div align="center">BILLMASTER</div></td>
  </tr>
  <tr>
    <td>bill id </td>
    <td>bill date </td>
    <td>cust id </td>
    <td>vat</td>
    <td>disc</td>
    <td>DELETE</td>
    <td>EDIT</td>
  </tr>
  <%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
ResultSet rs=s.stmt.executeQuery("select * from billmaster");
  while(rs.next())
  {
  int bi=rs.getInt(1);
  %>

  <tr>
    <td><div align="center"><%=bi%></div></td>
    <td><div align="center"><%=rs.getString(2)%></div></td>
    <td><div align="center"><%=rs.getInt(3)%></div></td>
    <td><div align="center"><%=rs.getString(4)%></div></td>
    <td><%=rs.getString(5)%></td>
  
     <td><div align="center"><a href="bill mast_delete.jsp?bi=<%=bi%>"><img src="images/bin.gif"></a></td>
      <td><div align="center"><a href="bill mast_update1.jsp?bi=<%=bi%>"><img src="images/notification-tick.gif"></a><strong></stong></div></td>
	 
  </tr>
  <%
  }
  %>
</table>
</body>
</html>
