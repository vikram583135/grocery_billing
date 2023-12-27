<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1,s2,s3,s4,s5,s6;
s1=request.getParameter("si");
s2=request.getParameter("sn");
s3=request.getParameter("q");
s4=request.getParameter("sp");
s5=request.getParameter("sd");
s6=request.getParameter("rb");
int k=s.stmt.executeUpdate("insert into stock values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')");
%>
<script>
alert("stock details inserted");
document.location="stck_form.jsp";
</script>