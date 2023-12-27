<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1,s2,s3,s4,s5;
s1=request.getParameter("ei");
s2=request.getParameter("en");
s3=request.getParameter("a");
s4=request.getParameter("ep");
s5=request.getParameter("g");
int k=s.stmt.executeUpdate("insert into employees values("+s1+",'"+s2+"','"+s3+"','"+s4+"','"+s5+"')");

%>
<script>
alert("employees details inserted");
document.location="emp_form.jsp";
</script>