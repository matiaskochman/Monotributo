

<%@ page import="monotributo.DetalleContratoAlquiler" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'detalleContratoAlquiler.label', default: 'DetalleContratoAlquiler')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${detalleContratoAlquilerInstance}">
            <div class="errors">
                <g:renderErrors bean="${detalleContratoAlquilerInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="anio"><g:message code="detalleContratoAlquiler.anio.label" default="Anio" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: detalleContratoAlquilerInstance, field: 'anio', 'errors')}">
                                    <g:textField name="anio" value="${fieldValue(bean: detalleContratoAlquilerInstance, field: 'anio')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="mes"><g:message code="detalleContratoAlquiler.mes.label" default="Mes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: detalleContratoAlquilerInstance, field: 'mes', 'errors')}">
                                    <g:textField name="mes" value="${fieldValue(bean: detalleContratoAlquilerInstance, field: 'mes')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="pago"><g:message code="detalleContratoAlquiler.pago.label" default="Pago" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: detalleContratoAlquilerInstance, field: 'pago', 'errors')}">
                                    <g:checkBox name="pago" value="${detalleContratoAlquilerInstance?.pago}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="montoAlquiler"><g:message code="detalleContratoAlquiler.montoAlquiler.label" default="Monto Alquiler" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: detalleContratoAlquilerInstance, field: 'montoAlquiler', 'errors')}">
                                    <g:textField name="montoAlquiler" value="${fieldValue(bean: detalleContratoAlquilerInstance, field: 'montoAlquiler')}" />
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
