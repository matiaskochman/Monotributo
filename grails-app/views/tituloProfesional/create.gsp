

<%@ page import="monotributo.TituloProfesional" %>
<%@ page import="monotributo.ColegioProfesional" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'tituloProfesional.label', default: 'TituloProfesional')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
		<calendar:resources lang="en" theme="tiger"/>      
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${tituloProfesionalInstance}">
            <div class="errors">
                <g:renderErrors bean="${tituloProfesionalInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="titulo"><g:message code="tituloProfesional.titulo.label" default="Titulo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tituloProfesionalInstance, field: 'titulo', 'errors')}">
                                    <g:textField name="titulo" value="${tituloProfesionalInstance?.titulo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="colegioProfesional"><g:message code="tituloProfesional.colegioProfesional.label" default="Colegio Profesional" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tituloProfesionalInstance, field: 'colegioProfesional', 'errors')}">
                                    <g:select 
                                    	id="colegioProfesional"
                                    	name="idColegioProfesional"
                                    	optionKey="id" 
	                                	optionValue="colegioProfesional" 
                                    	from="${ColegioProfesional.list()}" 
                                    	value="${tituloProfesionalInstance?.colegioProfesional}" 
                                    	noSelection="['null': '']" >
                                    	<option>           </option>
	                                </g:select>
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fechaMatriculacion"><g:message code="tituloProfesional.fechaMatriculacion.label" default="Fecha Matriculacion" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tituloProfesionalInstance, field: 'fechaMatriculacion', 'errors')}">
									<calendar:datePicker name="fechaMatriculacion" lang="en" value="${tituloProfesionalInstance?.fechaMatriculacion}" dateFormat="%d/%m/%Y"/>
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
