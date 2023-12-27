<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
<style type="text/css">
<!--
.style2 {font-size: 14px}
-->
</style>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>ORDERS</span></h2>
                     <div class="module-body">
<a href="ord_form.jsp">Add orders</a>
<table width="502" border="1" align="center">
 <thead>
  <tr>
    <th colspan="7"><div align="center"><span class="style2">ORDER DETAILS </span></div></th>
  </tr>
  <tr>
    <th width="56">Order Id</th>
    <th width="71">Cust Id</th>
    <th width="71">Pro Id</th>
    <th width="51">Quantity</th>
    <th width="51">Ord Date</th>
    <th width="45">Delete</th>
    <th width="40">Edit</th>
  </tr>
  </thead>
  <%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
ResultSet rs=s.stmt.executeQuery("select * from orders ");
while(rs.next())
{
String o_id=rs.getString(1);
%>
<tr>
    
    <td width="43"><div align="center"><%=o_id%></div> </td>
	<td width="43"><%=rs.getString(2)%></td>
    <td width="40"><div align="center"><%=rs.getString(3)%></div> </td>
    <td width="47"><div align="center"><%=rs.getString(4)%></div> </td>
    <td width="44"><div align="center"><%=rs.getString(5)%></div> </td>
    <td width="77"><div align="center"><a href="ord_delete.jsp?o_id=<%=o_id%>"><img src="images/bin.gif"></a></div>
     </td>
    <td width="42"><a href="ord_update1.jsp?o_id=<%=o_id%>"><img src="images/notification-tick.gif"></a></td>
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
