<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
<style type="text/css">
<!--
.style3 {font-size: 12px}
-->
</style>
</head>
</head>


<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>ORDERS</span></h2>
                     <div class="module-body">

<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
ResultSet rs=s.stmt.executeQuery("select max(ord_id) from orders");
rs.next();
String id=rs.getString(1);
int oid=Integer.parseInt(id);
oid=oid+1;
%>
<form name="formID" ID="formID" method="post" action="ord_insert.jsp">
  <table width="200" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center" class="style3">ORDERS</div></td>
    </tr>
    <tr>
      <td>Order Id</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="oi" type="text" id="oi" value="<%=oid%>"></td>
    </tr>
    <tr>
      <td>Cust Id</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="ci" type="text" id="ci"></td>
    </tr>
    <tr>
      <td>Pro Id</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="pi" type="text" id="pi"></td>
    </tr>
    <tr>
      <td>Quantity</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="q" type="text" id="q"></td>
    </tr>
    <tr>
      <td>Order Date</td>
      <td><input class="validate[required,custom[date]]" name="od" type="text" id="od"></td>
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
</form>
</div> <!-- End .module-body -->
 </div>  <!-- End .module -->
  <div style="clear:both;"></div>
  </div> <!-- End .grid_12 -->
</div> <!-- End .container_12 -->
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
