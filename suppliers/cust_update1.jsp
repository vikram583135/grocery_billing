
  <jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>Customer update </span></h2>
                     <div class="module-body">
<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String c_id=request.getParameter("c_id");

ResultSet rs=s.stmt.executeQuery("select * from customer where cust_id='"+c_id+"'");
rs.next();

  %>
  
<form name="form1" method="post" action="cust_update2.jsp">
  <table width="200" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center" class="style6">CUSTOMER</div></td>
    </tr>
    <tr>
      <td><span class="style4">customer_id</span></td>
      <td><input class="validate[required,custom[onlyNumber]]" name="ci" type="text" id="ci" value="<%=rs.getString(1)%>"></td>
    </tr>
    <tr>
      <td><span class="style4">customer_name</span></td>
      <td><input class="validate[required,custom[onlyLetter]]" name="cn" type="text" id="cn" value="<%=rs.getString(2)%>"></td>
    </tr>
    <tr>
      <td><span class="style4">customer_phone</span></td>
      <td><input class="validate[required,custom[onlyNumber]]" name="cp" type="text" id="cp" value="<%=rs.getString(3)%>"></td>
    </tr>
    <tr>
      <td><span class="style4">customer_email</span></td>
      <td><input class="validate[required,custom[email]]"name="ce" type="text" id="ce" value="<%=rs.getString(4)%>"></td>
    </tr>
    <tr>
      <td><span class="style4">date_become_customer</span></td>
      <td><input class="validate[required,custom[date]]" name="dbc" type="text" id="dbc" value="<%=rs.getString(5)%>"></td>
    </tr>
    <tr>
      <td height="24"><span class="style4">customer_city</span></td>
      <td><input class="validate[required,custom[onlyLetter]]" name="cc" type="text" id="cc" value="<%=rs.getString(6)%>"></td>
    </tr>
    <tr>
      <td><span class="style4">pincode</span></td>
      <td><input class="validate[required,custom[onlyNumber]]" name="p" type="text" id="p" value="<%=rs.getString(7)%>"></td>
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

 