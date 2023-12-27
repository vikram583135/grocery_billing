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
int k=s.stmt.executeUpdate(" update deliveries set del_by_emp_id='"+s2+"',del_date='"+s3+"',del_to='"+s4+"'  where del_id='"+s1+"'");

%>
<script>
alert("deliveries details updated");
document.location="del_view.jsp"
</script>