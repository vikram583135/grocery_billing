 <%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String p_id=request.getParameter("p_id");
ResultSet rs=s.stmt.executeQuery("select * from products where pro_id='"+p_id+"'");
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

<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>PRODUCTS UPDATE</span></h2>
                     <div class="module-body">

<form name="formID" ID="formID" method="post" action="pro_update2.jsp">
  <table width="200" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center" class="style3">PRODUCTS</div></td>
    </tr>
    <tr>
      <td>product_id</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="pi" type="text" id="pi" value="<%=rs.getString(1)%>"></td>
    </tr>
    <tr>
      <td>product_name</td>
      <td><input class="validate[required,custom[onlyLetter]]" name="pn" type="text" id="pn" value="<%=rs.getString(2)%>"></td>
    </tr>
    <tr>
      <td>product_price_purchase</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="pp" type="text" id="pp" value="<%=rs.getString(3)%>"></td>
    </tr>
    <tr>
      <td>product_price_sales</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="pps" type="text" id="pps" value="<%=rs.getString(4)%>"></td>
    </tr>
    <tr>
      <td>current_stock</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="cs" type="text" id="cs" value="<%=rs.getString(5)%>"></td>
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
