<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>Login  </span></h2>
                     <div class="module-body">
<form name="form1" method="post" action="logchecked.jsp">
  <table width="263" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center"></div>        
      <div align="center" class="style1">Login</div></td>
    </tr>
    <tr>
      <td width="96"><div align="center">Username </div></td>
      <td width="165"><div align="center">
        <input name="username" type="text" id="username">
      </div></td>
    </tr>
    <tr>
      <td><div align="center">Password</div></td>
      <td><div align="center">
        <input name="password" type="password" id="password">
      </div></td>
    </tr>
    <tr>
      <td height="28" colspan="2"><a href="forgot_1.jsp"><strong>Forgot Password ??</strong></a><strong> </strong></td>
    </tr>
    <tr>
      <td height="28" colspan="2"><div align="center"></div>        <div align="center">
        <input type="submit" name="Submit" value="Submit">
      </div></td>
    </tr>
  </table>
  <p>&nbsp;</p>
</form>
</div>  <!-- End .module-body -->
 </div>  <!-- End .module -->
  <div style="clear:both;"></div>
  </div> <!-- End .grid_12 -->
</div> <!-- End .container_12 -->
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
