<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1,s2,s3,s4,s5;
s1=request.getParameter("oi");
s2=request.getParameter("ci");
s3=request.getParameter("pi");
s4=request.getParameter("q");
s5=request.getParameter("od");
int k=s.stmt.executeUpdate("update orders set cust_id='"+s2+"',pro_id='"+s3+"',quantity='"+s4+"',ord_date='"+s5+"'  where ord_id='"+s1+"'");
%>
<script>
alert("orders details updated");
document.location="ord_view.jsp";
</script>