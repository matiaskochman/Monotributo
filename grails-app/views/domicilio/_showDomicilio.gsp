
<%@ page import="monotributo.Domicilio" %>
        <g:setProvider library="jquery"/>
	    <script>
	       	javascript:recargarTabs();
		</script>
        <div id="showDomicilio">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="domicilio.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: domicilioInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="domicilio.tipoDeDomicilio.label" default="Tipo De Domicilio" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: domicilioInstance, field: "tipoDeDomicilio")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="domicilio.calle.label" default="Calle" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: domicilioInstance, field: "calle")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="domicilio.numero.label" default="Numero" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: domicilioInstance, field: "numero")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="domicilio.sector.label" default="Sector" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: domicilioInstance, field: "sector")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="domicilio.torre.label" default="Torre" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: domicilioInstance, field: "torre")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="domicilio.piso.label" default="Piso" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: domicilioInstance, field: "piso")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="domicilio.deptoLocalOficina.label" default="Depto Local Oficina" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: domicilioInstance, field: "deptoLocalOficina")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="domicilio.manzana.label" default="Manzana" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: domicilioInstance, field: "manzana")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="domicilio.provincia.label" default="Provincia" /></td>
                            
                            <td valign="top" class="value"><g:link controller="area" action="show" id="${domicilioInstance?.provincia?.id}">${domicilioInstance?.provincia?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="domicilio.partido.label" default="Partido" /></td>
                            
                            <td valign="top" class="value"><g:link controller="area" action="show" id="${domicilioInstance?.partido?.id}">${domicilioInstance?.partido?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="domicilio.localidad.label" default="Localidad" /></td>
                            
                            <td valign="top" class="value"><g:link controller="area" action="show" id="${domicilioInstance?.localidad?.id}">${domicilioInstance?.localidad?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="domicilio.codigoPostal.label" default="Codigo Postal" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: domicilioInstance, field: "codigoPostal")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:formRemote name="edit" url="[controller:'domicilio', action:'edit2']" update="showDomicilio">
                    <g:hiddenField name="id" value="${domicilioInstance?.id}" />
					<span class="button"><g:submitButton name="edit" class="edit" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>                    
                </g:formRemote>
                <g:formRemote name="delete" url="[controller:'domicilio', action:'delete2']" update="showDomicilio">
                    <g:hiddenField name="id" value="${domicilioInstance?.id}" />
                    <span class="button"><g:actionSubmit class="delete" action="delete2" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:formRemote>
                <g:formRemote name="list" url="[controller:'domicilio', action:'list2']" update="showDomicilio">
                    <span class="button"><g:submitButton name="list" class="list" value="${message(code: 'default.button.list.label', default: 'List')}"  /></span>
                </g:formRemote>
                
            </div>
        </div>
