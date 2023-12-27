<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1=request.getParameter("d_id");
int k=s.stmt.executeUpdate("delete * from deliveries where del_id='"+s1+"' ");
%>
<script>
alert("deliveries details Deleted");
document.location="del_view.jsp";
</script>