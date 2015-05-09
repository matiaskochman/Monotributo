
<%@ page import="monotributo.Establecimiento" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'establecimiento.label', default: 'Establecimiento')}" />
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
                            <td valign="top" class="name"><g:message code="establecimiento.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: establecimientoInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="establecimiento.tipoEstablecimiento.label" default="Tipo Establecimiento" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: establecimientoInstance, field: "tipoEstablecimiento")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="establecimiento.titularDelInmueble.label" default="Titular Del Inmueble" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: establecimientoInstance, field: "titularDelInmueble")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="establecimiento.activo.label" default="Activo" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${establecimientoInstance?.activo}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="establecimiento.partida.label" default="Partida" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: establecimientoInstance, field: "partida")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="establecimiento.digito.label" default="Digito" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: establecimientoInstance, field: "digito")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="establecimiento.catastro.label" default="Catastro" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: establecimientoInstance, field: "catastro")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="establecimiento.partido.label" default="Partido" /></td>
                            
                            <td valign="top" class="value"><g:link controller="area" action="show" id="${establecimientoInstance?.partido?.id}">${establecimientoInstance?.partido?.descripcion?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="establecimiento.provincia.label" default="Provincia" /></td>
                            
                            <td valign="top" class="value"><g:link controller="area" action="show" id="${establecimientoInstance?.provincia?.id}">${establecimientoInstance?.provincia?.descripcion?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${establecimientoInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
