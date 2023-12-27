<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
<style type="text/css">
<!--
.style4 {font-size: 14px; font-family: "Times New Roman", Times, serif; }
.style7 {font-size: 12px}
-->
</style>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span> Customer</span></h2>
                     <div class="module-body">

<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>

<%
ResultSet rs=s.stmt.executeQuery("select max(cust_id) from customer");
rs.next();
String id=rs.getString(1);
int cid=Integer.parseInt(id);
cid=cid+1;

%>
<form name="formID" ID="formID" method="post" action="cust_insert.jsp">
  <table width="200" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center" class="style7">CUSTOMER</div></td>
    </tr>
    <tr>
      <td><span class="style4">Customer Id</span></td>
      <td><input class="validate[required,custom[onlyNumber]]" name="ci" type="text" id="ci" value="<%=cid%>"></td>
    </tr>
    <tr>
      <td><span class="style4">Customer Name</span></td>
      <td><input class="validate[required,custom[onlyLetter]]" name="cn" type="text" id="cn"></td>
    </tr>
    <tr>
      <td><span class="style4">Customer Phone</span></td>
      <td><input class="validate[required,custom[onlyNumber]]" name="cp" type="text" id="cp"></td>
    </tr>
    <tr>
      <td><span class="style4">Customer Email</span></td>
      <td><input class="validate[required,custom[email]]" name="ce" type="text" id="ce"></td>
    </tr>
    <tr>
      <td><span class="style4">Date Become Customer</span></td>
      <td><input class="validate[required,custom[date]]" name="dbc" type="text" id="dbc"></td>
    </tr>
    <tr>
      <td height="24"><span class="style4">Customer City</span></td>
      <td><input class="validate[required,custom[onlyLetter]]" name="cc" type="text" id="cc"></td>
    </tr>
    <tr>
      <td><span class="style4">Pincode</span></td>
      <td><input class="validate[required,custom[onlyNumber]]" name="p" type="text" id="p"></td>
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
