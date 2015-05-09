
<%@ page import="monotributo.Monotributista" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'monotributista.label', default: 'Monotributista')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'monotributista.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="nombre" title="${message(code: 'monotributista.nombre.label', default: 'Nombre')}" />
                        
                            <g:sortableColumn property="cuitCui" title="${message(code: 'monotributista.cuitCui.label', default: 'Cuit Cui')}" />
                        
                            <g:sortableColumn property="tipoContribuyente" title="${message(code: 'monotributista.tipoContribuyente.label', default: 'Tipo Contribuyente')}" />
                        
                            <g:sortableColumn property="tipoActividad" title="${message(code: 'monotributista.tipoActividad.label', default: 'Tipo Actividad')}" />
                        
                            <g:sortableColumn property="descripcion" title="${message(code: 'monotributista.descripcion.label', default: 'Descripcion')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${monotributistaInstanceList}" status="i" var="monotributistaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${monotributistaInstance.id}">${fieldValue(bean: monotributistaInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: monotributistaInstance, field: "nombre")}</td>
                        
                            <td>${fieldValue(bean: monotributistaInstance, field: "cuitCui")}</td>
                        
                            <td>${fieldValue(bean: monotributistaInstance, field: "tipoContribuyente")}</td>
                        
                            <td>${fieldValue(bean: monotributistaInstance, field: "tipoActividad")}</td>
                        
                            <td>${fieldValue(bean: monotributistaInstance, field: "descripcion")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${monotributistaInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
