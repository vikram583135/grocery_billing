<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>Bill Details </span></h2>
                     <div class="module-body">
<script type="text/javascript">
<!-- Begin
function startCalc(){
  interval = setInterval("calc()",1);
}
function calc(){
tot=(parseInt(document.formID.rate.value) * parseInt(document.formID.qnt.value));
dic=(parseInt(document.formID.dic.value));
t=(tot-dic);
document.formID.total.value=t;

}
function stopCalc(){
  clearInterval(interval);
}
//  End -->
</script>

<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%

String bmid=request.getParameter("bmid");
String c_id=request.getParameter("c_id");
int cu_id=0;
if(c_id!=null)
{
 cu_id=Integer.parseInt(c_id);
}
int bmi=0;
int bm_id=0;
if(bmid==null)
{
ResultSet rs=s.stmt.executeQuery("select max(bill_master_id) from billmaster");
rs.next();
 bmi=rs.getInt(1);
bmi=bmi+1;
}
else
{
 bm_id=Integer.parseInt(bmid);

  bmi=bm_id+0;
}

java.util.Date d1=new java.util.Date();
int d=d1.getDate();
int m=d1.getMonth()+1;
int y=d1.getYear()+1900;

String dat=d+"-"+m+"-"+y;
%>

<form name="formID" ID="formID" method="post" action="billdetails_insert.jsp">
  <table width="256" border="1" align="center">
    <tr>
      <th width="47%" colspan="2">Bill No 
			
        <input name="bmid" type="text" id="bmid" value="<%=bmi%>" size="5" readonly=""></th>
      <th width="53%" colspan="3"><div align="right">Date 
            <input name="date" type="text" value="<%=dat%>">
      </div></th>
    </tr>
    <tr>
      <td colspan="2">Select Customer
        <select name="c_id" id="c_id" class="validate[required]">
          <option value="">Select Customer</option>
		  <%
		  ResultSet rs_sp=s.stmt.executeQuery("select * from customer");
		while(rs_sp.next())
		{
		int cid=rs_sp.getInt("cust_id");
		%>
		<option value="<%=cid%>" <% if(cid==cu_id) { %> selected <% } %>><%=rs_sp.getString("cust_name")%></option>
		<%
		}
		  %>
        </select> </td>
      <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="2">&nbsp;</td>
      <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
      <th>Select Product </th>
      <th>Rate</th>
      <th>Quantity</th>
      <th>Discount</th>
      <th>Total</th>
    </tr>
    <tr>
      <td><select name="prodcut_id" id="product_id"  class="validate[required]">
        <option value="">Select Procuct</option>
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
      <td><input name="rate" type="text" id="rate"  class="validate[required,custom[onlyNumber]]" size="15" onFocus="startCalc();" onBlur="stopCalc();"></td>
      <td><input name="qnt" type="text" id="qnt"  class="validate[required,custom[onlyNumber]]" size="10" onFocus="startCalc();" onBlur="stopCalc();"></td>
      <td><input name="dic" type="text" id="dic"  class="validate[required,custom[onlyNumber]]"  onFocus="startCalc();" onBlur="stopCalc();" value="0" size="10"></td>
      <td><input name="total" type="text" id="total" size="15" readonly="">
        <input type="submit" name="Submit" value=" Add Product "></td>
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
      <th>Cancel</th>
    </tr>
	<%
	int slno=0;
	int tot=0;
	int vat=0;
	int discount=0;
	int total=0;
	int gtotal=0;
	
		ResultSet rs_od=s.stmt.executeQuery("select * from billdetails bd,products p where bd.pro_id=p.pro_id and bd.bill_master_id="+bmid+" ");
		while(rs_od.next())
		{
		slno=slno+1;
		int bill_id=rs_od.getInt("bill_id");
		int pid=rs_od.getInt("pro_id");
		
		 int qnt=rs_od.getInt("quantity");
		 int rate=rs_od.getInt("rate");
		 int dic=rs_od.getInt("discount");
		 String pname=rs_od.getString("pro_name");
		 
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
      <td>&nbsp;<a href="bill details_delete.jsp?bill_id=<%=bill_id%>&bmid=<%=bmid%>&c_id=<%=c_id%>"><img src="images/bin.gif" title="Sl no <%=slno%>"></a></td>
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
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>
</div> <!-- End .module-body -->
 </div>  <!-- End .module -->
  <div style="clear:both;"></div>
  </div> <!-- End .grid_12 -->
</div> <!-- End .container_12 -->
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
