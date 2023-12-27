<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1=request.getParameter("b_id");
int k=s.stmt.executeUpdate("delete * from bill where bill_id='"+s1+"' ");
%>
<script>
alert("bill details Deleted");
document.location="bill_view.jsp";
</script>