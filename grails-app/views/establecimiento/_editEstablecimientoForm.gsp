<%@ page import="monotributo.Establecimiento" %>
        <g:setProvider library="jquery"/>
        <div id="editEstablecimientoForm">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${establecimientoInstance}">
            <div class="errors">
                <g:renderErrors bean="${establecimientoInstance}" as="list" />
            </div>
            </g:hasErrors>
	        <g:formRemote
	           method="post"
	           name="editEstablecimientoForm"
	           url="[controller:'establecimiento', action:'update2']"
	           update="editEstablecimientoForm">            
            
                <g:hiddenField name="id" value="${establecimientoInstance?.id}" />
                <g:hiddenField name="version" value="${establecimientoInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="tipoEstablecimiento"><g:message code="establecimiento.tipoEstablecimiento.label" default="Tipo Establecimiento" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: establecimientoInstance, field: 'tipoEstablecimiento', 'errors')}">
                                    <g:textField name="tipoEstablecimiento" value="${establecimientoInstance?.tipoEstablecimiento}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="titularDelInmueble"><g:message code="establecimiento.titularDelInmueble.label" default="Titular Del Inmueble" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: establecimientoInstance, field: 'titularDelInmueble', 'errors')}">
                                    <g:textField name="titularDelInmueble" value="${establecimientoInstance?.titularDelInmueble}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="activo"><g:message code="establecimiento.activo.label" default="Activo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: establecimientoInstance, field: 'activo', 'errors')}">
                                    <g:checkBox name="activo" value="${establecimientoInstance?.activo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="partida"><g:message code="establecimiento.partida.label" default="Partida" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: establecimientoInstance, field: 'partida', 'errors')}">
                                    <g:textField name="partida" value="${establecimientoInstance?.partida}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="digito"><g:message code="establecimiento.digito.label" default="Digito" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: establecimientoInstance, field: 'digito', 'errors')}">
                                    <g:textField name="digito" value="${establecimientoInstance?.digito}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="catastro"><g:message code="establecimiento.catastro.label" default="Catastro" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: establecimientoInstance, field: 'catastro', 'errors')}">
                                    <g:textField name="catastro" value="${establecimientoInstance?.catastro}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="partido"><g:message code="establecimiento.partido.label" default="Partido" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: establecimientoInstance, field: 'partido', 'errors')}">
                                    <g:select name="partido.id" from="${monotributo.Area.list()}" optionKey="id" value="${establecimientoInstance?.partido?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="provincia"><g:message code="establecimiento.provincia.label" default="Provincia" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: establecimientoInstance, field: 'provincia', 'errors')}">
                                    <g:select name="provincia.id" from="${monotributo.Area.list()}" optionKey="id" value="${establecimientoInstance?.provincia?.id}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button">
                    	<g:actionSubmit name="edit" class="edit" action="update2" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                    </span>
                </div>
            </g:formRemote>
            <g:formRemote name="list" url="[controller:'establecimiento', action:'list2']" update="showEstablecimiento">
                <span class="button"><g:submitButton name="cancel" class="cancel" value="${message(code: 'default.button.cancel.label', default: 'Cancel')}"  /></span>
            </g:formRemote>
            
        </div>
