

<%@ page import="monotributo.ContratoDeAlquiler" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'contratoDeAlquiler.label', default: 'ContratoDeAlquiler')}" />
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
            <g:hasErrors bean="${contratoDeAlquilerInstance}">
            <div class="errors">
                <g:renderErrors bean="${contratoDeAlquilerInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${contratoDeAlquilerInstance?.id}" />
                <g:hiddenField name="version" value="${contratoDeAlquilerInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fechaInicio"><g:message code="contratoDeAlquiler.fechaInicio.label" default="Fecha Inicio" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: contratoDeAlquilerInstance, field: 'fechaInicio', 'errors')}">
                                    <g:datePicker name="fechaInicio" precision="day" value="${contratoDeAlquilerInstance?.fechaInicio}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fechaFin"><g:message code="contratoDeAlquiler.fechaFin.label" default="Fecha Fin" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: contratoDeAlquilerInstance, field: 'fechaFin', 'errors')}">
                                    <g:datePicker name="fechaFin" precision="day" value="${contratoDeAlquilerInstance?.fechaFin}"  />
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
                                    <g:select name="archivoAdjunto.id" from="${monotributo.Archivo.list()}" optionKey="id" value="${contratoDeAlquilerInstance?.archivoAdjunto?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="listaDetallesDeContrato"><g:message code="contratoDeAlquiler.listaDetallesDeContrato.label" default="Lista Detalles De Contrato" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: contratoDeAlquilerInstance, field: 'listaDetallesDeContrato', 'errors')}">
                                    <g:select name="listaDetallesDeContrato" from="${monotributo.DetalleContratoAlquiler.list()}" multiple="yes" optionKey="id" size="5" value="${contratoDeAlquilerInstance?.listaDetallesDeContrato*.id}" />
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
