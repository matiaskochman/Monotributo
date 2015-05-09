<%@ page import="monotributo.Domicilio" %>
<%@ page import="constants.AreaTypeConstants" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <g:set var="entityName" value="${message(code: 'domicilio.label', default: 'Domicilio')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
        <g:javascript library="prototype" />
    </head>
        <g:setProvider library="jquery"/>
		        
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
    <body>
        <div id="createDomicilioForm">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${domicilioInstance}">
            <div class="errors">
                <g:renderErrors bean="${domicilioInstance}" as="list" />
            </div>
            </g:hasErrors>
	          <g:formRemote
	            name="createDomicilio"
	            url="[controller:'domicilio', action:'save2']"
	            update="createDomicilioForm">            
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tipoDeDomicilio"><g:message code="domicilio.tipoDeDomicilio.label" default="Tipo De Domicilio" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: domicilioInstance, field: 'tipoDeDomicilio', 'errors')}">
									<g:select
										id="domicilio"
										name="tipoDeDomicilio"
										from="${constants.TipoDeDomicilio.getTipoDeDomicilio()}"
										value="${domicilioInstance?.tipoDeDomicilio}" 
										noSelection="['null': '']" >
									</g:select>             
                                    
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="calle"><g:message code="domicilio.calle.label" default="Calle" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: domicilioInstance, field: 'calle', 'errors')}">
                                    <g:textField name="calle" value="${domicilioInstance?.calle}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="numero"><g:message code="domicilio.numero.label" default="Numero" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: domicilioInstance, field: 'numero', 'errors')}">
                                    <g:textField name="numero" value="${domicilioInstance?.numero}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sector"><g:message code="domicilio.sector.label" default="Sector" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: domicilioInstance, field: 'sector', 'errors')}">
                                    <g:textField name="sector" value="${domicilioInstance?.sector}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="torre"><g:message code="domicilio.torre.label" default="Torre" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: domicilioInstance, field: 'torre', 'errors')}">
                                    <g:textField name="torre" value="${domicilioInstance?.torre}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="piso"><g:message code="domicilio.piso.label" default="Piso" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: domicilioInstance, field: 'piso', 'errors')}">
                                    <g:textField name="piso" value="${domicilioInstance?.piso}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="deptoLocalOficina"><g:message code="domicilio.deptoLocalOficina.label" default="Depto Local Oficina" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: domicilioInstance, field: 'deptoLocalOficina', 'errors')}">
                                    <g:textField name="deptoLocalOficina" value="${domicilioInstance?.deptoLocalOficina}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="manzana"><g:message code="domicilio.manzana.label" default="Manzana" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: domicilioInstance, field: 'manzana', 'errors')}">
                                    <g:textField name="manzana" value="${domicilioInstance?.manzana}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="provincia"><g:message code="domicilio.provincia.label" default="Provincia" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: domicilioInstance, field: 'provincia', 'errors')}">
                                    <g:select name="provincia" 
                                    	from="${monotributo.Area.findAllByTipo(AreaTypeConstants.PROVINCIA)}" 
										onchange="${remoteFunction(controller:'domicilio', 
																	action:'listarPartidos',
																	params:'\'idProvincia=\' + escape(this.value)',
																	onComplete:'updatePartidoDropdown(e)' )}"
                                    	optionKey="id" 
                                    	optionValue="descripcion" 
                                    	value="${domicilioInstance?.provincia}" 
                                    	noSelection="['null': '']" >
                                    	<option>           </option>
	                                </g:select>
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="partido"><g:message code="domicilio.partido.label" default="Partido" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: domicilioInstance, field: 'partido', 'errors')}">
	                               <g:select name="partido" 
	                                	from="${partidos}" 
										onchange="${remoteFunction(controller:'domicilio', 
																	action:'listarLocalidades',
																	params:'\'idPartido=\' + escape(this.value)',
																	onComplete:'updateLocalidadDropdown(e)' )}"
	                                	optionKey="id" 
	                                	optionValue="descripcion" 
	                                	value="${domicilioInstance?.partido}" 
	                                	noSelection="['null': '']" >
	                                	<option>           </option>
	                                </g:select>
                                </td>
                            </tr>
                        
                   
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="localidad"><g:message code="domicilio.localidad.label" default="Localidad" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: domicilioInstance, field: 'localidad', 'errors')}">
	                               <g:select name="localidad" 
	                                	from="${localidades}" 
	                                	optionKey="id" 
	                                	optionValue="descripcion" 
	                                	value="${domicilioInstance?.localidad}" 
	                                	noSelection="['null': '']" >
                                    	<option>           </option>
	                                </g:select>
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="codigoPostal"><g:message code="domicilio.codigoPostal.label" default="Codigo Postal" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: domicilioInstance, field: 'codigoPostal', 'errors')}">
                                    <g:textField name="codigoPostal" value="${domicilioInstance?.codigoPostal}" />
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
    </body>
</html>
