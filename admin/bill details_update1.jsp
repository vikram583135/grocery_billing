<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String bi=request.getParameter("bi");
ResultSet rs=s.stmt.executeQuery("select * from billdetails where bill_id="+bi+" ");
rs.next();
%>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>Billdetails </span></h2>
                     <div class="module-body">

<form name="formID" ID="formID" method="post" action="bill details_update2.jsp">
  <table width="200" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center">BILLDETAILS</div></td>
    </tr>
    <tr>
      <td>bill id </td>
      <td><input class="validate[required,custom[onlyNumber]]" name="bi" type="text" id="bi" value="<%=rs.getInt("bill_id")%>"></td>
    </tr>
    <tr>
      <td>pro id </td>
      <td><input class="validate[required,custom[onlyNumber]]" name="pi" type="text" id="pi" value="<%=rs.getInt("pro_id")%>"></td>
    </tr>
    <tr>
      <td>quantity</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="q" type="text" id="q" value="<%=rs.getInt("quantity")%>"></td>
    </tr>
    <tr>
      <td>rate</td>
      <td><input class="validate[required,custom[onlyNumber]]" name="r" type="text" id="r" value="<%=rs.getInt("rate")%>"></td>
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