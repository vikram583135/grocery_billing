<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1=request.getParameter("pi");
int k=s.stmt.executeUpdate("delete  from purchasemaster where pur_id="+s1+" ");
%>
<script>
alert("purchasemaster details Deleted");
document.location="pur mast_view.jsp";
</script>