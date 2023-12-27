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

<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>PRODUCTS</span></h2>
                     <div class="module-body">

<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
ResultSet rs=s.stmt.executeQuery("select max(pro_id) from products");
rs.next();
String id=rs.getString(1);
int pid=Integer.parseInt(id);
pid=pid+1;
%>

<form name="formD" ID="formID" method="post" action="pro_insert.jsp">
  <table width="200" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center" class="style3">PRODUCTS</div></td>
    </tr>
    <tr>
      <td>product_id</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="pi" type="text" id="pi" value="<%=pid%>"></td>
    </tr>
    <tr>
      <td>product_name</td>
      <td><input class="validate[required,custom[onlyLetter]]" name="pn" type="text" id="pn"></td>
    </tr>
    <tr>
      <td>product_price_purchase</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="pp" type="text" id="pp"></td>
    </tr>
    <tr>
      <td>product_price_sales</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="pps" type="text" id="pps"></td>
    </tr>
    <tr>
      <td>current_stock</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="cs" type="text" id="cs"></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" value="Submit">
        <input type="reset" name="Reset" value="Reset">
      </div></td>
    </tr>
  </table>
  <!-- End .module-body -->
  <!-- End .module -->
  <div style="clear:both;"></div>
  <!-- End .grid_12 -->
 <!-- End .container_12 -->
<jsp:include page="footer.jsp"></jsp:include>

  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>


</body>
</html>
