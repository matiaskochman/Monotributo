
<%@ page import="monotributo.Establecimiento" %>
<%@ page import="constants.AreaTypeConstants" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <g:javascript library="prototype" />
		<g:javascript>
			function updatePartidoDropdown(e) {
				// The response comes back as a bunch-o-JSON
				var partidos = eval("(" + e.responseText + ")")	// evaluate JSON
		
				if (partidos) {
					var rselect = document.getElementById('partido')
		
					// Clear all previous options
					var l = rselect.length
		
					while (l > 0) {
						l--
						rselect.remove(l)
					}
					/*para crear una opcion en blanco*/
					/*
					*/
					var opt = document.createElement('option');
					opt.text = "   "
					opt.value = 10000
				  	try {
				    	rselect.add(opt, null) // standards compliant; doesn't work in IE
				  	}
			  		catch(ex) {
			    		rselect.add(opt) // IE only
			  		}
					// Rebuild the select
					for (var i=0; i < partidos.length; i++) {
						var partido = partidos[i]
						var opt = document.createElement('option');
						opt.text = partido.descripcion
						opt.value = partido.id
					  	try {
					    	rselect.add(opt, null) // standards compliant; doesn't work in IE
					  	}
				  		catch(ex) {
				    		rselect.add(opt) // IE only
				  		}
					}
				}
			}
		
			function updateLocalidadDropdown(e) {
				// The response comes back as a bunch-o-JSON
				var localidades = eval("(" + e.responseText + ")")	// evaluate JSON
		
				if (localidades) {
					var rselect = document.getElementById('localidad')
		
					// Clear all previous options
					var l = rselect.length
		
					while (l > 0) {
						l--
						rselect.remove(l)
					}
		
					// Rebuild the select
					for (var i=0; i < localidades.length; i++) {
						var localidad = localidades[i]
						var opt = document.createElement('option');
						opt.text = localidad.descripcion
						opt.value = localidad.id
					  	try {
					    	rselect.add(opt, null) // standards compliant; doesn't work in IE
					  	}
				  		catch(ex) {
				    		rselect.add(opt) // IE only
				  		}
					}
				}
			}
			
			// This is called when the page loads to initialize city
			//var zselect = document.getElementById('country.name')
			//var zopt = zselect.options[zselect.selectedIndex]
			//${remoteFunction(controller:"country", action:"ajaxGetCities", params:"'id=' + zopt.value", onComplete:"updateCity(e)")}
		
		</g:javascript>		        
    </head>
    <body>
        <g:setProvider library="jquery"/>
        <div id="createEstablecimientoForm">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${establecimientoInstance}">
            <div class="errors">
                <g:renderErrors bean="${establecimientoInstance}" as="list" />
            </div>
            </g:hasErrors>
	        <g:formRemote
	           name="createEstablecimiento"
	           url="[controller:'establecimiento', action:'save2']"
	           update="createEstablecimientoForm">            
            
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tipoEstablecimiento"><g:message code="establecimiento.tipoEstablecimiento.label" default="Tipo Establecimiento" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: establecimientoInstance, field: 'tipoEstablecimiento', 'errors')}">
									<g:select
										id="tipoEstablecimiento"
										name="tipoEstablecimiento"
										from="${constants.TipoDeEstablecimiento.getTipoDeEstablecimiento()}"
										value="${establecimientoInstance?.tipoEstablecimiento}" 
										noSelection="['null': '']" >
									</g:select>             
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
                                    <label for="provincia"><g:message code="establecimiento.provincia.label" default="Provincia" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: establecimientoInstance, field: 'provincia', 'errors')}">
                                    <g:select name="provincia" 
                                    	from="${monotributo.Area.findAllByTipo(AreaTypeConstants.PROVINCIA)}" 
										onchange="${remoteFunction(controller:'domicilio', 
																	action:'listarPartidos',
																	params:'\'idProvincia=\' + escape(this.value)',
																	onComplete:'updatePartidoDropdown(e)' )}"
                                    	optionKey="id" 
                                    	optionValue="descripcion" 
                                    	value="${establecimientoInstance?.provincia}" 
                                    	noSelection="['null': '']" >
                                    	<option>           </option>
	                                </g:select>
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="partido"><g:message code="establecimiento.partido.label" default="Partido" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: establecimientoInstance, field: 'partido', 'errors')}">
	                               <g:select name="partido" 
	                                	from="${partidos}" 
	                                	optionKey="id" 
	                                	optionValue="descripcion" 
	                                	value="${establecimientoInstance?.partido}" 
	                                	noSelection="['null': '']" >
	                                	<option>           </option>
	                                </g:select>
                                </td>
                            </tr>
                        	<tr height="50">
                        		<td></td>
                        	</tr>
                        	<tr>
                        		<td>Contrato de Alquiler</td>
                        	</tr>
                        	
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:formRemote>
        </div>
    </body>
</html>

