<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>Purchasemaster  </span></h2>
                     <div class="module-body">

<form name="form1" method="post" action="">
  <p>&nbsp;</p>
  <table width="300" border="1" align="center">
    <tr>
      <td colspan="8"><div align="center">PURCHASEMASTER</div></td>
    </tr>
    <tr>
      <td>pur id </td>
      <td>pur date </td>
      <td>ord id </td>
      <td>sup id </td>
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
ResultSet rs=s.stmt.executeQuery("select * from purchasemaster");
  while(rs.next())
  {
  int pi=rs.getInt(1);
  %>
    <tr>
      <td><div align="center"><%=pi%></div></td>
      <td><div align="center"><%=rs.getString(2)%></div></td>
      <td><div align="center"><%=rs.getInt(3)%></div></td>
      <td><div align="center"><%=rs.getInt(4)%></div></td>
      <td><div align="center"><%=rs.getString(5)%></div></td>
      <td><%=rs.getString(6)%></td>
	   <td><a href="pur mast_delete.jsp?pi=<%=pi%>"><img src="images/bin.gif"></a></td>
      <td><div align="center"><a href="pur mast_update1.jsp?pi=<%=pi%>"><img src="images/notification-tick.gif"></a><strong></stong></div></td>
	 
    </tr>
	<%
	}
	%>
  </table>
  </div> <!-- End .module-body -->
 </div>  <!-- End .module -->
  <div style="clear:both;"></div>
  </div> <!-- End .grid_12 -->
</div> <!-- End .container_12 -->
<jsp:include page="footer.jsp"></jsp:include>

  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>
</body>
</html>
