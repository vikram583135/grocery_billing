<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1,s2,s3,s4,s5,s6,s7;
s1=request.getParameter("b_id");
s2=request.getParameter("c_id");
s3=request.getParameter("p_id");
s4=request.getParameter("q");
s5=request.getParameter("a");
s6=request.getParameter("ta");
s7=request.getParameter("d");
int k=s.stmt.executeUpdate("update Bill set cust_id='"++s2"',pro_id='"+s3+"',quantity='"+s4+"',Amount='"+s5+"',[total amount]='"+s6+"',[date]='"+s7+"' where bill_id='"+s1+"'");
%>
<script>
alert("bill details updated");
document.location="bill_view.jsp";
</script>