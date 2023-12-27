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
int k=s.stmt.executeUpdate("update customer set cust_name='"+s2+"',cust_phone='"+s3+"',cust_email='"+s4+"',date_become_cust='"+s5+"',cust_city='"+s6+"',pincode='"+s7+"' where cust_id='"+s1+"'");
%>
<script>
alert("customer details Updated");
document.location="cust_view.jsp";
</script>