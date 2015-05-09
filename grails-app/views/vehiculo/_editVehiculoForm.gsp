
<%@ page import="monotributo.Vehiculo" %>
        <g:setProvider library="jquery"/>
        <div id="editVehiculoForm">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${vehiculoInstance}">
            <div class="errors">
                <g:renderErrors bean="${vehiculoInstance}" as="list" />
            </div>
            </g:hasErrors>
	        <g:formRemote
	            name="editGrupoFamiliar"
	            url="[controller:'vehiculo', action:'update2']"
	            update="editVehiculoForm"
	            enctype="multipart/form">            
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
                    <span class="button"><g:actionSubmit class="save" action="update2" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                </div>
            </g:formRemote>
        </div>
