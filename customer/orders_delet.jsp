<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1=request.getParameter("o_id");
int k=s.stmt.executeUpdate("delete * from orders where ord_id='"+s1+"' ");
%>
<script>
alert("orders details Deleted");
document.location="ord_view.jsp";
</script>