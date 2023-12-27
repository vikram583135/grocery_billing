<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1,s2,s3,s4,s5;
s1=request.getParameter("bi");
s2=request.getParameter("bd");
s3=request.getParameter("ci");
s4=request.getParameter("v");
s5=request.getParameter("d");
int k=s.stmt.executeUpdate("insert into billmaster values("+s1+",'"+s2+"',"+s3+",'"+s4+"','"+s5+"')");

%>
<script>
alert("billmaster details inserted");
document.location="bill mast_form.jsp";
</script>