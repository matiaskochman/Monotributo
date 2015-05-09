
<%@ page import="monotributo.Domicilio" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'domicilio.label', default: 'Domicilio')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'domicilio.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="tipoDeDomicilio" title="${message(code: 'domicilio.tipoDeDomicilio.label', default: 'Tipo De Domicilio')}" />
                        
                            <g:sortableColumn property="calle" title="${message(code: 'domicilio.calle.label', default: 'Calle')}" />
                        
                            <g:sortableColumn property="numero" title="${message(code: 'domicilio.numero.label', default: 'Numero')}" />
                        
                            <g:sortableColumn property="sector" title="${message(code: 'domicilio.sector.label', default: 'Sector')}" />
                        
                            <g:sortableColumn property="torre" title="${message(code: 'domicilio.torre.label', default: 'Torre')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${domicilioInstanceList}" status="i" var="domicilioInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${domicilioInstance.id}">${fieldValue(bean: domicilioInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: domicilioInstance, field: "tipoDeDomicilio")}</td>
                        
                            <td>${fieldValue(bean: domicilioInstance, field: "calle")}</td>
                        
                            <td>${fieldValue(bean: domicilioInstance, field: "numero")}</td>
                        
                            <td>${fieldValue(bean: domicilioInstance, field: "sector")}</td>
                        
                            <td>${fieldValue(bean: domicilioInstance, field: "torre")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${domicilioInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
