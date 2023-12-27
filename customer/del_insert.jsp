<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1,s2,s3,s4;
s1=request.getParameter("di");
s2=request.getParameter("dbei");
s3=request.getParameter("dd");
s4=request.getParameter("dt");
int k=s.stmt.executeUpdate("insert into deliveries values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')");

%>
<script>
alert("deliveries details inserted");
document.location="del_form.jsp"
</script>