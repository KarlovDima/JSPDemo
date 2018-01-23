<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.GregorianCalendar" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Clock</title>
</head>
<body>
<h2 align="center">Auto Refresh Header Example</h2>
<hr>
<br/><br/>
<center>
    <%
        response.setIntHeader("Refresh", 1);
        Calendar calendar = new GregorianCalendar();
        String date = calendar.get(Calendar.HOUR) + ":"
                + calendar.get(Calendar.MINUTE) + ":"
                + calendar.get(Calendar.SECOND) + " "
                + (calendar.get(Calendar.AM_PM) == 0 ? "AM" : "PM");
        out.print(date);
    %>
</center>
</body>
</html>
