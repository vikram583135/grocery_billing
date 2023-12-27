<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String pi=request.getParameter("pi");
ResultSet rs=s.stmt.executeQuery("select * from purchasemaster where pur_id="+pi+" ");
rs.next();
%>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>Purchasemaster </span></h2>
                     <div class="module-body">

<form name="formID" ID="formID" method="post" action="pur mast_update2.jsp">
  <table width="232" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center">PURCHASEMASTER</div></td>
    </tr>
    <tr>
      <td>pur id </td>
      <td><input class="validate[required,custom[onlyNumber]]" name="pi" type="text" id="pi" value="<%=rs.getInt("pur_id")%>"></td>
    </tr>
    <tr>
      <td>pur date </td>
      <td><input class="validate[required,custom[date]]" name="pd" type="text" id="pd" value="<%=rs.getString("pur_date")%>"></td>
    </tr>
    <tr>
      <td>order id </td>
      <td><input class="validate[required,custom[onlyNumber]]" name="oi" type="text" id="oi" value="<%=rs.getInt("ord_id")%>"></td>
    </tr>
    <tr>
      <td>sup id </td>
      <td><input class="validate[required,custom[onlyNumber]]" name="si" type="text" id="si" value="<%=rs.getInt("sup_id")%>"></td>
    </tr>
    <tr>
      <td>vat</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="v" type="text" id="v" value="<%=rs.getInt("vat")%>"></td>
    </tr>
    <tr>
      <td>disc</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="d" type="text" id="d" value="<%=rs.getInt("disc")%>"></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" value="Submit">
        <input type="reset" name="Reset" value="Reset">
      </div></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
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