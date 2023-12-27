<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1,s2,s3,s4;
s1=request.getParameter("oi");
s2=request.getParameter("omi");
s3=request.getParameter("pi");
s4=request.getParameter("q");
int k=s.stmt.executeUpdate("update orderdetails set ord_mast_id="+s2+",pro_id="+s3+",quantity="+s4+" where ord_id="+s1+" ");
%>
<script>
alert("orderdetails Updated");
document.location="ord details_view.jsp";
</script>