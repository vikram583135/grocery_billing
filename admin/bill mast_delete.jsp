<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1=request.getParameter("bi");
int k=s.stmt.executeUpdate("delete  from billmaster where bill_id="+s1+" ");
%>
<script>
alert("billmaster details Deleted");
document.location="bill mast_view.jsp";
</script>