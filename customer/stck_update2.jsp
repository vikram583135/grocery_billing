<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1,s2,s3,s4,s5,s6;
s1=request.getParameter("si");
s2=request.getParameter("sn");
s3=request.getParameter("q");
s4=request.getParameter("sp");
s5=request.getParameter("sd");
s6=request.getParameter("rb");
int k=s.stmt.executeUpdate("update stock set stck_name='"+s2+"',quantity='"+s3+"',stck_price='"+s4+"',stck_date='"+s5+"',recieved_by='"+s6+"' where stck_id='"+s1+"'");
%>
<script>
alert("stock details updated");
document.location="stck_view.jsp";
</script>