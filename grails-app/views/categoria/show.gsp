
<%@ page import="monotributo.Categoria" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
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
                            <td valign="top" class="name"><g:message code="categoria.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: categoriaInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="categoria.categoria.label" default="Categoria" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: categoriaInstance, field: "categoria")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="categoria.topeIngresosBrutos.label" default="Tope Ingresos Brutos" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: categoriaInstance, field: "topeIngresosBrutos")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="categoria.cantidadMinimaEmpleados.label" default="Cantidad Minima Empleados" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: categoriaInstance, field: "cantidadMinimaEmpleados")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="categoria.superficieAceptada.label" default="Superficie Aceptada" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: categoriaInstance, field: "superficieAceptada")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="categoria.energiaElectricaConsumidaAnualmente.label" default="Energia Electrica Consumida Anualmente" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: categoriaInstance, field: "energiaElectricaConsumidaAnualmente")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="categoria.alquileresAnuales.label" default="Alquileres Anuales" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: categoriaInstance, field: "alquileresAnuales")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="categoria.impuestoLocacionesPrestacionServicios.label" default="Impuesto Locaciones Prestacion Servicios" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: categoriaInstance, field: "impuestoLocacionesPrestacionServicios")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="categoria.impuestoVentaCosasMuebles.label" default="Impuesto Venta Cosas Muebles" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: categoriaInstance, field: "impuestoVentaCosasMuebles")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="categoria.aportesAlSipa.label" default="Aportes Al Sipa" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: categoriaInstance, field: "aportesAlSipa")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="categoria.aporteObraSocial.label" default="Aporte Obra Social" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: categoriaInstance, field: "aporteObraSocial")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="categoria.actividad.label" default="Actividad" /></td>
                            
                            <td valign="top" class="value"><g:link controller="actividad" action="show" id="${categoriaInstance?.actividad?.id}">${categoriaInstance?.actividad?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${categoriaInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
