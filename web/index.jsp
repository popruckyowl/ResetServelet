<%@page import="java.util.ArrayList"%>
<%@ page pageEncoding="utf-8"%>

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <a href="processRequest">進入網站</a>
        
        <form method="POST" action="SessionServelet">
            <ol>
            <%
                ArrayList list = (ArrayList)session.getAttribute("list");
                for (int i=0; list!=null && i<list.size(); i++) {
                    String t = (String) list.get(i);
                    if (t != "") {
                        out.println("<li>" + t + "</li>");
                    }
                }
            %>
            </ol>
            <input type="text" name="t" /><input type="submit"/>
            <a href="EmptyServelet"><input type="button" value="清空"/></a>
        </form>
    </body>
</html>
