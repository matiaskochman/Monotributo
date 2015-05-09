
<%@ page import="monotributo.ContratoDeAlquiler" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'contratoDeAlquiler.label', default: 'ContratoDeAlquiler')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="contratoDeAlquiler.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: contratoDeAlquilerInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="contratoDeAlquiler.fechaInicio.label" default="Fecha Inicio" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${contratoDeAlquilerInstance?.fechaInicio}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="contratoDeAlquiler.fechaFin.label" default="Fecha Fin" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${contratoDeAlquilerInstance?.fechaFin}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="contratoDeAlquiler.superficieAfectada.label" default="Superficie Afectada" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: contratoDeAlquilerInstance, field: "superficieAfectada")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="contratoDeAlquiler.archivoAdjunto.label" default="Archivo Adjunto" /></td>
                            
                            <td valign="top" class="value"><g:link controller="archivo" action="show" id="${contratoDeAlquilerInstance?.archivoAdjunto?.id}">${contratoDeAlquilerInstance?.archivoAdjunto?.nombre?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="contratoDeAlquiler.listaDetallesDeContrato.label" default="Lista Detalles De Contrato" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${contratoDeAlquilerInstance.listaDetallesDeContrato}" var="l">
                                    <li><g:link controller="detalleContratoAlquiler" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${contratoDeAlquilerInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
