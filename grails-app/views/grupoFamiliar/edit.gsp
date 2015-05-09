

<%@ page import="monotributo.GrupoFamiliar" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${grupoFamiliarInstance}">
            <div class="errors">
                <g:renderErrors bean="${grupoFamiliarInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${grupoFamiliarInstance?.id}" />
                <g:hiddenField name="version" value="${grupoFamiliarInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="nombre"><g:message code="grupoFamiliar.nombre.label" default="Nombre" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: grupoFamiliarInstance, field: 'nombre', 'errors')}">
                                    <g:textField name="nombre" value="${grupoFamiliarInstance?.nombre}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="apellido"><g:message code="grupoFamiliar.apellido.label" default="Apellido" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: grupoFamiliarInstance, field: 'apellido', 'errors')}">
                                    <g:textField name="apellido" value="${grupoFamiliarInstance?.apellido}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="parentesco"><g:message code="grupoFamiliar.parentesco.label" default="Parentesco" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: grupoFamiliarInstance, field: 'parentesco', 'errors')}">
                                    <g:textField name="parentesco" value="${grupoFamiliarInstance?.parentesco}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="tipoDeDocumento"><g:message code="grupoFamiliar.tipoDeDocumento.label" default="Tipo De Documento" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: grupoFamiliarInstance, field: 'tipoDeDocumento', 'errors')}">
                                    <g:textField name="tipoDeDocumento" value="${grupoFamiliarInstance?.tipoDeDocumento}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="numeroDeDocumento"><g:message code="grupoFamiliar.numeroDeDocumento.label" default="Numero De Documento" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: grupoFamiliarInstance, field: 'numeroDeDocumento', 'errors')}">
                                    <g:textField name="numeroDeDocumento" value="${grupoFamiliarInstance?.numeroDeDocumento}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fechaDeNacimiento"><g:message code="grupoFamiliar.fechaDeNacimiento.label" default="Fecha De Nacimiento" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: grupoFamiliarInstance, field: 'fechaDeNacimiento', 'errors')}">
                                    <g:datePicker name="fechaDeNacimiento" precision="day" value="${grupoFamiliarInstance?.fechaDeNacimiento}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="archivoAdjunto"><g:message code="grupoFamiliar.archivoAdjunto.label" default="Archivo Adjunto" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: grupoFamiliarInstance, field: 'archivoAdjunto', 'errors')}">
                                    <g:select name="archivoAdjunto.id" from="${monotributo.Archivo.list()}" optionKey="id" value="${grupoFamiliarInstance?.archivoAdjunto?.id}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
