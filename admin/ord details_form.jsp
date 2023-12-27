<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>Orderdetails </span></h2>
                     <div class="module-body">


<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%

String omi=request.getParameter("omi");
String sup_id=request.getParameter("sup_id");
int sp_id=0;
if(sup_id!=null)
{
 sp_id=Integer.parseInt(sup_id);
}
int oi=0;
int om_id=0;
if(omi==null)
{
ResultSet rs=s.stmt.executeQuery("select max(ord_mast_id) from ordermaster");
rs.next();
 oi=rs.getInt(1);
oi=oi+1;
}
else
{
 om_id=Integer.parseInt(omi);

  oi=om_id+0;
}

java.util.Date d1=new java.util.Date();
int d=d1.getDate();
int m=d1.getMonth()+1;
int y=d1.getYear()+1900;

String dat=d+"-"+m+"-"+y;
%>

<form name="formID" ID="formID" method="post" action="ord details_insert.jsp">
  <table width="256" border="1" align="center">
    <tr>
      <td width="47%" colspan="2">ord id 
			
        <input readony name="omi" type="text" id="omi" value="<%=oi%>"></td>
      <td width="53%" colspan="2"><div align="right">Date 
            <input name="date" type="text" value="<%=dat%>">
      </div></td>
    </tr>
    <tr>
      <td colspan="2">Select Supplier
        <select name="sup_id">
          <option>Select Supplier</option>
		  <%
		  ResultSet rs_sp=s.stmt.executeQuery("select * from suppliers");
		while(rs_sp.next())
		{
		int sid=rs_sp.getInt("sup_id");
		%>
		<option value="<%=sid%>" <% if(sid==sp_id) { %> selected <% } %>><%=rs_sp.getString("sup_name")%></option>
		<%
		}
		  %>
        </select> </td>
      <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="2">&nbsp;</td>
      <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
      <th>Select Product </th>
      <th>Quantity</th>
      <th>&nbsp;</th>
      <th>&nbsp;</th>
    </tr>
    <tr>
      <td><select name="prodcut_id">
        <option>Select Procuct</option>
		<%
		  ResultSet rs_p=s.stmt.executeQuery("select * from products");
		while(rs_p.next())
		{
		%>
		<option value="<%=rs_p.getInt("pro_id")%>"><%=rs_p.getString("pro_name")%></option>
		<%
		}
		  %>
      </select></td>
      <td colspan="3"><input name="qnt" type="text" id="qnt" size="10" >
        <input type="submit" name="Submit" value=" Add Product ">        </td>
      </tr>
  </table>
  <p>&nbsp;  </p>
  <table width="200" border="1">
    <tr>
      <th>Sl NO</th>
      <th>Product Name </th>
      <th>Qnt</th>
      <th>Cancel</th>
    </tr>
	<%
	int slno=0;
	
	
		ResultSet rs_od=s.stmt.executeQuery("select * from orderdetails od,products p where od.ord_mast_id="+omi+" and od.pro_id=p.pro_id");
		while(rs_od.next())
		{
		slno=slno+1;
		int pid=rs_od.getInt("pro_id");
		 int qnt=rs_od.getInt("quantity");
		
		%>
    <tr>
      <td>&nbsp;<%=slno%></td>
      <td>&nbsp;<%=rs_od.getString("pro_name")%></td>
      <td>&nbsp;<%=qnt%></td>
      <td>&nbsp;</td>
    </tr>
    
	<%
	}
	%>
	
  </table>
  
</form>
</div> <!-- End .module-body -->
 </div>  <!-- End .module -->
  <div style="clear:both;"></div>
  </div> <!-- End .grid_12 -->
</div> <!-- End .container_12 -->
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
