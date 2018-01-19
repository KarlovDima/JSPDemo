<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    String toLower(String text) {
        return text.toLowerCase();
    }
%>

"Hello World" to lower case: <%=toLower("Hello World")%>
</body>
</html>
