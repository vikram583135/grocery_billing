<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
<style type="text/css">
<!--
.style3 {font-size: 12px}
-->
</style>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>DELIVERIES </span></h2>
                     <div class="module-body">
<a href="del_form.jsp">Add Deliveries</a>
<table width="200" border="1" align="center">
 <thead>
  <tr>
    <th colspan="6"><div align="center" class="style3">DELIVERY DETAILS </div></th>
  </tr>
  <tr>
    <th>Deliveries Id</th>
    <th>Deliver By Employee Id</th>
    <th>Deliveries Date</th>
    <th>Deliveries To</th>
    <th>Delete</th>
    <th>Edit</th>
  </tr>
  </thead>
  <%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
ResultSet rs=s.stmt.executeQuery("select * from deliveries");
  while(rs.next())
  {
  String d_id=rs.getString(1);
  %>
  <tr>
    
    <td width="43"><div align="center"><%=d_id%></div> </td>
	<td width="43"><%=rs.getString(2)%></td>
    <td width="40"><div align="center"><%=rs.getString(3)%></div> </td>
    <td width="47"><div align="center"><%=rs.getString(4)%></div> </td>
    <td width="44"><div align="center"><a href="del_delete.jsp?d_id=<%=d_id%>"><img src="images/bin.gif"></a></div>
     </td>
    <td width="77"><div align="center"><a href="del_update1.jsp?o_id=<%=d_id%>"><img src="images/notification-tick.gif"></a></div>
     </td>
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

</body>
</html>
