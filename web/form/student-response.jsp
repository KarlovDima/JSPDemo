<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Confirmation</title>
</head>
<body>
Student is confirmed: <%=request.getParameter("firstName")%> <%=request.getParameter("lastName")%>
<br/><br/>

Student`s country is <%=request.getParameter("country")%>
<br/><br/>

Student`s favourite programming language is <%=request.getParameter("favouriteProgrammingLanguage")%>
<br/><br/>

Student`s favourite databases are:
<ul>
    <%
        String[] databases = request.getParameterValues("favouriteDatabase");
        for (String database : databases) {
            out.println("<li>" + database + "</li>");
        }
    %>
</ul>
</body>
</html>
