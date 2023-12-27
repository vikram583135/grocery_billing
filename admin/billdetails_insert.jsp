<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String bmid,dat,c_id,p_id,rate,qnt,dic;
bmid=request.getParameter("bmid");
dat=request.getParameter("date");
c_id=request.getParameter("c_id");
p_id=request.getParameter("prodcut_id");
qnt=request.getParameter("qnt");
rate=request.getParameter("rate");
dic=request.getParameter("dic");

int quant=Integer.parseInt(qnt);

ResultSet rs=s.stmt.executeQuery("select max(bill_id) from billdetails");
rs.next();

int bi=rs.getInt(1);
bi=bi+1;
  
  
  ResultSet rs_pro=s.stmt.executeQuery("select * from products where pro_id="+p_id+"");
rs_pro.next();
int c_stock=rs_pro.getInt("current_stock");
int cs_id=(c_stock-quant);


  ResultSet rs_sp=s.stmt.executeQuery("select * from billmaster where bill_master_id="+bmid+"");
		if(rs_sp.next())
		{
		int k=s.stmt.executeUpdate("insert into billdetails values("+bi+","+bmid+","+p_id+","+qnt+","+rate+","+dic+")");
		int k2=s.stmt.executeUpdate("update products set current_stock="+cs_id+" where pro_id="+p_id+" ");
		}
		else
		{
		int k=s.stmt.executeUpdate("insert into billdetails values("+bi+","+bmid+","+p_id+","+qnt+","+rate+","+dic+")");
		int k1=s.stmt.executeUpdate("insert into billmaster values("+bmid+",'"+dat+"',"+c_id+")");
		int k2=s.stmt.executeUpdate("update products set current_stock="+cs_id+" where pro_id="+p_id+" ");
		}
%>
<script>
alert("Product Added Ur Bill");
document.location="billdetails_form.jsp?bmid="+<%=bmid%>+"&c_id="+<%=c_id%>;
</script>