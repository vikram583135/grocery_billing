<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s1,s2,s3,s4,s5;
s1=request.getParameter("pi");
s2=request.getParameter("pn");
s3=request.getParameter("pp");
s4=request.getParameter("pps");
s5=request.getParameter("cs");
int k=s.stmt.executeUpdate("update products set pro_name='"+s2+"',pro_price_purchase="+s3+",pro_price_sales="+s4+",current_stock="+s5+" where pro_id="+s1+" ");

%>
<script>
alert("products details updated");
document.location="pro_view.jsp";
</script>