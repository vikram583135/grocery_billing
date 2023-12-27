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
int k=s.stmt.executeUpdate("update purchasemaster set pur_date='"+s2+"',ord_id='"+s3+"',sup_id='"+s4+"',vat='"+s5+"',disc='"+s6+"' where pur_id="+s1+" ");
%>
<script>
alert("purchasemaster details Updated");
document.location="pur mast_view.jsp";
</script>