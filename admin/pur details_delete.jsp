<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String pur_id=request.getParameter("pur_id");
String pmid=request.getParameter("pmid");
String sup_id=request.getParameter("sup_id");
String p_id=request.getParameter("p_id");
String qunat=request.getParameter("qnt");

int qnt=Integer.parseInt(qunat);



ResultSet rs_pro=s.stmt.executeQuery("select * from products where pro_id="+p_id+"");
rs_pro.next();
int c_stock=rs_pro.getInt("current_stock");

int cs_id=(c_stock-qnt);


int k=s.stmt.executeUpdate("delete  from purchasedetails where pur_id="+pur_id+" ");
int k2=s.stmt.executeUpdate("update products set current_stock="+cs_id+" where pro_id="+p_id+" ");



%>
<script>
alert("Purchase Detail Deleted");
document.location="pur details_form.jsp?pmid="+<%=pmid%>+"&s_id="+<%=sup_id%>;
</script>