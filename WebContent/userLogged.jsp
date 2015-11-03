<%@page import="org.sap.javajsp.model.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<% 
    response.setHeader("Cache-Control","no-store,must-revalidate"); 
    response.setHeader("Pragma","no-cache"); 
    response.setDateHeader ("Expires", -1); 
    new java.util.Date();
    if(session.getAttribute("currentSessionUser")!=null)
    {
    %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
   "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>User Logged Successfully</title>
<SCRIPT type="text/javascript">
function noBack() { 
   window.history.forward(); 
   }
</SCRIPT>
</head>

<BODY onload="noBack();">
	<a href="LogoutServlet">Logout</a>
	<div>
		<% UserBean currentUser = (UserBean)(session.getAttribute("currentSessionUser"));%>

		Welcome
		<%= currentUser.getFirstName() + " " + currentUser.getLastName() %>
	</div>

</body>

</html>

<%}
else
response.sendRedirect("LoginPage.jsp");%>
