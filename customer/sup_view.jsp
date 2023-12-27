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
                     <h2><span>SUPPLIERS</span></h2>
                     <div class="module-body">
<a href="sup_form.jsp">Add Suppliers</a>
<table width="444" border="1" align="center">
 <thead>
  <tr>
    <th colspan="7"><div align="center" class="style2">SUPPLIERS DETAILS</div></th>
  </tr>
  <tr>
    <th width="43">Suppliers Id</th>
    <th width="43">Suppliers Name</th>
    <th width="40">Suppliers Phone</th>
    <th width="47">Suppliers Email</th>
    <th width="44">Suppliers Address</th>
    <th width="77">Delete</th>
    <th width="42">Edit</th>
  </tr>
  </thead>
  <%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
ResultSet rs=s.stmt.executeQuery("select * from suppliers");
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
    <td width="77"><div align="center"><a href="sup_delete.jsp?s_id=<%=s_id%>"><img src="images/bin.gif"></a></div></td>
    <td width="42"><div align="center"><a href="sup_update1.jsp?s_id=<%=s_id%>"><img src="images/notification-tick.gif"></a></td>
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

