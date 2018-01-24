<%@ page import="org.apache.commons.fileupload.FileItem" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="java.io.File" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>File upload</title>
</head>
<body>
<%
    File file;
    String filePath = "e:\\this\\";
    String contentType = request.getContentType();
    if ((contentType.contains("multipart/form-data"))) {
        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setSizeThreshold(5000 * 1024);
        factory.setRepository(new File("e:\\this\\"));
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setSizeMax(5000 * 1024);
        try {
            List<FileItem> fileItems = upload.parseRequest(request);

            out.println("<html>");
            out.println("<head>");
            out.println("<title>JSP File upload</title>");
            out.println("</head>");
            out.println("<body>");

            for (FileItem item : fileItems) {
                if (!item.isFormField()) {
                    String fileName = item.getName();
                    if (fileName.lastIndexOf("\\") >= 0) {
                        file = new File(filePath +
                                fileName.substring(fileName.lastIndexOf("\\")));
                    } else {
                        file = new File(filePath +
                                fileName.substring(fileName.lastIndexOf("\\") + 1));
                    }
                    item.write(file);
                    out.println("Uploaded Filename: " + filePath +
                            fileName + "<br>");
                }
            }

            out.println("</body>");
            out.println("</html>");
        } catch (Exception ex) {
            System.out.println(ex);
        }
    } else {
        out.println("<html>");
        out.println("<head>");
        out.println("<title>JSP upload</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<p>No file uploaded</p>");
        out.println("</body>");
        out.println("</html>");
    }
%>
</body>
</html>
