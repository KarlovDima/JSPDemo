<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Session</title>
</head>
<body>
<%
    Date creationDate = new Date(session.getCreationTime());
    Date lastAccessDate = new Date(session.getLastAccessedTime());
    String title = "Welcome back to my Website";
    int visitCount = 0;
    String visitCountKey = "visitCount";
    String userIDKey = "userID";
    String userID = "ABCD";
    if (session.isNew()) {
        title = "Welcome to my Website";
        session.setAttribute(userIDKey, userID);
        session.setAttribute(visitCountKey, visitCount);
    }
    visitCount = (int) session.getAttribute("visitCount");
    visitCount += 1;
    userID = (String) session.getAttribute("userID");
    session.setAttribute(visitCountKey, visitCount);
%>

<table border="1" align="center">
    <tr bgcolor="#7fffd4">
        <th colspan="2"><%=title%>
        </th>
    </tr>
    <tr bgcolor="#7fffd4">
        <th>Session Info</th>
        <th>Value</th>
    </tr>
    <tr>
        <td>ID</td>
        <td><%out.println(session.getId());%></td>
    </tr>
    <tr>
        <td>Creation time</td>
        <td><%out.println(creationDate);%></td>
    </tr>
    <tr>
        <td>Time of last access</td>
        <td><%out.println(lastAccessDate);%></td>
    </tr>
    <tr>
        <td>UserID</td>
        <td><%out.println(userID);%></td>
    </tr>
    <tr>
        <td>Number of visits</td>
        <td><%out.println(visitCount);%></td>
    </tr>
</table>
</body>
</html>
