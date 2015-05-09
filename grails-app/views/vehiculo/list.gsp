
<%@ page import="monotributo.Vehiculo" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'vehiculo.label', default: 'Vehiculo')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'vehiculo.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="dominio" title="${message(code: 'vehiculo.dominio.label', default: 'Dominio')}" />
                        
                            <g:sortableColumn property="condicionVehiculo" title="${message(code: 'vehiculo.condicionVehiculo.label', default: 'Condicion Vehiculo')}" />
                        
                            <g:sortableColumn property="montoAlquiler" title="${message(code: 'vehiculo.montoAlquiler.label', default: 'Monto Alquiler')}" />
                        
                            <th><g:message code="vehiculo.aseguradora.label" default="Aseguradora" /></th>
                        
                            <g:sortableColumn property="montoPrima" title="${message(code: 'vehiculo.montoPrima.label', default: 'Monto Prima')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${vehiculoInstanceList}" status="i" var="vehiculoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${vehiculoInstance.id}">${fieldValue(bean: vehiculoInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: vehiculoInstance, field: "dominio")}</td>
                        
                            <td>${fieldValue(bean: vehiculoInstance, field: "condicionVehiculo")}</td>
                        
                            <td>${fieldValue(bean: vehiculoInstance, field: "montoAlquiler")}</td>
                        
                            <td>${fieldValue(bean: vehiculoInstance, field: "aseguradora")}</td>
                        
                            <td>${fieldValue(bean: vehiculoInstance, field: "montoPrima")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${vehiculoInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
