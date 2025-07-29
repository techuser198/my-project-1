<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
    // Set security headers
    response.setHeader("X-Content-Type-Options", "nosniff");
    response.setHeader("X-Frame-Options", "DENY");
    response.setHeader("Content-Security-Policy", "default-src 'self'; script-src 'self'; style-src 'self'; object-src 'none'");
    response.setHeader("Referrer-Policy", "no-referrer");
    response.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains");

    // Basic logging (server-side)
    String userAgent = request.getHeader("User-Agent");
    String remoteIP = request.getRemoteAddr();
    java.util.Date accessTime = new java.util.Date();
    System.out.println("INFO: Index.jsp accessed by IP: " + remoteIP + ", User-Agent: " + userAgent + ", at " + accessTime);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome | My Application</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Favicon -->
    <link rel="icon" href="assets/favicon.ico">

    <!-- Bootstrap CSS (optional) -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

<jsp:include page="/WEB-INF/jsp/header.jsp" />

<div class="container mt-5">
    <h1 class="display-5">Welcome to <strong>MyApp</strong></h1>
    <p class="lead">Your secure Java web application is running.</p>

    <!-- Dynamic content example -->
    <c:choose>
        <c:when test="${not empty sessionScope.username}">
            <p>Hello, <strong>${sessionScope.username}</strong>! Glad to see you.</p>
        </c:when>
        <c:otherwise>
            <p><a href="login.jsp">Login</a> to access your dashboard.</p>
        </c:otherwise>
    </c:choose>

    <!-- Server time -->
    <p class="text-muted mt-4">
        Server Time: <fmt:formatDate value="<%= new java.util.Date() %>" pattern="dd MMM yyyy HH:mm:ss z"/>
    </p>
</div>

<jsp:include page="/WEB-INF/jsp/footer.jsp" />

<!-- Bootstrap JS (optional) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>



