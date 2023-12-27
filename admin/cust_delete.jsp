<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1=request.getParameter("c_id");
int k=s.stmt.executeUpdate("delete  from customer where cust_id="+s1+" ");
%>
<script>
alert("customer details Deleted");
document.location="cust_view.jsp";
</script>