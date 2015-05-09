
<%@ page import="monotributo.ContratoDeAlquiler" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'contratoDeAlquiler.label', default: 'ContratoDeAlquiler')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'contratoDeAlquiler.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="fechaInicio" title="${message(code: 'contratoDeAlquiler.fechaInicio.label', default: 'Fecha Inicio')}" />
                        
                            <g:sortableColumn property="fechaFin" title="${message(code: 'contratoDeAlquiler.fechaFin.label', default: 'Fecha Fin')}" />
                        
                            <g:sortableColumn property="superficieAfectada" title="${message(code: 'contratoDeAlquiler.superficieAfectada.label', default: 'Superficie Afectada')}" />
                        
                            <th><g:message code="contratoDeAlquiler.archivoAdjunto.label" default="Archivo Adjunto" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${contratoDeAlquilerInstanceList}" status="i" var="contratoDeAlquilerInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${contratoDeAlquilerInstance.id}">${fieldValue(bean: contratoDeAlquilerInstance, field: "id")}</g:link></td>
                        
                            <td><g:formatDate date="${contratoDeAlquilerInstance.fechaInicio}" /></td>
                        
                            <td><g:formatDate date="${contratoDeAlquilerInstance.fechaFin}" /></td>
                        
                            <td>${fieldValue(bean: contratoDeAlquilerInstance, field: "superficieAfectada")}</td>
                        
                            <td>${fieldValue(bean: contratoDeAlquilerInstance, field: "archivoAdjunto.nombre")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${contratoDeAlquilerInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
