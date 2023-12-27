<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String pmid,dat,s_id,p_id,rate,qnt,dic;
pmid=request.getParameter("pmid");
dat=request.getParameter("date");
s_id=request.getParameter("sup_id");
p_id=request.getParameter("prodcut_id");
qnt=request.getParameter("qnt");
rate=request.getParameter("rate");
dic=request.getParameter("dic");

int quant=Integer.parseInt(qnt);

ResultSet rs=s.stmt.executeQuery("select max(pur_id) from purchasedetails");
rs.next();

int pi=rs.getInt(1);
pi=pi+1;


ResultSet rs_pro=s.stmt.executeQuery("select * from products where pro_id="+p_id+"");
rs_pro.next();

int c_stock=rs_pro.getInt("current_stock");

int cs_id=(c_stock+quant);
  
  ResultSet rs_sp=s.stmt.executeQuery("select * from purchasemaster where pur_master_id="+pmid+"");
		if(rs_sp.next())
		{
		int k=s.stmt.executeUpdate("insert into purchasedetails values("+pi+","+pmid+","+p_id+","+qnt+","+rate+","+dic+")");
		int k2=s.stmt.executeUpdate("update products set current_stock="+cs_id+" where pro_id="+p_id+" ");
		}
		else
		{
		
		int k=s.stmt.executeUpdate("insert into purchasedetails values("+pi+","+pmid+","+p_id+","+qnt+","+rate+","+dic+")");
		int k1=s.stmt.executeUpdate("insert into purchasemaster values("+pmid+",'"+dat+"',"+s_id+")");
		int k2=s.stmt.executeUpdate("update products set current_stock="+cs_id+" where pro_id="+p_id+" ");
		}
%>
<script>
alert("Product Added Ur Bill");
document.location="pur details_form.jsp?pmid="+<%=pmid%>+"&s_id="+<%=s_id%>;
</script>