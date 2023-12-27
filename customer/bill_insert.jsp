<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1,s2,s3,s4,s5,s6,s7;
s1=request.getParameter("bi");
s2=request.getParameter("c_id");
s3=request.getParameter("p_id");
s4=request.getParameter("q");
s5=request.getParameter("a");
s6=request.getParameter("ta");
s7=request.getParameter("d");

int k=s.stmt.executeUpdate("insert into Bill values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')");
%>
<script>
alert("bill details inserted");
document.location="bill_form.jsp";
</script>