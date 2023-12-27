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
                     <h2><span>STOCK</span></h2>
                     <div class="module-body">
<a href="stck_form.jsp">Add Stock</a>
<table width="200" border="1" align="center">
  <thead>
  <tr>
    <th colspan="8"><div align="center" class="style3">STOCK DETAILS </div></th>
  </tr>
  <tr>
    <th>Stock Id</th>
    <th>Stock Name</th>
    <th>Quantity</th>
    <th>Stock Price</th>
    <th>Stock Date</th>
    <th>Recieved By</th>
    <th>Delete</th>
    <th>Edit</th>
  </tr>
  </thead>
  <%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
ResultSet rs=s.stmt.executeQuery("select * from stock");
while(rs.next())
{
String s_id=rs.getString(1);
%>
<tr>
    
    <td width="43"><div align="center"><%=s_id%></div> </td>
	<td width="43"><%=rs.getString(2)%></td>
    <td width="40"><div align="center"><%=rs.getString(3)%></div> </td>
    <td width="47"><div align="center"><%=rs.getString(4)%></div> </td>
    <td width="44"><div align="center"><%=rs.getString(5)%></div> </td>
	    <td width="44"><div align="center"><%=rs.getString(6)%></div> </td>
    <td width="77"><div align="center"><a href="stck_delete.jsp?s_id=<%=s_id%>"><img src="images/bin.gif"></a></div> </td>
    <td width="42"><a href="stck_update1.jsp?s_id=<%=s_id%>"><img src="images/notification-tick.gif"></a></td>
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
