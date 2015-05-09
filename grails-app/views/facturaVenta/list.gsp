
<%@ page import="monotributo.FacturaVenta" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'facturaVenta.label', default: 'FacturaVenta')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'facturaVenta.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="fecha" title="${message(code: 'facturaVenta.fecha.label', default: 'Fecha')}" />
                        
                            <g:sortableColumn property="importe" title="${message(code: 'facturaVenta.importe.label', default: 'Importe')}" />
                        
                            <g:sortableColumn property="numeroFactura" title="${message(code: 'facturaVenta.numeroFactura.label', default: 'Numero Factura')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${facturaVentaInstanceList}" status="i" var="facturaVentaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${facturaVentaInstance.id}">${fieldValue(bean: facturaVentaInstance, field: "id")}</g:link></td>
                        
                            <td><g:formatDate date="${facturaVentaInstance.fecha}" /></td>
                        
                            <td>${fieldValue(bean: facturaVentaInstance, field: "importe")}</td>
                        
                            <td>${fieldValue(bean: facturaVentaInstance, field: "numeroFactura")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${facturaVentaInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
