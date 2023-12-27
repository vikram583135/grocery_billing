<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1=request.getParameter("e_id");
int k=s.stmt.executeUpdate("delete * from employees where emp_id='"+s1+"' ");
%>
<script>
alert("employees details Deleted");
document.location="emp_view.jsp";
</script>