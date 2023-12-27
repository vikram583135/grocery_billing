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
                     <h2><span>Ordermaster  </span></h2>
                     <div class="module-body">

<form name="form1" method="post" action="">
  <table width="422" border="1" align="center">
    <tr>
      <td colspan="6"><div align="center">ORDERMASTER</div></td>
    </tr>
    <tr>
      <td>ord mast id</td>
      <td>ord date </td>
      <td>sup id</td>
      <td>DELETE</td>
      <td>EDIT</td>
     
    </tr>
 <%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
ResultSet rs=s.stmt.executeQuery("select * from ordermaster");
  while(rs.next())
  {
  int omi=rs.getInt("ord_mast_id");
  %>
  <tr>
    <td><%=omi%></td>
      <td><div align="center"><%=rs.getString("ord_date")%></div></td>
      <td><%=rs.getInt("sup_id")%></td>
      
      <td><div align="center"><strong><a href="ord mast_delete.jsp?omi=<%=omi%>"><img src="images/bin.gif"></a></stong></div></td>
      <td><div align="center"><strong><a href="ord mast_update1.jsp?omi=<%=omi%>"><img src="images/notification-tick.gif"></a></stong></div></td>
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
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>
</body>
</html>
