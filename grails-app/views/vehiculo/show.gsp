
<%@ page import="monotributo.Vehiculo" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'vehiculo.label', default: 'Vehiculo')}" />
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
                            <td valign="top" class="name"><g:message code="vehiculo.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: vehiculoInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="vehiculo.dominio.label" default="Dominio" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: vehiculoInstance, field: "dominio")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="vehiculo.condicionVehiculo.label" default="Condicion Vehiculo" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: vehiculoInstance, field: "condicionVehiculo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="vehiculo.montoAlquiler.label" default="Monto Alquiler" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: vehiculoInstance, field: "montoAlquiler")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="vehiculo.aseguradora.label" default="Aseguradora" /></td>
                            
                            <td valign="top" class="value"><g:link controller="aseguradora" action="show" id="${vehiculoInstance?.aseguradora?.id}">${vehiculoInstance?.aseguradora?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="vehiculo.montoPrima.label" default="Monto Prima" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: vehiculoInstance, field: "montoPrima")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="vehiculo.numeroDePoliza.label" default="Numero De Poliza" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: vehiculoInstance, field: "numeroDePoliza")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${vehiculoInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
