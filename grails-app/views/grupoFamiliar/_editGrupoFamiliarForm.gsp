<%@ page import="constants.ParentescoConstants" %>
<%@ page import="constants.TipoDeDocumentoConstants" %>
<%@ page import="monotributo.GrupoFamiliar" %>
        <g:setProvider library="jquery"/>
		<calendar:resources lang="en" theme="tiger"/>         
        <div id="editGrupoFamiliarForm">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${grupoFamiliarInstance}">
            <div class="errors">
                <g:renderErrors bean="${grupoFamiliarInstance}" as="list" />
            </div>
            </g:hasErrors>
	        <g:formRemote
	            name="editGrupoFamiliar"
	            url="[controller:'grupoFamiliar', action:'update2']"
	            update="editGrupoFamiliarForm"
	            enctype="multipart/form">            
			            
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nombre"><g:message code="grupoFamiliar.nombre.label" default="Nombre" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: grupoFamiliarInstance, field: 'nombre', 'errors')}">
                                    <g:textField name="nombre" value="${grupoFamiliarInstance?.nombre}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="apellido"><g:message code="grupoFamiliar.apellido.label" default="Apellido" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: grupoFamiliarInstance, field: 'apellido', 'errors')}">
                                    <g:textField name="apellido" value="${grupoFamiliarInstance?.apellido}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="parentesco"><g:message code="grupoFamiliar.parentesco.label" default="Parentesco" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: grupoFamiliarInstance, field: 'parentesco', 'errors')}">
                                    <g:select name="parentesco" 
                                    	from="${ParentescoConstants.getTipoDeParentesco()}" 
                                    	value="${grupoFamiliarInstance?.parentesco}" 
                                    	noSelection="['null': '']" >
                                    	<option>           </option>
	                                </g:select>
                                    
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tipoDeDocumento"><g:message code="grupoFamiliar.tipoDeDocumento.label" default="Tipo De Documento" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: grupoFamiliarInstance, field: 'tipoDeDocumento', 'errors')}">
                                    <g:select name="tipoDeDocumento" 
                                    	from="${TipoDeDocumentoConstants.getTipoDeDocumento()}" 
                                    	value="${grupoFamiliarInstance?.tipoDeDocumento}" 
                                    	noSelection="['null': '']" >
                                    	<option>           </option>
	                                </g:select>
                                    
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="numeroDeDocumento"><g:message code="grupoFamiliar.numeroDeDocumento.label" default="Numero De Documento" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: grupoFamiliarInstance, field: 'numeroDeDocumento', 'errors')}">
                                    <g:textField name="numeroDeDocumento" value="${grupoFamiliarInstance?.numeroDeDocumento}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fechaDeNacimiento"><g:message code="grupoFamiliar.fechaDeNacimiento.label" default="Fecha De Nacimiento" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: grupoFamiliarInstance, field: 'fechaDeNacimiento', 'errors')}">
									<g:datePicker name="fechaDeNacimiento" precision="day" value="${grupoFamiliarInstance?.fechaDeNacimiento}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="archivoAdjunto"><g:message code="grupoFamiliar.archivoAdjunto.label" default="Archivo Adjunto" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: grupoFamiliarInstance, field: 'archivoAdjunto', 'errors')}">
									<input type="file" name="myFile" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <g:hiddenField name="id" value="${grupoFamiliarInstance?.id}" />
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:formRemote>
        </div>
