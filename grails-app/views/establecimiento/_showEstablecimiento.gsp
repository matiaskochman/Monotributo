<%@ page import="monotributo.Establecimiento" %>
        <g:setProvider library="jquery"/>
	    <script>
	       	javascript:recargarTabs();
		</script>
        <div id="showEstablecimiento">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="establecimiento.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: establecimientoInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="establecimiento.tipoEstablecimiento.label" default="Tipo Establecimiento" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: establecimientoInstance, field: "tipoEstablecimiento")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="establecimiento.titularDelInmueble.label" default="Titular Del Inmueble" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: establecimientoInstance, field: "titularDelInmueble")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="establecimiento.activo.label" default="Activo" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${establecimientoInstance?.activo}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="establecimiento.partida.label" default="Partida" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: establecimientoInstance, field: "partida")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="establecimiento.digito.label" default="Digito" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: establecimientoInstance, field: "digito")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="establecimiento.catastro.label" default="Catastro" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: establecimientoInstance, field: "catastro")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="establecimiento.partido.label" default="Partido" /></td>
                            
                            <td valign="top" class="value"><g:link controller="area" action="show" id="${establecimientoInstance?.partido?.id}">${establecimientoInstance?.partido?.descripcion?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="establecimiento.provincia.label" default="Provincia" /></td>
                            
                            <td valign="top" class="value"><g:link controller="area" action="show" id="${establecimientoInstance?.provincia?.id}">${establecimientoInstance?.provincia?.descripcion?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:formRemote name="edit" url="[controller:'establecimiento', action:'edit2']" update="showEstablecimiento">
                    <g:hiddenField name="id" value="${establecimientoInstance?.id}" />
					<span class="button"><g:submitButton name="edit" class="edit" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>                    
                </g:formRemote>
                <g:formRemote name="delete" url="[controller:'establecimiento', action:'delete2']" update="showEstablecimiento">
                    <g:hiddenField name="id" value="${establecimientoInstance?.id}" />
                    <span class="button"><g:actionSubmit class="delete" action="delete2" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:formRemote>
                <g:formRemote name="list" url="[controller:'establecimiento', action:'list2']" update="showEstablecimiento">
                    <span class="button"><g:submitButton name="list" class="list" value="${message(code: 'default.button.list.label', default: 'List')}"  /></span>
                </g:formRemote>
            </div>
        </div>
