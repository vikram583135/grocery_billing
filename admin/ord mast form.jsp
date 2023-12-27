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
                     <h2><span>Orderdetails  </span></h2>
                     <div class="module-body">

<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>

<%
ResultSet rs=s.stmt.executeQuery("select max(ord_mast_id) from ordermaster");
rs.next();
String id=rs.getString(1);
int omi=Integer.parseInt(id);
omi=omi+1;

%>

<form name="form1" method="post" action="ord mast_insert.jsp">
  <p>&nbsp;</p>
  <table width="252" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center"></div>        
      <div align="center">ORDER MASTER </div></td>
    </tr>
    <tr>
      <td width="98"><div align="left">ord details id </div></td>
      <td width="154"><div align="left">
        <input name="odi" type="text" id="odi" value="<%=omi%>">
      </div></td>
    </tr>
    <tr>
      <td>ord id </td>
      <td><input name="oi" type="text" id="oi"></td>
    </tr>
    <tr>
      <td><div align="left">ord date </div></td>
      <td><div align="left">
        <input name="od" type="text" id="od">
      </div></td>
    </tr>
    <tr>
      <td><div align="left">sup id </div></td>
      <td><div align="left">
        <input name="si" type="text" id="si">
      </div></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center"></div>        <div align="center">
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
