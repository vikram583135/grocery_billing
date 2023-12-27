<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-weight: bold;
}
-->
</style>



<jsp:include page="header.jsp"></jsp:include>
<div class="container_12">
            <!-- Dashboard icons -->
            <div class="grid_12">
  <div class="module">
                     <h2><span>CANCELATION </span></h2>
                     <div class="module-body">
					 
					 
					 
					 
<%@page import="java.sql.*"%>
<%@page import="aadhaar.dbconnect"%>
<jsp:useBean id="s" class="aadhaar.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
ResultSet rs=s.stmt.executeQuery("select max(calncelid) from cancelation");
rs.next();

int cid=rs.getInt(1);

cid=cid+1;
%>





<form name="formID" id="formID" method="post" action="cancelationinsert.jsp">
 <div align="center">
    <table width="322" height="337" border="1">
      <tr>
        <td colspan="2"><div align="center" class="style1">cancelation</div></td>
      </tr>
      <tr>
        <td width="98">Cancel ID</td>
        <td width="295"><input name="canc_id" type="text" id="canc_id" value="<%=cid%>" readonly=""></td>
      </tr>
      <tr>
        <td>Citizen ID</td>
        <td><input name="cit_id" type="text" id="cit_id" class="validate[required,custom[onlyNumber]]" ></td>
      </tr>
      <tr>
        <td>Policy NO</td>
        <td><input name="p_no" type="text" id="p_no" class="validate[required,custom[onlyNumber]]"></td>
      </tr>
      <tr>
        <td>Policy Name</td>
        <td><input name="p_name" type="text" id="p_name" class="validate[required,custom[onlyLetter]]"></td>
      </tr>
      <tr>
        <td>Cancel Reason</td>
        <td><textarea name="canc_reason" id="canc_reason" class="validate[required]" ></textarea></td>
      </tr>
      <tr>
        <td>Date</td>
        <td><input name="date1" type="text" id="date1" class="validate[required,custom[date]]"></td>
      </tr>
      <tr>
        <td colspan="2"><div align="center">
          <input type="submit" name="Submit" value="Submit">
          <input type="reset" name="Reset" value="Reset">
        </div></td>
      </tr>
    </table>
  </div>
  
</form>
 </div> <!-- End .module-body -->
 </div>  <!-- End .module -->
  <div style="clear:both;"></div>
  </div> <!-- End .grid_12 -->
</div> <!-- End .container_12 -->
<jsp:include page="footer.jsp"></jsp:include>