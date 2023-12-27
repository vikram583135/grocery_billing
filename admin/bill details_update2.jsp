<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1,s2,s3,s4;
s1=request.getParameter("bi");
s2=request.getParameter("pi");
s3=request.getParameter("q");
s4=request.getParameter("r");
int k=s.stmt.executeUpdate("update billdetails set pro_id='"+s2+"',quantity='"+s3+"',rate='"+s4+"' where bill_id="+s1+" ");
%>
<script>
alert("billdetails Updated");
document.location="bill details_view.jsp";
</script>