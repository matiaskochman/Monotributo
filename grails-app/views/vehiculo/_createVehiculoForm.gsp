<%@ page import="monotributo.Vehiculo" %>
<%@ page import="constants.TipoCondicionVehiculo" %>

		<g:setProvider library="jquery"/>
		
        <div id="createVehiculoForm">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${vehiculoInstance}">
            <div class="errors">
                <g:renderErrors bean="${vehiculoInstance}" as="list" />
            </div>
            </g:hasErrors>
	        <g:formRemote
	            name="createVehiculo"
	            url="[controller:'vehiculo', action:'save2']"
	            update="createVehiculoForm">            
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
									<g:select
										id="condicionVehiculo"
										name="condicionVehiculo"
										from="${constants.TipoCondicionVehiculo.getTiposCondicionVehiculo()}"
										value="${vehiculoInstance?.condicionVehiculo}" 
										noSelection="['null': '']" >
									</g:select>             
                                    
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
                                    <g:select 
                                    	name="aseguradora.id" 
                                    	from="${monotributo.Aseguradora.list()}" 
                                    	optionKey="id" 
                                    	optionValue="nombre"
                                    	value="${vehiculoInstance?.aseguradora?.id}" 
                                    	noSelection="['null': '']" />
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
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:formRemote>
        </div>
