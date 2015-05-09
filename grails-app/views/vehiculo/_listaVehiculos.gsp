<%@ page import="monotributo.Vehiculo" %>
        <g:setProvider library="jquery"/>
	    <script>
	       	javascript:recargarTabs();
		</script>
        <div id="listaVehiculos">
	        <div class="nav">
	            <span class="menuButton">
	            	<g:remoteLink action="create2" update="listaVehiculos" ><g:message code="default.new.label" args="[entityName]" /></g:remoteLink>
	            </span>
	        </div>
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'vehiculo.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="dominio" title="${message(code: 'vehiculo.dominio.label', default: 'Dominio')}" />
                        
                            <g:sortableColumn property="condicionVehiculo" title="${message(code: 'vehiculo.condicionVehiculo.label', default: 'Condicion Vehiculo')}" />
                        
                            <g:sortableColumn property="montoAlquiler" title="${message(code: 'vehiculo.montoAlquiler.label', default: 'Monto Alquiler')}" />
                        
                            <th><g:message code="vehiculo.aseguradora.label" default="Aseguradora" /></th>
                        
                            <g:sortableColumn property="montoPrima" title="${message(code: 'vehiculo.montoPrima.label', default: 'Monto Prima')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${vehiculoInstanceList}" status="i" var="vehiculoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
							<td><g:remoteLink action="show2" id="${vehiculoInstance.id}" update="listaVehiculos" on404="alert('not found');">${fieldValue(bean: vehiculoInstance, field: "id")}</g:remoteLink></td>                            
                        
                            <td>${fieldValue(bean: vehiculoInstance, field: "dominio")}</td>
                        
                            <td>${fieldValue(bean: vehiculoInstance, field: "condicionVehiculo")}</td>
                        
                            <td>${fieldValue(bean: vehiculoInstance, field: "montoAlquiler")}</td>
                        
                            <td>${fieldValue(bean: vehiculoInstance, field: "aseguradora")}</td>
                        
                            <td>${fieldValue(bean: vehiculoInstance, field: "montoPrima")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
	     		<g:remotePaginate update="listaVehiculos" total="${vehiculoInstanceTotal}" />
            </div>
        </div>
