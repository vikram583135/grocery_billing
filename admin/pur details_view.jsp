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
                     <h2><span>Purchase Details  </span></h2>
                     <div class="module-body">


<a href="pur details_form.jsp">Add New Bill Here</a>

  <table id="demo-dtable-01">
    <thead>
    <tr>
	  <th>Sl No</th>
      <th>Purchase Bill No</th>
	  <th>Date</th>
	  <th>Supplier Name</th>
      <th>Purchase Details</th>
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
ResultSet rs=s.stmt.executeQuery("select * from purchasemaster pm,suppliers s where pm.sup_id=s.sup_id");
  while(rs.next())
  {
 
  slno=slno+1;
  int pmid=rs.getInt("pur_master_id");
  String dat=rs.getString("pur_date");
  int sup_id=rs.getInt("sup_id");
  String sup_name=rs.getString("sup_name");
 
  %>

    <tr>
	  <td><div align="center"><%=slno%></div></td>
      <td><%=pmid%></td>
	   <td><%=dat%></td>
	  <td><%=sup_name%></td>
      <td><div align="center"><a href="pur details_more.jsp?pmid=<%=pmid%>&dat=<%=dat%>&sup_id=<%=sup_id%>"><img src="images/notification-tick.gif"></a><strong></stong></div></td>
	 
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
