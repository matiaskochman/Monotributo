

<%@ page import="monotributo.ColegioProfesional" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'colegioProfesional.label', default: 'ColegioProfesional')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${colegioProfesionalInstance}">
            <div class="errors">
                <g:renderErrors bean="${colegioProfesionalInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="colegioProfesional"><g:message code="colegioProfesional.colegioProfesional.label" default="Colegio Profesional" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: colegioProfesionalInstance, field: 'colegioProfesional', 'errors')}">
                                    <g:textField name="colegioProfesional" value="${colegioProfesionalInstance?.colegioProfesional}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="cuil_cui"><g:message code="colegioProfesional.cuil_cui.label" default="Cuil/cui" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: colegioProfesionalInstance, field: 'cuil_cui', 'errors')}">
                                    <g:textField name="cuil_cui" value="${colegioProfesionalInstance?.cuil_cui}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
