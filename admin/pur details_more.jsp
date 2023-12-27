<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>Purchase Details  </span></h2>
                     <div class="module-body">
<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%

String pmid=request.getParameter("pmid");
String dat=request.getParameter("dat");
String sup_id=request.getParameter("sup_id");




%>

<form name="formID" ID="formID" method="post" action="billdetails_insert.jsp">
  <table width="256" border="1" align="center">
    <tr>
      <th width="47">Purchase No 
			
        <input name="bmid" type="text" id="bmid" value="<%=pmid%>" size="5" readonly=""></th>
      <th width="53"><div align="right">Purchase Date 
            <input name="date" type="text" value="<%=dat%>">
      </div></th>
    </tr>
    <tr>
      <td><b>Supplier Details</b>
        
        
		  <%
		  ResultSet rs_sp=s.stmt.executeQuery("select * from suppliers where sup_id="+sup_id+"");
		rs_sp.next();
		%>
		
		<p>Supplier Name : <b><%=rs_sp.getString("sup_name")%></b></p>
		Supplier Phone : <b><%=rs_sp.getString("sup_phone")%></b>
		</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
  <p>&nbsp;  </p>
  <table width="200" border="1">
    <tr>
      <th>Sl NO</th>
      <th>Product Name </th>
      <th>Rate</th>
      <th>Qnt</th>
      <th>Total</th>
    </tr>
	<%
	int slno=0;
	int tot=0;
	int vat=0;
	int discount=0;
	int total=0;
	int gtotal=0;
	
		ResultSet rs_od=s.stmt.executeQuery("select * from purchasedetails pd,products p where pd.pro_id=p.pro_id and pd.pur_master_id="+pmid+" ");
		while(rs_od.next())
		{
		slno=slno+1;
		int pur_id=rs_od.getInt("pur_id");
		int pid=rs_od.getInt("pur_master_id");
		String pname=rs_od.getString("pro_name");
		 int qnt=rs_od.getInt("quantity");
		 int rate=rs_od.getInt("rate");
		 int dic=rs_od.getInt("discount");
		 
		 
		 tot=(rate*qnt);
		 discount=discount+dic;
		 total=total+tot;
		 vat=(total*5)/105;
		 gtotal=(total+vat)-discount;		
		%>
    <tr>
      <td>&nbsp;<%=slno%></td>
      <td>&nbsp;<%=pname%></td>
      <td>&nbsp;<%=rate%></td>
      <td>&nbsp;<%=qnt%></td>
      <td>&nbsp;<%=tot%></td>
     
    </tr>
    
	<%
	}
	%>
	<tr>
	  <th colspan="4"><div align="right"><b>Total</b></div></th>
	  <th>&nbsp;<b><%=total%><b></th>
	  <td>&nbsp;</td>
	  </tr>
	<tr>
	  <td colspan="4"><div align="right"><b>Discount</b></div></td>
	  <td>&nbsp;<b><%=discount%></b></td>
	  <td>&nbsp;</td>
	  </tr>
	<tr>
      <td colspan="4"><div align="right"><b>Vat</b></div></td>
      <td>&nbsp;<b><%=vat%></b></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <th colspan="4"><div align="right"><b>Grand Total </b></div></th>
      <th>&nbsp;<b><%=gtotal%><b></th>
      <td>&nbsp;</td>
    </tr>
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
