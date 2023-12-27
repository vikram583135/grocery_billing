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
                     <h2><span>Billmaster </span></h2>
                     <div class="module-body">


<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
ResultSet rs=s.stmt.executeQuery("select max(bill_id) from billmaster");
rs.next();

int bi=rs.getInt(1);
bi=bi+1;
%>

<form name="formID"  ID="formID" method="post" action="bill mast_insert.jsp">
  <table width="223" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center">BILLMASTER</div></td>
    </tr>
    <tr>
      <td>bill id </td>
      <td><input class="validate[required,custom[onlyNumber]]" name="bi" type="text" id="bi" value="<%=bi%>"></td>
    </tr>
    <tr>
      <td>bill date </td>
      <td><input class="validate[required,custom[date]]" name="bd" type="text" id="bd"></td>
    </tr>
    <tr>
      <td>cust id </td>
      <td><input class="validate[required,custom[onlyNumber]]" name="ci" type="text" id="ci"></td>
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
</form>
</div> <!-- End .module-body -->
 </div>  <!-- End .module -->
  <div style="clear:both;"></div>
  </div> <!-- End .grid_12 -->
</div> <!-- End .container_12 -->
<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>
