<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
<style type="text/css">
<!--
.style2 {font-size: 14px}
-->
</style>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>Bill  </span></h2>
                     <div class="module-body">


<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>

<%
ResultSet rs=s.stmt.executeQuery("select max(bill_id) from Bill");
rs.next();
String id=rs.getString(1);
int bid=Integer.parseInt(id);
bid=bid+1;
%>

<form name="formID" id="formID" method="post" action="bill_insert.jsp">
  <table width="270" height="265" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center" class="style2">Bill</div></td>
    </tr>
    <tr>
      <td height="23">Bill Id</td>
      <td><input name="bi" type="text" id="bi" value="<%=bid%>"></td>
    </tr>
    <tr>
      <td width="89">Customer Id</td>
      <td width="165"><input class="validate[required,custom[onlyNumber]]" name="c_id" type="text" id="c_id"></td>
    </tr>
    <tr>
      <td>Product Id</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="p_id" type="text" id="p_id"></td>
    </tr>
    <tr>
      <td>Quantity</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="q" type="text" id="q"></td>
    </tr>
    <tr>
      <td>Amount</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="a" type="text" id="a"></td>
    </tr>
    <tr>
      <td>Total Amount </td>
      <td><input class="validate[required,custom[onlyNumber]]" name="ta" type="text" id="ta"></td>
    </tr>
    <tr>
      <td>Date</td>
      <td><input class="validate[required,custom[date]]" name="d" type="text" id="d"></td>
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

 </div> 
                     <!-- End .module-body -->
 </div>  <!-- End .module -->
  <div style="clear:both;"></div>
  </div> <!-- End .grid_12 -->
</div> <!-- End .container_12 -->
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
