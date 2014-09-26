<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ page import="com.dell.api.registration.*" %>

<%@ page import="org.keycloak.util.KeycloakUriBuilder" %>
<%@ page import="org.keycloak.representations.IDToken" %>
<%@ page import="org.keycloak.ServiceUrlConstants" %>

<%@ page import="org.keycloak.representations.idm.RoleRepresentation" %>


<html>
<head>
	<link href='../css/api.css' media='screen' rel='stylesheet' type='text/css'/>
	<link href='../css/bootstrap.css' rel='stylesheet'>
    <title>Home Page</title>
</head>

<%
    String acctUri = KeycloakUriBuilder.fromUri("/auth").path(ServiceUrlConstants.ACCOUNT_SERVICE_PATH)
            .queryParam("referrer", "dsgapi").build("DSG_API").toString();
    
    IDToken idToken = KeycloakService.getIDToken(request); 
 
%>
<body>
<div id='dsgapi-header'>
  <a id="home" href="/dsgapi">Home</a>
  <a id="logo">Dell Software Developers Platform</a>
</div>   

<div id="dsgapi-container">

<p>        
<b>Hello <%=idToken.getGivenName()%><%= idToken.getPreferredUsername() %><</b>
</p>

<p>
<a href="<%=acctUri%>">Profile</a> | <a href="/dsgapi/logout">logout</a>
</p>

<p>Welcome to Dell Developer's Platform</p>
</div>

</body>
</html>
