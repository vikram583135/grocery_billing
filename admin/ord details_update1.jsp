<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String oi=request.getParameter("oi");
ResultSet rs=s.stmt.executeQuery("select * from orderdetails where ord_id="+oi+" ");
rs.next();
%>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>Orderdetails </span></h2>
                     <div class="module-body">

<form name="formID" ID="formID" method="post" action="ord details_update2.jsp">
  <table width="256" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center">ORDERDETAILS </div></td>
    </tr>
    <tr>
      <td>ord id </td>
      <td><input class="validate[required,custom[onlyNumber]]" name="oi" type="text" id="oi" value="<%=rs.getInt("ord_id")%>"></td>
    </tr>
    <tr>
      <td>ord mast id </td>
      <td><input class="validate[required,custom[onlyNumber]]" name="omi" type="text" id="omi" value="<%=rs.getInt("ord_mast_id")%>"></td>
    </tr>
    <tr>
      <td>pro id </td>
      <td><input class="validate[required,custom[onlyNumber]]" name="pi" type="text" id="pi" value="<%=rs.getInt("pro_id")%>"></td>
    </tr>
    <tr>
      <td>quantity</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="q" type="text" id="q" value="<%=rs.getInt("quantity")%>"></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" value="Submit">
        <input type="submit" name="Submit" value="Submit">
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