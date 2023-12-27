<%@page import="java.sql.*"%>
<%@page import="grocery.dbconnect"%>
<jsp:useBean id="s" class="grocery.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>

<%

String opswd=request.getParameter("opswd");
String npswd=request.getParameter("npswd");
String cpswd=request.getParameter("cpswd");

String uname=session.getAttribute("uname").toString();

ResultSet rs=s.stmt.executeQuery("select * from login where username='"+uname+"' and password='"+opswd+"'");
if(rs.next())
{
if(npswd.equals(cpswd))
{
int k=s.stmt.executeUpdate("update login set password='"+npswd+"' where username='"+uname+"' ");
%>
<script>
alert("Password Changed");
document.location="home.jsp";
</script>
<%
}
else
{
%>
<script>
alert("Check Conf Password");
history.back();
</script>
<%

}

}
else
{
%>
<script>
alert("Invalid Old Password");
history.back();
</script>
<%
}

%>