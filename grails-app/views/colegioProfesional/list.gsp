
<%@ page import="monotributo.ColegioProfesional" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'colegioProfesional.label', default: 'ColegioProfesional')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'colegioProfesional.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="colegioProfesional" title="${message(code: 'colegioProfesional.colegioProfesional.label', default: 'Colegio Profesional')}" />
                        
                            <g:sortableColumn property="cuil_cui" title="${message(code: 'colegioProfesional.cuil_cui.label', default: 'Cuil/cui')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${colegioProfesionalInstanceList}" status="i" var="colegioProfesionalInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${colegioProfesionalInstance.id}">${fieldValue(bean: colegioProfesionalInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: colegioProfesionalInstance, field: "colegioProfesional")}</td>
                        
                            <td>${fieldValue(bean: colegioProfesionalInstance, field: "cuil_cui")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${colegioProfesionalInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
