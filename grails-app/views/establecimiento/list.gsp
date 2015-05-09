
<%@ page import="monotributo.Establecimiento" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'establecimiento.label', default: 'Establecimiento')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'establecimiento.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="tipoEstablecimiento" title="${message(code: 'establecimiento.tipoEstablecimiento.label', default: 'Tipo Establecimiento')}" />
                        
                            <g:sortableColumn property="titularDelInmueble" title="${message(code: 'establecimiento.titularDelInmueble.label', default: 'Titular Del Inmueble')}" />
                        
                            <g:sortableColumn property="activo" title="${message(code: 'establecimiento.activo.label', default: 'Activo')}" />
                        
                            <g:sortableColumn property="partida" title="${message(code: 'establecimiento.partida.label', default: 'Partida')}" />
                        
                            <g:sortableColumn property="digito" title="${message(code: 'establecimiento.digito.label', default: 'Digito')}" />

                            <g:sortableColumn property="provincia" title="${message(code: 'establecimiento.provincia.label', default: 'Provincia')}" />

                            <g:sortableColumn property="partido" title="${message(code: 'establecimiento.partido.label', default: 'Partido')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${establecimientoInstanceList}" status="i" var="establecimientoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${establecimientoInstance.id}">${fieldValue(bean: establecimientoInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: establecimientoInstance, field: "tipoEstablecimiento")}</td>
                        
                            <td>${fieldValue(bean: establecimientoInstance, field: "titularDelInmueble")}</td>
                        
                            <td><g:formatBoolean boolean="${establecimientoInstance.activo}" /></td>
                        
                            <td>${fieldValue(bean: establecimientoInstance, field: "partida")}</td>
                        
                            <td>${fieldValue(bean: establecimientoInstance, field: "digito")}</td>

                            <td>${fieldValue(bean: establecimientoInstance, field: "provincia.descripcion")}</td>

                            <td>${fieldValue(bean: establecimientoInstance, field: "partido.descripcion")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${establecimientoInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
