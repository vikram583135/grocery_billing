<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>

<%
String username=request.getParameter("username");
String password=request.getParameter("password");

ResultSet rs=s.stmt.executeQuery("select * from login where username='"+username+"' and password='"+password+"'");
if(rs.next())
{
session.setAttribute("uname",username);
String type=rs.getString("type");
if(type.equals("admin"))
{
response.sendRedirect("admin/home.jsp");
}
else if(type.equals("customer"))
{
response.sendRedirect("customer/home.jsp");
}
else if(type.equals("suppliers"))
{
response.sendRedirect("suppliers/home.jsp");
}
}
else
{
%>
<script>
alert("invalid username or password");
history.back();
</script>
<%
}
%>