<%@ page import="monotributo.Monotributista" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>Create Monotributista</title>
        <g:setProvider library="jquery"/>
    </head>
    <body>
	  <g:set var="monotributista" value="${null}" scope="session" />
      <g:render template="/monotributista/listaMonotributistas" />
    </body>
</html>
