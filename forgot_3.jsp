<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String username=request.getParameter("username");
String h_q=request.getParameter("h_q");
String h_a=request.getParameter("h_a");
ResultSet rs=s.stmt.executeQuery("select * from login where username='"+username+"' and hint_ans='"+h_a+"' ");
if(rs.next())
{

String u_name=rs.getString(1);
String password=rs.getString(2);
out.print("Your User Name IS: "+u_name);
out.print("Your Password IS: "+password);
%>
   
	<b>Please Notify Your Username & Password")</b>
<a href="login.jsp">Go to Login</a>
	
<%
	}
	else
	{
	%>
	<script>
	alert("Sorry Check User Name");
	document.location="login.jsp";
	</script>
	<%
	
	}
	%>