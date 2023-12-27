<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1,s2,s3,s4,s5,s6,s7;
s1=request.getParameter("ci");
s2=request.getParameter("cn");
s3=request.getParameter("cp");
s4=request.getParameter("ce");
s5=request.getParameter("dbc");
s6=request.getParameter("cc");
s7=request.getParameter("p");
int k=s.stmt.executeUpdate("insert into customer values("+s1+",'"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')");
%>
<script>
alert("customer details inserted");
document.location="cust_form.jsp";
</script>