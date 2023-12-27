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
                     <h2><span>DELIVERIES </span></h2>
                     <div class="module-body">

<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
ResultSet rs=s.stmt.executeQuery("select max(del_id) from deliveries");
rs.next();
String id=rs.getString(1);
int did=Integer.parseInt(id);
did=did+1;
%>
<form name="formID" ID="formID" method="post" action="del_insert.jsp">
  <table width="200" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center" class="style3">DELIVERIES</div></td>
    </tr>
    <tr>
      <td>Deliveries Id</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="di" type="text" id="di" value="<%=did%>"></td>
    </tr>
    <tr>
      <td>Deliveries By Emp Id</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="dbei" type="text" id="dbei"></td>
    </tr>
    <tr>
      <td>Deliveries Date</td>
      <td><input class="validate[required,custom[date]]"name="dd" type="text" id="dd"></td>
    </tr>
    <tr>
      <td>Deliveries To</td>
      <td><input class="validate[required,custom[onlyLetter]]"name="dt" type="text" id="dt"></td>
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
