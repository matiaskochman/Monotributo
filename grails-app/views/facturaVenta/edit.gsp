

<%@ page import="monotributo.FacturaVenta" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'facturaVenta.label', default: 'FacturaVenta')}" />
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
            <g:hasErrors bean="${facturaVentaInstance}">
            <div class="errors">
                <g:renderErrors bean="${facturaVentaInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${facturaVentaInstance?.id}" />
                <g:hiddenField name="version" value="${facturaVentaInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fecha"><g:message code="facturaVenta.fecha.label" default="Fecha" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: facturaVentaInstance, field: 'fecha', 'errors')}">
                                    <g:datePicker name="fecha" precision="day" value="${facturaVentaInstance?.fecha}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="importe"><g:message code="facturaVenta.importe.label" default="Importe" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: facturaVentaInstance, field: 'importe', 'errors')}">
                                    <g:textField name="importe" value="${fieldValue(bean: facturaVentaInstance, field: 'importe')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="numeroFactura"><g:message code="facturaVenta.numeroFactura.label" default="Numero Factura" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: facturaVentaInstance, field: 'numeroFactura', 'errors')}">
                                    <g:textField name="numeroFactura" value="${fieldValue(bean: facturaVentaInstance, field: 'numeroFactura')}" />
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
