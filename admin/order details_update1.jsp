<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String oi=request.getParameter("oi");
ResultSet rs=s.stmt.executeQuery("select * from orderdetails where ord_id="+oi+" ");
rs.next();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>

<body>

<form name="form1" method="post" action="ord details_update2.jsp">
  <table width="256" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center">ORDERDETAILS </div></td>
    </tr>
    <tr>
      <td>ord id </td>
      <td><input name="oi" type="text" id="oi" value="<%=rs.getInt("ord_id")%>"></td>
    </tr>
    <tr>
      <td>pro id </td>
      <td><input name="pi" type="text" id="pi" value="<%=rs.getInt("pro_id")%>"></td>
    </tr>
    <tr>
      <td>quantity</td>
      <td><input name="q" type="text" id="q" value="<%=rs.getInt("quantity")%>"></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" value="Submit">
        <input type="submit" name="Submit" value="Submit">
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
</body>
</html>
