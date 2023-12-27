<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String bi=request.getParameter("bi");
ResultSet rs=s.stmt.executeQuery("select * from billmaster where bill_id="+bi+" ");
rs.next();
%>

<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>Billmaster </span></h2>
                     <div class="module-body">

<form name="formID"  ID="formID" method="post" action="bill mast_update2.jsp">
  <table width="223" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center">BILLMASTER</div></td>
    </tr>
    <tr>
      <td>bill id </td>
      <td><input class="validate[required,custom[onlyNumber]]" name="bi" type="text" id="bi" value="<%=rs.getInt("bill_id")%>"></td>
    </tr>
    <tr>
      <td>bill date </td>
      <td><input name="bd" type="text" class="validate[required,custom[date]]" id="bd" value="<%=rs.getString("bill_date")%>"></td>
    </tr>
    <tr>
      <td>cust id </td>
      <td><input name="ci" type="text" class="validate[required,custom[onlyNumber]]" id="ci" value="<%=rs.getInt("cust_id")%>"></td>
    </tr>
    <tr>
      <td>vat</td>
      <td><input name="v" type="text" class="validate[required,custom[onlyNumber]]" id="v" value="<%=rs.getInt("rate")%>"></td>
    </tr>
    <tr>
      <td>disc</td>
      <td><input name="d" type="text" class="validate[required,custom[onlyNumber]]" id="d" value="<%=rs.getString("disc")%>"></td>
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
</form>
</div> <!-- End .module-body -->
 </div>  <!-- End .module -->
  <div style="clear:both;"></div>
  </div> <!-- End .grid_12 -->
</div> <!-- End .container_12 -->
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>

