<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String bill_id=request.getParameter("bill_id");
String bmid=request.getParameter("bmid");
String c_id=request.getParameter("c_id");

int k=s.stmt.executeUpdate("delete  from billdetails where bill_id="+bill_id+" ");
%>
<script>
alert("Product Bill Details Deleted");
document.location="billdetails_form.jsp?bmid="+<%=bmid%>+"&c_id="+<%=c_id%>;
</script>