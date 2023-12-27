<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
<style type="text/css">
<!--
.style5 {font-size: 12px}
-->
</style>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>CUSTOMER </span></h2>
                     <div class="module-body">
<a href="cust_form.jsp">Add Customer</a>
<table width="515" border="1" align="center">
  <thead>
  <tr>
    <th colspan="9"><div align="center" class="style5">CUSTOMER DETAILS </div></th>
  </tr>
  <tr>
    <th width="69">Customer Id</th>
    <th width="105">Customer Name</th>
    <th width="40">Phone</th>
    <th width="36">Email</th>
    <th width="29">Date</th>
    <th width="24">City</th>
    <th width="20">pin</th>
    <th width="45">Delete</th>
    <th width="27">Edit</th>
  </tr>
  </thead>
  <%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
ResultSet rs=s.stmt.executeQuery("select * from customer");
  while(rs.next())
  {
  String c_id=rs.getString(1);
  %>
  <tr>
    
    <td width="43"><div align="center"><%=c_id%></div> </td>
	<td width="43"><%=rs.getString(2)%></td>
    <td width="40"><div align="center"><%=rs.getString(3)%></div> </td>
    <td width="47"><div align="center"><%=rs.getString(4)%></div> </td>
    <td width="44"><div align="center"><%=rs.getString(5)%></div> </td>
    <td width="77"><div align="center"><%=rs.getString(6)%></div> </td>
    <td width="42"><%=rs.getString(7)%></td>
    <td width="42"><div align="center"><strong><a href="cust_delete.jsp?c_id=<%=c_id%>"><img src="images/bin.gif"></a></stong></div></td>
	<td width="42"><div align="center"><strong><a href="cust_update1.jsp?c_id=<%=c_id%>"><img src="images/notification-tick.gif"></a></stong></div></td>
    
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
