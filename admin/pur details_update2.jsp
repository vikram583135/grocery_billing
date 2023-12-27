<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1,s2,s3,s4;
s1=request.getParameter("pi");
s2=request.getParameter("pi");
s3=request.getParameter("q");
s4=request.getParameter("r");
int k=s.stmt.executeUpdate("update purchasedetails set pro_id='"+s2+"',quantity='"+s3+"',rate='"+s4+"' where pur_id="+s1+" ");
%>
<script>
alert("purchasedetails Updated");
document.location="pur details_view.jsp";
</script>