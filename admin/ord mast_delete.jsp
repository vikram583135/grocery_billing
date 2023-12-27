<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1=request.getParameter("omi");
int k=s.stmt.executeUpdate("delete  from ordermaster where ord_mast_id="+s1+" ");
%>
<script>
alert("ordermaster details Deleted");
document.location="ord mast_view.jsp";
</script>