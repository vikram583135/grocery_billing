<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String omi,dat,sup_id,p_id,rate,qnt;
omi=request.getParameter("omi");
dat=request.getParameter("date");
sup_id=request.getParameter("sup_id");
p_id=request.getParameter("prodcut_id");
qnt=request.getParameter("qnt");


ResultSet rs=s.stmt.executeQuery("select max(ord_id) from orderdetails");
rs.next();

int oi=rs.getInt(1);
oi=oi+1;
  
  ResultSet rs_sp=s.stmt.executeQuery("select * from ordermaster where ord_mast_id="+omi+"");
		if(rs_sp.next())
		{
		int k=s.stmt.executeUpdate("insert into orderdetails values("+oi+","+omi+","+p_id+","+qnt+")");
		}
		else
		{
		int k=s.stmt.executeUpdate("insert into orderdetails values("+oi+","+omi+","+p_id+","+qnt+")");
		int k1=s.stmt.executeUpdate("insert into ordermaster values("+omi+",'"+dat+"',"+sup_id+")");
		}
%>
<script>
alert("Product Order is Added");
document.location="ord details_form.jsp?omi="+<%=omi%>+"&sup_id="+<%=sup_id%>;
</script>