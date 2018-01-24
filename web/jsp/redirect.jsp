<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Page Redirect</title>
</head>
<body>
<%
    response.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", "http://www.photofuntoos.com");
%>
</body>
</html>
