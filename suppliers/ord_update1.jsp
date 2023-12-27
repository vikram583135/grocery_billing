 <%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String o_id=request.getParameter("o_id");
ResultSet rs=s.stmt.executeQuery("select * from orders where ord_id='"+o_id+"' ");
rs.next();
%>
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
                     <h2><span>ORDERS UPDATE</span></h2>
                     <div class="module-body">

<form name="formID" ID="formD" method="post" action="ord_update2.jsp">
  <table width="200" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center" class="style3">ORDERS</div></td>
    </tr>
    <tr>
      <td>order_id</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="oi" type="text" id="oi" value="<%=rs.getString(1)%>"></td>
    </tr>
    <tr>
      <td>cust_id</td>
      <td><input class="validate[required,custom[onlyNumber]]"name="ci" type="text" id="ci" value="<%=rs.getString(2)%>"></td>
    </tr>
    <tr>
      <td>pro_id</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="pi" type="text" id="pi" value="<%=rs.getString(3)%>"></td>
    </tr>
    <tr>
      <td>quantity</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="q" type="text" id="q" value="<%=rs.getString(4)%>"></td>
    </tr>
    <tr>
      <td>ord_date</td>
      <td><input class="validate[required,custom[date]]"name="od" type="text" id="od" value="<%=rs.getString(5)%>"></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" value="Submit">
        <input type="reset" name="Reset" value="Reset">
      </div></td>
    </tr>
  </table>
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
