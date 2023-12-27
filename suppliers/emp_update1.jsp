<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String e_id=request.getParameter("e_id");
ResultSet rs=s.stmt.executeQuery("select * from employees where emp_id='"+e_id+"'");
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
</head>


<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>EMPLOYEES UPDATE </span></h2>
                     <div class="module-body">

<form name="formID" ID="formID" method="post" action="emp_update2.jsp">
  <table width="200" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center" class="style3">EMPLOYEES</div></td>
    </tr>
    <tr>
      <td>employees_id</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="ei" type="text" id="ei" value="<%=rs.getString(1)%>"></td>
    </tr>
    <tr>
      <td>employees_name</td>
      <td><input class="validate[required,custom[onlyLetter]]" name="en" type="text" id="en" value="<%=rs.getString(2)%>"></td>
    </tr>
    <tr>
      <td>address</td>
      <td><input class="validate[required,custom[onlyLetter]]" name="a" type="text" id="a" value="<%=rs.getString(3)%>"></td>
    </tr>
    <tr>
      <td>employees_phone</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="ep" type="text" id="ep" value="<%=rs.getString(4)%>"></td>
    </tr>
    <tr>
      <td>gender</td>
      <td><input  class="validate[required,custom[onlyLetter]]" name="g" type="text" id="g" value="<%=rs.getString(5)%>"></td>
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
