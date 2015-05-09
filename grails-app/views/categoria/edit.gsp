

<%@ page import="monotributo.Categoria" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
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
            <g:hasErrors bean="${categoriaInstance}">
            <div class="errors">
                <g:renderErrors bean="${categoriaInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${categoriaInstance?.id}" />
                <g:hiddenField name="version" value="${categoriaInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="categoria"><g:message code="categoria.categoria.label" default="Categoria" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: categoriaInstance, field: 'categoria', 'errors')}">
                                    <g:textField name="categoria" value="${categoriaInstance?.categoria}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="topeIngresosBrutos"><g:message code="categoria.topeIngresosBrutos.label" default="Tope Ingresos Brutos" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: categoriaInstance, field: 'topeIngresosBrutos', 'errors')}">
                                    <g:textField name="topeIngresosBrutos" value="${fieldValue(bean: categoriaInstance, field: 'topeIngresosBrutos')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="cantidadMinimaEmpleados"><g:message code="categoria.cantidadMinimaEmpleados.label" default="Cantidad Minima Empleados" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: categoriaInstance, field: 'cantidadMinimaEmpleados', 'errors')}">
                                    <g:textField name="cantidadMinimaEmpleados" value="${fieldValue(bean: categoriaInstance, field: 'cantidadMinimaEmpleados')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="superficieAceptada"><g:message code="categoria.superficieAceptada.label" default="Superficie Aceptada" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: categoriaInstance, field: 'superficieAceptada', 'errors')}">
                                    <g:textField name="superficieAceptada" value="${fieldValue(bean: categoriaInstance, field: 'superficieAceptada')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="energiaElectricaConsumidaAnualmente"><g:message code="categoria.energiaElectricaConsumidaAnualmente.label" default="Energia Electrica Consumida Anualmente" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: categoriaInstance, field: 'energiaElectricaConsumidaAnualmente', 'errors')}">
                                    <g:textField name="energiaElectricaConsumidaAnualmente" value="${fieldValue(bean: categoriaInstance, field: 'energiaElectricaConsumidaAnualmente')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="alquileresAnuales"><g:message code="categoria.alquileresAnuales.label" default="Alquileres Anuales" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: categoriaInstance, field: 'alquileresAnuales', 'errors')}">
                                    <g:textField name="alquileresAnuales" value="${fieldValue(bean: categoriaInstance, field: 'alquileresAnuales')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="impuestoLocacionesPrestacionServicios"><g:message code="categoria.impuestoLocacionesPrestacionServicios.label" default="Impuesto Locaciones Prestacion Servicios" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: categoriaInstance, field: 'impuestoLocacionesPrestacionServicios', 'errors')}">
                                    <g:textField name="impuestoLocacionesPrestacionServicios" value="${fieldValue(bean: categoriaInstance, field: 'impuestoLocacionesPrestacionServicios')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="impuestoVentaCosasMuebles"><g:message code="categoria.impuestoVentaCosasMuebles.label" default="Impuesto Venta Cosas Muebles" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: categoriaInstance, field: 'impuestoVentaCosasMuebles', 'errors')}">
                                    <g:textField name="impuestoVentaCosasMuebles" value="${fieldValue(bean: categoriaInstance, field: 'impuestoVentaCosasMuebles')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="aportesAlSipa"><g:message code="categoria.aportesAlSipa.label" default="Aportes Al Sipa" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: categoriaInstance, field: 'aportesAlSipa', 'errors')}">
                                    <g:textField name="aportesAlSipa" value="${fieldValue(bean: categoriaInstance, field: 'aportesAlSipa')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="aporteObraSocial"><g:message code="categoria.aporteObraSocial.label" default="Aporte Obra Social" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: categoriaInstance, field: 'aporteObraSocial', 'errors')}">
                                    <g:textField name="aporteObraSocial" value="${fieldValue(bean: categoriaInstance, field: 'aporteObraSocial')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="actividad"><g:message code="categoria.actividad.label" default="Actividad" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: categoriaInstance, field: 'actividad', 'errors')}">
                                    <g:select name="actividad.id" from="${monotributo.Actividad.list()}" optionValue="descripcion" optionKey="id" value="${categoriaInstance?.actividad?.id}" noSelection="['null': '']" />
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
