<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1,s2,s3,s4;
s1=request.getParameter("si");
s2=request.getParameter("sn");
s3=request.getParameter("sp");
s4=request.getParameter("se");
int k=s.stmt.executeUpdate("insert into sup_form values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
out.println("inserted");
%>