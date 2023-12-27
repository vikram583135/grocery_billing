<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String d_id=request.getParameter("d_id");
ResultSet rs=s.stmt.executeQuery("select * from deliveries where del_id='"+d_id+"'");
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
.style2 {font-size: 16px; }
.style4 {font-size: 12px}
-->
</style>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>DELIVERIES UPDATE </span></h2>
                     <div class="module-body">

<form name="formID" ID="formID"method="post" action="del_update2.jsp">
  <table width="200" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center" class="style4">DELIVERIES</div></td>
    </tr>
    <tr>
      <td><div align="center" class="style2">
        <div align="left">deliveries_id</div>
      </div></td>
      <td><input class="validate[required,custom[onlyNumber]]" name="di" type="text" id="di" value="<%=rs.getString(1)%>"></td>
    </tr>
    <tr>
      <td class="style2">deliver_by_employees_id</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="dbei" type="text" id="dbei" value="<%=rs.getString(2)%>"></td>
    </tr>
    <tr>
      <td class="style2">deliveries_date</td>
      <td><input class="validate[required,custom[date]]" name="dd" type="text" id="dd" value="<%=rs.getString(3)%>"></td>
    </tr>
    <tr>
      <td class="style2">deliveries_to</td>
      <td><input class="validate[required,custom[onlyLeter]]" name="dt" type="text" id="dt" value="<%=rs.getString(4)%>"></td>
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
