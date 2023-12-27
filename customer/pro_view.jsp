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
                     <h2><span>PRODUCTS </span></h2>
                     <div class="module-body">
<a href="pro_form.jsp">Add Products</a>
<table width="200" border="1" align="center">
 <thead>
  <tr>
    <th colspan="7"><div align="center" class="style3">PRODUCTS DETAILS </div></th>
  </tr>
  <tr>
    <th>Product Id</th>
    <th>Product Name</th>
    <th>Product Price purchase</th>
    <th>Product Price Sales</th>
    <th>Current Stock</th>
    <th>Delete</th>
    <th>Edit</th>
  </tr>
  </thead>
  <%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
ResultSet rs=s.stmt.executeQuery("select * from products");
while(rs.next())
{
String p_id=rs.getString(1);
%> 
 <tr>
    
    <td width="43"><div align="center"><%=p_id%></div> </td>
	<td width="43"><%=rs.getString(2)%></td>
    <td width="40"><div align="center"><%=rs.getString(3)%></div> </td>
    <td width="47"><div align="center"><%=rs.getString(4)%></div> </td>
    <td width="44"><div align="center"><%=rs.getString(5)%></div> </td>
    <td width="77"><div align="center"><a href="pro_delete.jsp?p_id=<%=p_id%>"><img src="images/bin.gif"></a></div>
     </td>
    <td width="42"><div align="center"><a href="pro_update1.jsp?p_id=<%=p_id%>"><img src="images/notification-tick.gif"></a></td>
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
