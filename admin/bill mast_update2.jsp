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
int k=s.stmt.executeUpdate("update billmaster set bill_date='"+s2+"',cust_id='"+s3+"',rate='"+s4+"',disc='"+s5+"' where bill_id="+s1+" ");
%>
<script>
alert("billmaster details Updated");
document.location="bill mast_view.jsp";
</script>