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
                     <h2><span>STOCK </span></h2>
                     <div class="module-body">

<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>

<%
ResultSet rs=s.stmt.executeQuery("select max(stck_id) from stock");
rs.next();
String id=rs.getString(1);
int sid=Integer.parseInt(id);
sid=sid+1;
%>
<form name="formID" ID="formID" method="post" action="stck_insert.jsp">
  <table width="200" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center" class="style3">STOCK</div></td>
    </tr>
    <tr>
      <td>Stock Id</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="si" type="text" id="si" value="<%=sid%>"></td>
    </tr>
    <tr>
      <td>Stock Name</td>
      <td><input class="validate[required,custom[onlyLetter]]" name="sn" type="text" id="sn"></td>
    </tr>
    <tr>
      <td>Quantity</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="q" type="text" id="q"></td>
    </tr>
    <tr>
      <td>Stock Price</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="sp" type="text" id="sp"></td>
    </tr>
    <tr>
      <td>Stock Date</td>
      <td><input class="validate[required,custom[date]]" name="sd" type="text" id="sd"></td>
    </tr>
    <tr>
      <td>Received By</td>
      <td><input class="validate[required,custom[onlyLeter]]" name="rb" type="text" id="rb"></td>
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
