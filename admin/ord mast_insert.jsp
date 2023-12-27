<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1,s2,s3;

s1=request.getParameter("omi");
s2=request.getParameter("od");
s3=request.getParameter("si");
int k=s.stmt.executeUpdate("insert into ordermaster values("+s1+","+s2+","+s3+")");
%>
<script>
alert("ordermaster details inserted");
document.location="ord mast_form.jsp";
</script>
