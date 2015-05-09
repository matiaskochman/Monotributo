
<%@ page import="monotributo.Aseguradora" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'aseguradora.label', default: 'Aseguradora')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'aseguradora.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="nombre" title="${message(code: 'aseguradora.nombre.label', default: 'Nombre')}" />
                        
                            <g:sortableColumn property="cuit_cui" title="${message(code: 'aseguradora.cuit_cui.label', default: 'Cuitcui')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${aseguradoraInstanceList}" status="i" var="aseguradoraInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${aseguradoraInstance.id}">${fieldValue(bean: aseguradoraInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: aseguradoraInstance, field: "nombre")}</td>
                        
                            <td>${fieldValue(bean: aseguradoraInstance, field: "cuit_cui")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${aseguradoraInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
