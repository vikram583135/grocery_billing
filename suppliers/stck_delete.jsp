<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1=request.getParameter("s_id");
int k=s.stmt.executeUpdate("delete * from stock where stck_id='"+s1+"' ");
%>
<script>
alert("stock details Deleted");
document.location="stck_view.jsp";
</script>