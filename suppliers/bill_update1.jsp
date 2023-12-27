  <%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String c_id=request.getParameter("c_id");
ResultSet rs=s.stmt.executeQuery("select * from bill where cust_id='"+c_id+"'");
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
.style3 {font-size: 16px}
-->
</style>
</head>
<link rel="stylesheet" href="js/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
		<link rel="stylesheet" href="images/Refresh.css" type="text/css" />
		
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.validationEngine-en.js" type="text/javascript"></script>
		<script src="js/jquery.validationEngine.js" type="text/javascript"></script>
		
		<script>	
		$(document).ready(function() {
			$("#formID").validationEngine()
		});
	</script>	

<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>Bill </span></h2>
                     <div class="module-body">

<form name="form1" method="post" action="bill_update2.jsp">
<div style="margin-left:300px ">
  <table width="239" height="266" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center" class="style3">Bill</div></td>
    </tr>
    <tr>
      <td>bill_id</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="textfield" type="text" value="<%=rs.getString(1)%>"></td>
    </tr>
    <tr>
      <td width="59">customer_id</td>
      <td width="144"><input class="validate[required,custom[onlyNumber]]" name="c_id" type="text" id="c_id" value="<%=rs.getString(2)%>"></td>
    </tr>
    <tr>
      <td>product_id</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="p_id" type="text" id="p_id" value="<%=rs.getString(3)%>"></td>
    </tr>
    <tr>
      <td>quantity</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="q" type="text" id="q" value="<%=rs.getString(4)%>"></td>
    </tr>
    <tr>
      <td>amount</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="a" type="text" id="a" value="<%=rs.getString(5)%>"></td>
    </tr>
    <tr>
      <td>total amount </td>
      <td><input class="validate[required,custom[onlyNumber]]" name="ta" type="text" id="ta" value="<%=rs.getString(6)%>"></td>
    </tr>
    <tr>
      <td>date</td>
      <td><input class="validate[required,custom[date]]" name="d" type="text" id="d" value="<%=rs.getString(7)%>"></td>
    </tr>
    <tr>
      <td colspan="2"><div style="margin-left:200px">
          <div align="justify">
            <input type="submit" name="Submit" value="Submit">              
            <input type="reset" name="Reset" value="Reset">
          </div>
      </div>
    </td>
    </tr>
  </table>
</form>

</body>
</html>
