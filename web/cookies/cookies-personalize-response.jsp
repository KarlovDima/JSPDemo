<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Setting cookies</title>
</head>
<body>

<%
    String favouriteProgrammingLanguage = request.getParameter("favouriteProgrammingLanguage");
    Cookie cookie = new Cookie("favouriteProgrammingLanguage", favouriteProgrammingLanguage);
    cookie.setMaxAge(60 * 60 * 24);
    response.addCookie(cookie);
%>

Thanks! We set you favourite language to ${param.favouriteProgrammingLanguage}

<br/><br/>

<a href="cookies-homepage.jsp">Return to the homepage</a>

</body>
</html>