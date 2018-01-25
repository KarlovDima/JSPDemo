<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Java Bean</title>
</head>
<body>
<jsp:useBean id="student" class="com.dida.StudentBean">
    <jsp:setProperty name="student" property="firstName" value="Dasha"/>
    <jsp:setProperty name="student" property="lastName" value="Tits"/>
    <jsp:setProperty name="student" property="age" value="19"/>
</jsp:useBean>

<p>
    Firsts name:
    <jsp:getProperty name="student" property="firstName"/>
</p>
<p>
    Last name:
    <jsp:getProperty name="student" property="lastName"/>
</p>
<p>
    Age:
    <jsp:getProperty name="student" property="age"/>
</p>
</body>
</html>
