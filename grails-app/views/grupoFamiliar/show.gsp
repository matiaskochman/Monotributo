
<%@ page import="monotributo.GrupoFamiliar" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'grupoFamiliar.label', default: 'GrupoFamiliar')}" />
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
                            <td valign="top" class="name"><g:message code="grupoFamiliar.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: grupoFamiliarInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="grupoFamiliar.nombre.label" default="Nombre" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: grupoFamiliarInstance, field: "nombre")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="grupoFamiliar.apellido.label" default="Apellido" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: grupoFamiliarInstance, field: "apellido")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="grupoFamiliar.parentesco.label" default="Parentesco" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: grupoFamiliarInstance, field: "parentesco")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="grupoFamiliar.tipoDeDocumento.label" default="Tipo De Documento" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: grupoFamiliarInstance, field: "tipoDeDocumento")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="grupoFamiliar.numeroDeDocumento.label" default="Numero De Documento" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: grupoFamiliarInstance, field: "numeroDeDocumento")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="grupoFamiliar.fechaDeNacimiento.label" default="Fecha De Nacimiento" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${grupoFamiliarInstance?.fechaDeNacimiento}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="grupoFamiliar.archivoAdjunto.label" default="Archivo Adjunto" /></td>
                            
                            <td valign="top" class="value"><g:link controller="archivo" action="show" id="${grupoFamiliarInstance?.archivoAdjunto?.id}">${grupoFamiliarInstance?.archivoAdjunto?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${grupoFamiliarInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
