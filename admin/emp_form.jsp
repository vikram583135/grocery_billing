<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
<style type="text/css">
<!--
.style5 {font-size: 12px}
-->
</style>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>EMPLOYEES </span></h2>
                     <div class="module-body">

<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
ResultSet rs=s.stmt.executeQuery("select max(emp_id) from employees");
rs.next();

int eid=rs.getInt(1);
eid=eid+1;
%>
<form name="formID" ID="formID" method="post" action="emp_insert.jsp">
  <table width="200" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center" class="style5">EMPLOYEES</div></td>
    </tr>
    <tr>
      <td>Employees Id</td>
      <td><input class="validate[required,custom[onlyNumber]]"name="ei" type="text" id="ei" value="<%=eid%>"></td>
    </tr>
    <tr>
      <td>Employees Name</td>
      <td><input class="validate[required,custom[onlyLetter]]"name="en" type="text" id="en"></td>
    </tr>
    <tr>
      <td>Address</td>
      <td><input class="validate[required,custom[onlyLetter]]"name="a" type="text" id="a"></td>
    </tr>
    <tr>
      <td>Employees Phone</td>
      <td><input class="validate[required,custom[onlyNumber]]"name="ep" type="text" id="ep"></td>
    </tr>
    <tr>
      <td>Gender</td>
      <td><input class="validate[required,custom[onlyLetter]]"name="g" type="text" id="g"></td>
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
