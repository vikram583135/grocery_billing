<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
<style type="text/css">
<!--
.style3 {font-size: 16px}
-->
</style>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>Bill </span></h2>
                     <div class="module-body">
<a href="bill_form.jsp">Add Bill</a>
<table width="478" border="1" align="center">
<thead>
  <tr>
    <th colspan="9"><div align="center" class="style3">BILL DETAILS </div></th>
  </tr>
  <tr>
    <th>Bill Id</th>
    <th><span class="style3">Customer Id</span></th>
    <th><span class="style3">Product Id</span></th>
    <th><span class="style3">Quantity</span></th>
    <th><span class="style3">Amount</span></th>
    <th><span class="style3">Total Amount</span></th>
    <th><span class="style3">Date</span></th>
    <th>Delete</th>
    <th>Edit</th>
  </tr>
  </thead>
   <%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
ResultSet rs=s.stmt.executeQuery("select * from bill");
while(rs.next())
{
String b_id=rs.getString(1);
%>
  <tr>
    
    <td width="43"><div align="center"><%=b_id%></div> </td>
	<td width="43"><%=rs.getString(2)%></td>
    <td width="40"><div align="center"><%=rs.getString(3)%></div> </td>
    <td width="47"><div align="center"><%=rs.getString(4)%></div> </td>
    <td width="44"><div align="center"><%=rs.getString(5)%></div> </td>
    <td width="77"><div align="center"><%=rs.getString(6)%></div> </td>
    <td width="42"><%=rs.getString(7)%></td>
    <td width="42"><div align="center"><strong><a href="bill_delete.jsp?b_id=<%=b_id%>"><img src="images/bin.gif"></a></stong></div></td>
	 <td width="42"><div align="center"><strong><a href="bill_update1.jsp?b_id=<%=b_id%>"><img src="images/notification-tick.gif"></a></stong></div></td>
    
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
