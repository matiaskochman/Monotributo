
<%@ page import="monotributo.Vehiculo" %>
	    <script>
	       	javascript:recargarTabs();
		</script>
        <g:setProvider library="jquery"/>

        <div id="showVehiculos">
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
                <g:formRemote name="edit" url="[controller:'vehiculo', action:'edit2']" update="showVehiculos">
                    <g:hiddenField name="id" value="${vehiculoInstance?.id}" />
					<span class="button"><g:submitButton name="edit" class="edit" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>                    
                </g:formRemote>
                <g:formRemote name="delete" url="[controller:'vehiculo', action:'delete2']" update="showVehiculos">
                    <g:hiddenField name="id" value="${vehiculoInstance?.id}" />
                    <span class="button"><g:actionSubmit class="delete" action="delete2" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:formRemote>
                <g:formRemote name="list" url="[controller:'vehiculo', action:'list2']" update="showVehiculos">
                    <span class="button"><g:submitButton name="list" class="list" value="${message(code: 'default.button.list.label', default: 'List')}"  /></span>
                </g:formRemote>
            </div>
        </div>
