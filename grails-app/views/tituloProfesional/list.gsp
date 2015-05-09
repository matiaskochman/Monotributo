
<%@ page import="monotributo.TituloProfesional" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'tituloProfesional.label', default: 'TituloProfesional')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'tituloProfesional.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="titulo" title="${message(code: 'tituloProfesional.titulo.label', default: 'Titulo')}" />
                        
                            <g:sortableColumn property="colegioProfesional" title="${message(code: 'tituloProfesional.colegioProfesional.label', default: 'Colegio Profesional')}" />
                        
                            <g:sortableColumn property="fechaMatriculacion" title="${message(code: 'tituloProfesional.fechaMatriculacion.label', default: 'Fecha Matriculacion')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${tituloProfesionalInstanceList}" status="i" var="tituloProfesionalInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${tituloProfesionalInstance.id}">${fieldValue(bean: tituloProfesionalInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: tituloProfesionalInstance, field: "titulo")}</td>
                        
                            <td>${fieldValue(bean: tituloProfesionalInstance, field: "colegioProfesional")}</td>
                        
                            <td><g:formatDate date="${tituloProfesionalInstance.fechaMatriculacion}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${tituloProfesionalInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
