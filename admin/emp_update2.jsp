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
int k=s.stmt.executeUpdate("update employees set emp_name='"+s2+"',address='"+s3+"',emp_phone='"+s4+"',gender='"+s5+"' where emp_id="+s1+"");
%>
<script>
alert("employees details updated");
document.location="emp_view.jsp";
</script>