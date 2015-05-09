

<%@ page import="monotributo.Vehiculo" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'vehiculo.label', default: 'Vehiculo')}" />
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
            <g:hasErrors bean="${vehiculoInstance}">
            <div class="errors">
                <g:renderErrors bean="${vehiculoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${vehiculoInstance?.id}" />
                <g:hiddenField name="version" value="${vehiculoInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="dominio"><g:message code="vehiculo.dominio.label" default="Dominio" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: vehiculoInstance, field: 'dominio', 'errors')}">
                                    <g:textField name="dominio" value="${vehiculoInstance?.dominio}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="condicionVehiculo"><g:message code="vehiculo.condicionVehiculo.label" default="Condicion Vehiculo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: vehiculoInstance, field: 'condicionVehiculo', 'errors')}">
                                    <g:textField name="condicionVehiculo" value="${vehiculoInstance?.condicionVehiculo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="montoAlquiler"><g:message code="vehiculo.montoAlquiler.label" default="Monto Alquiler" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: vehiculoInstance, field: 'montoAlquiler', 'errors')}">
                                    <g:textField name="montoAlquiler" value="${fieldValue(bean: vehiculoInstance, field: 'montoAlquiler')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="aseguradora"><g:message code="vehiculo.aseguradora.label" default="Aseguradora" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: vehiculoInstance, field: 'aseguradora', 'errors')}">
                                    <g:select name="aseguradora.id" from="${monotributo.Aseguradora.list()}" optionKey="id" value="${vehiculoInstance?.aseguradora?.id}" noSelection="['null': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="montoPrima"><g:message code="vehiculo.montoPrima.label" default="Monto Prima" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: vehiculoInstance, field: 'montoPrima', 'errors')}">
                                    <g:textField name="montoPrima" value="${fieldValue(bean: vehiculoInstance, field: 'montoPrima')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="numeroDePoliza"><g:message code="vehiculo.numeroDePoliza.label" default="Numero De Poliza" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: vehiculoInstance, field: 'numeroDePoliza', 'errors')}">
                                    <g:textField name="numeroDePoliza" value="${vehiculoInstance?.numeroDePoliza}" />
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
