<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1,s2,s3;
s1=request.getParameter("omi");
s2=request.getParameter("od");
s3=request.getParameter("si");

int k=s.stmt.executeUpdate("update ordermaster set ord_date='"+s2+"',sup_id="+s3+" where ord_mast_id="+s1+"  ");
%>
<script>
alert("ordermaster details updated");
document.location="ord mast_view.jsp";
</script>