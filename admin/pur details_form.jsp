<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>Purchase Details </span></h2>
                     <div class="module-body">


<script type="text/javascript">
<!-- Begin
function startCalc(){
  interval = setInterval("calc()",1);
}
function calc(){
tot=(parseInt(document.formID.rate.value) * parseInt(document.formID.qnt.value));
dic=(parseInt(document.formID.dic.value));
total=(tot-dic);
document.formID.total.value=total;
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

String pmid=request.getParameter("pmid");
String sup_id=request.getParameter("s_id");
int su_id=0;
if(sup_id!=null)
{
 su_id=Integer.parseInt(sup_id);
}
int pmi=0;
int pm_id=0;
if(pmid==null)
{
ResultSet rs=s.stmt.executeQuery("select max(pur_master_id) from purchasemaster");
rs.next();
 pmi=rs.getInt(1);
pmi=pmi+1;
}
else
{
 pm_id=Integer.parseInt(pmid);

  pmi=pm_id+0;
}

java.util.Date d1=new java.util.Date();
int d=d1.getDate();
int m=d1.getMonth()+1;
int y=d1.getYear()+1900;

String dat=d+"-"+m+"-"+y;
%>

<form name="formID" ID="formID" method="post" action="pur details_insert.jsp">
  <table width="256" border="1" align="center">
    <tr>
      <th width="47%" colspan="2">Bill No 
			
        <input name="pmid" type="text" id="pmid" value="<%=pmi%>" size="5" readonly=""></th>
      <th width="53%" colspan="3"><div align="right">Date 
            <input name="date" type="text" value="<%=dat%>">
      </div></th>
    </tr>
    <tr>
      <td colspan="2">Select Supplier
        <select name="sup_id" id="sup_id"  class="validate[required]" >
          <option value="">Select Supplier</option>
		  <%
		  ResultSet rs_sp=s.stmt.executeQuery("select * from suppliers");
		while(rs_sp.next())
		{
		int sid=rs_sp.getInt("sup_id");
		%>
		<option value="<%=sid%>" <% if(sid==su_id) { %> selected <% } %>><%=rs_sp.getString("sup_name")%></option>
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
      <th>Purchase Rate</th>
      <th>Quantity</th>
      <th>Discount</th>
      <th>Total</th>
    </tr>
    <tr>
      <td><select name="prodcut_id" id="product_id" class="validate[required]">
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
      <td><input name="rate" type="text" id="rate" size="15" class="validate[required,custom[onlyNumber]]" onFocus="startCalc();" onBlur="stopCalc();"></td>
      <td><input name="qnt" type="text" id="qnt" size="10" onFocus="startCalc();" onBlur="stopCalc();" class="validate[required,custom[onlyNumber]]"></td>
      <td><input name="dic" type="text" id="dic" value="0" size="10" class="validate[custom[onlyNumber]]" onFocus="startCalc();" onBlur="stopCalc();"></td>
      <td><input name="total" type="text" id="total" size="15" readonly="">
        <input type="submit" name="Submit" value=" Add Product "></td>
    </tr>
  </table>
  <p>&nbsp;  </p>
  <table width="200" border="1">
    <tr>
      <th>Sl NO</th>
      <th>Product Purchase Name </th>
      <th>Purchase Rate</th>
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
	
		ResultSet rs_od=s.stmt.executeQuery("select * from purchasedetails pd,products p where pd.pro_id=p.pro_id and pd.pur_master_id="+pmid+" ");
		while(rs_od.next())
		{
		slno=slno+1;
		int pur_id=rs_od.getInt("pur_id");
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
      <td>&nbsp;<a href="pur details_delete.jsp?pur_id=<%=pur_id%>&pmid=<%=pmid%>&sup_id=<%=sup_id%>&p_id=<%=pid%>&qnt=<%=qnt%>"><img src="images/bin.gif" title="Sl no <%=slno%>"></a></td>
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
      <th colspan="4"><div align="right"><b>Total Purchase Amount </b></div></th>
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
