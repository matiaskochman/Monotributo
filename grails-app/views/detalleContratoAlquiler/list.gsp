
<%@ page import="monotributo.DetalleContratoAlquiler" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'detalleContratoAlquiler.label', default: 'DetalleContratoAlquiler')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'detalleContratoAlquiler.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="anio" title="${message(code: 'detalleContratoAlquiler.anio.label', default: 'Anio')}" />
                        
                            <g:sortableColumn property="mes" title="${message(code: 'detalleContratoAlquiler.mes.label', default: 'Mes')}" />
                        
                            <g:sortableColumn property="pago" title="${message(code: 'detalleContratoAlquiler.pago.label', default: 'Pago')}" />
                        
                            <g:sortableColumn property="montoAlquiler" title="${message(code: 'detalleContratoAlquiler.montoAlquiler.label', default: 'Monto Alquiler')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${detalleContratoAlquilerInstanceList}" status="i" var="detalleContratoAlquilerInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${detalleContratoAlquilerInstance.id}">${fieldValue(bean: detalleContratoAlquilerInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: detalleContratoAlquilerInstance, field: "anio")}</td>
                        
                            <td>${fieldValue(bean: detalleContratoAlquilerInstance, field: "mes")}</td>
                        
                            <td><g:formatBoolean boolean="${detalleContratoAlquilerInstance.pago}" /></td>
                        
                            <td>${fieldValue(bean: detalleContratoAlquilerInstance, field: "montoAlquiler")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${detalleContratoAlquilerInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
