<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1,s2,s3,s4,s5;
s1=request.getParameter("oi");
s2=request.getParameter("ci");
s3=request.getParameter("pi");
s4=request.getParameter("q");
s5=request.getParameter("od");
int k=s.stmt.executeUpdate("insert into orders values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
%>
<script>
alert("orders details inserted");
document.location="ord_form.jsp";
</script>