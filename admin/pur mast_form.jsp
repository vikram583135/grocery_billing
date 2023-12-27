<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>Purchasemaster </span></h2>
                     <div class="module-body">

<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
ResultSet rs=s.stmt.executeQuery("select max(pur_id) from purchasemaster");
rs.next();

int pi=rs.getInt(1);
pi=pi+1;
%>

<form name="formID" ID="formID" method="post" action="pur mast_insert.jsp">
  <table width="232" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center">PURCHASEMASTER</div></td>
    </tr>
    <tr>
      <td>pur id </td>
      <td><input class="validate[required,custom[onlyNumber]]" name="pi" type="text" id="pi" value="<%=pi%>"></td>
    </tr>
    <tr>
      <td>pur date </td>
      <td><input class="validate[required,custom[date]]" name="pd" type="text" id="pd"></td>
    </tr>
    <tr>
      <td>order id </td>
      <td><input class="validate[required,custom[onlyNumber]]" name="oi" type="text" id="oi"></td>
    </tr>
    <tr>
      <td>sup id </td>
      <td><input class="validate[required,custom[onlyNumber]]" name="si" type="text" id="si"></td>
    </tr>
    <tr>
      <td>vat</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="v" type="text" id="v"></td>
    </tr>
    <tr>
      <td>disc</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="d" type="text" id="d"></td>
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
