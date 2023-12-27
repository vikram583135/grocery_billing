<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String s_id=request.getParameter("s_id");
ResultSet rs=s.stmt.executeQuery("select * from suppliers where sup_id='"+s_id+"'");
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
                     <h2><span>SUPPLIERS UPDATE</span></h2>
                     <div class="module-body">
<form name="formID" ID="formID" method="post" action="sup_update2.jsp">
  <table width="200" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center" class="style3">SUPLIERS</div></td>
    </tr>
    <tr>
      <td>suppliers_id</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="si" type="text" id="si" value="<%=rs.getString(1)%>"></td>
    </tr>
    <tr>
      <td>suppliers_name</td>
      <td><input class="validate[required,custom[onlyLetter]]" name="sn" type="text" id="sn" value="<%=rs.getString(2)%>"></td>
    </tr>
    <tr>
      <td>suppliers_phone</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="sp" type="text" id="sp" value="<%=rs.getString(3)%>"></td>
    </tr>
    <tr>
      <td>suppliers_email</td>
      <td><input class="validate[required,custom[email]]" name="se" type="text" id="se" value="<%=rs.getString(4)%>"></td>
    </tr>
    <tr>
      <td>suppliers_address</td>
      <td><input class="validate[required,custom[onlyLetter]]" name="sd" type="text" id="sd" value="<%=rs.getString(5)%>"></td>
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
</form>
</body>
</html>

