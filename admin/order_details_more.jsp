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

String omi=request.getParameter("omid");
String sup_id=request.getParameter("sup_id");
String dat=request.getParameter("dat");

%>

<form name="formID" ID="formID" method="post" action="ord details_insert.jsp">
  <table width="256" border="1" align="center">
    <tr>
      <td width="47%" colspan="2">Order No 
			
        <input readony name="omi" type="text" id="omi" value="<%=omi%>" readonly=""></td>
      <td width="53%" colspan="2"><div align="right">Date 
            <input name="date" type="text" value="<%=dat%>" readonly="">
      </div></td>
    </tr>
    <tr>
      <td colspan="2">Supplier Details
        
		  <%
		  ResultSet rs_sp=s.stmt.executeQuery("select * from suppliers where sup_id="+sup_id+"");
		if(rs_sp.next())
		{
		int sid=rs_sp.getInt("sup_id");
		%>
		
		<p>Supplier Name : <b><%=rs_sp.getString("sup_name")%></b></p>
		
		<%
		}
		 %>
         </td>
      <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="2">&nbsp;</td>
      <td colspan="2">&nbsp;</td>
    </tr>
    
  </table>
  <p>&nbsp;  </p>
  <table width="200" border="1">
    <tr>
      <th>Sl NO</th>
      <th>Product Name </th>
      <th>Qnt</th>
     
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
