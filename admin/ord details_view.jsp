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
                     <h2><span>Order Details</span></h2>
                     <div class="module-body">
<a href="ord details_form.jsp">Add New Order Here</a>

  <table id="demo-dtable-01">
   
    <thead>
      <th>Sl No </th>
      <th>Order Master No </th>
      <th>Date </th>
      <th>Supplier Name</th>
      <th>More Details</th>
	  <th>Order Delete</th>
	 
    </tr>
	</thead>
	<tbody>
	 <%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int slno=0;
ResultSet rs=s.stmt.executeQuery("select * from ordermaster om,suppliers sid where om.sup_id=sid.sup_id");
  while(rs.next())
  {
  slno=slno+1;
  int omid=rs.getInt("ord_mast_id");
  String dat=rs.getString("ord_date");
  int sup_id=rs.getInt("sup_id");
  %>

    <tr>
      <td><div align="center"><%=slno%></div></td>
      <td><div align="center"><%=omid%></div></td>
      <td><div align="center"><%=dat%></div></td>
      <td><div align="center"><%=rs.getString("sup_name")%></div></td>
      <td><div align="center"><a href="order_details_more.jsp?omid=<%=omid%>&dat=<%=dat%>&sup_id=<%=sup_id%>"><img src="images/notification-tick.gif"></a><strong></stong></div></td>
	  <td><a href="ord details_delete.jsp?oi=<%=omid%>" onClick="return confirm('are u sure want to delete Order')"><img src="images/bin.gif"></a></td> 
    </tr>
	<%
	}
	%>
	</tbody>
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
</form>
</body>
</html>
