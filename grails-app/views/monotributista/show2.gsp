<%@ page import="monotributo.Monotributista" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>Show Monotributista</title>
    </head>
    <body>
    	<g:set var="monotributista" value="${"null"}" scope="session" />
      <g:render template="/monotributista/showMonotributista" />
    </body>
</html>