

<%@ page import="monotributo.ContratoDeAlquiler" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'contratoDeAlquiler.label', default: 'ContratoDeAlquiler')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
		<Script Language=JavaScript>
		
			function getStats(fName){
				fullName = fName;
				shortName = fullName.match(/[^\/\\]+$/);
				params:'\'shortName=\' + shortName';
			}
		
		</Script>        
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
            <g:hasErrors bean="${contratoDeAlquilerInstance}">
            <div class="errors">
                <g:renderErrors bean="${contratoDeAlquilerInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fechaInicio"><g:message code="contratoDeAlquiler.fechaInicio.label" default="Fecha Inicio" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: contratoDeAlquilerInstance, field: 'fechaInicio', 'errors')}">
									<calendar:datePicker name="fechaInicio" lang="en" value="${contratoDeAlquilerInstance?.fechaInicio}" dateFormat="%d/%m/%Y"/>
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fechaFin"><g:message code="contratoDeAlquiler.fechaFin.label" default="Fecha Fin" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: contratoDeAlquilerInstance, field: 'fechaFin', 'errors')}">
									<calendar:datePicker name="fechaFin" lang="en" value="${contratoDeAlquilerInstance?.fechaFin}" dateFormat="%d/%m/%Y"/>
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="superficieAfectada"><g:message code="contratoDeAlquiler.superficieAfectada.label" default="Superficie Afectada" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: contratoDeAlquilerInstance, field: 'superficieAfectada', 'errors')}">
                                    <g:textField name="superficieAfectada" value="${fieldValue(bean: contratoDeAlquilerInstance, field: 'superficieAfectada')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="archivoAdjunto"><g:message code="contratoDeAlquiler.archivoAdjunto.label" default="Archivo Adjunto" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: contratoDeAlquilerInstance, field: 'archivoAdjunto', 'errors')}">
									<input type="file" name="myFile"/>
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
