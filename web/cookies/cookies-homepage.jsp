<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Homepage</title>
</head>
<body>

<h3>Training Portal</h3>

<%
    String favouriteProgrammingLanguage = "Java";

    Cookie[] cookies = request.getCookies();

    if (cookies != null)
        for (Cookie cookie : cookies)
            if (cookie.getName().equals("favouriteProgrammingLanguage")) {
                favouriteProgrammingLanguage = cookie.getValue();
                break;
            }
%>

<h4>New books for <%=favouriteProgrammingLanguage%>
</h4>
<ul>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
</ul>

<h4>Latest news reports for <%=favouriteProgrammingLanguage%>
</h4>
<ul>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
</ul>

<h4>Hot jobs for <%=favouriteProgrammingLanguage%>
</h4>
<ul>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
</ul>

<a href="cookies-personalize-form.html">Personalize this page</a>

</body>
</html>
