<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1,s2,s3,s4,s5,s6;
s1=request.getParameter("pi");
s2=request.getParameter("pd");
s3=request.getParameter("oi");
s4=request.getParameter("si");
s5=request.getParameter("v");
s6=request.getParameter("d");
int k=s.stmt.executeUpdate("insert into purchasemaster values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')");

%>
<script>
alert("purchasemaster details inserted");
document.location="pur mast_form.jsp";
</script>