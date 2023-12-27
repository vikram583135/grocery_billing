<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1,s2,s3,s4,s5;
s1=request.getParameter("si");
s2=request.getParameter("sn");
s3=request.getParameter("sp");
s4=request.getParameter("se");
s5=request.getParameter("sd");
int k=s.stmt.executeUpdate("insert into suppliers values("+s1+",'"+s2+"','"+s3+"','"+s4+"','"+s5+"')");

%>
<script>
alert("suppliers details inserted");
document.location="sup_form.jsp";
</script>