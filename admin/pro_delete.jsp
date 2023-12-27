<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1=request.getParameter("p_id");
int k=s.stmt.executeUpdate("delete * from products where pro_id="+s1+" ");
%>
<script>
alert("product details Deleted");
document.location="pro_view.jsp";
</script>