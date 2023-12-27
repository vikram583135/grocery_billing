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
                     <h2><span>Bill Details  </span></h2>
                     <div class="module-body">


<a href="billdetails_form.jsp">Add New Bill Here</a>

  <table id="demo-dtable-01">
    <thead>
    <tr>
	  <th>Sl No</th>
      <th>Bill No</th>
	  <th>Date</th>
	  <th>Customer Name</th>
      <th>Bill Details</th>
    </tr>
	</thead>
	<tbody>
	  <%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%

int slno=0;
int total=0;
ResultSet rs=s.stmt.executeQuery("select * from billmaster bm,customer c where bm.cust_id=c.cust_id");
  while(rs.next())
  {
 
  slno=slno+1;
  int bmid=rs.getInt("bill_master_id");
  String dat=rs.getString("bill_date");
  int cust_id=rs.getInt("cust_id");
  String cust_name=rs.getString("cust_name");
 
  %>

    <tr>
	  <td><div align="center"><%=slno%></div></td>
      <td><%=bmid%></td>
	   <td><%=dat%></td>
	  <td><%=cust_name%></td>
      <td><div align="center"><a href="bill details_more.jsp?bmid=<%=bmid%>&dat=<%=dat%>&cust_id=<%=cust_id%>"><img src="images/notification-tick.gif"></a><strong></stong></div></td>
	 
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

 
</body>
</html>
