<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1=request.getParameter("oi");
int k=s.stmt.executeUpdate("delete  from orderdetails where ord_mast_id="+s1+" ");
int k1=s.stmt.executeUpdate("delete  from ordermaster where ord_mast_id="+s1+" ");
%>
<script>
alert("orderdetails Deleted");
document.location="ord details_view.jsp";
</script>