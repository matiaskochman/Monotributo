        <g:setProvider library="jquery"/>
	    <script>
	       	javascript:recargarTabs();
		</script>
        <div id="showGrupoFamiliar">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="grupoFamiliar.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: grupoFamiliarInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="grupoFamiliar.nombre.label" default="Nombre" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: grupoFamiliarInstance, field: "nombre")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="grupoFamiliar.apellido.label" default="Apellido" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: grupoFamiliarInstance, field: "apellido")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="grupoFamiliar.parentesco.label" default="Parentesco" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: grupoFamiliarInstance, field: "parentesco")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="grupoFamiliar.tipoDeDocumento.label" default="Tipo De Documento" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: grupoFamiliarInstance, field: "tipoDeDocumento")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="grupoFamiliar.numeroDeDocumento.label" default="Numero De Documento" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: grupoFamiliarInstance, field: "numeroDeDocumento")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="grupoFamiliar.fechaDeNacimiento.label" default="Fecha De Nacimiento" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${grupoFamiliarInstance?.fechaDeNacimiento}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="grupoFamiliar.archivoAdjunto.label" default="Archivo Adjunto" /></td>
                            
                            <td valign="top" class="value"><g:link controller="archivo" action="show" id="${grupoFamiliarInstance?.archivoAdjunto?.id}">${grupoFamiliarInstance?.archivoAdjunto?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:formRemote name="edit" url="[controller:'grupoFamiliar', action:'edit2']" update="showGrupoFamiliar">
                    <g:hiddenField name="id" value="${grupoFamiliarInstance?.id}" />
					<span class="button"><g:submitButton name="edit" class="edit" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>                    
                </g:formRemote>
                <g:formRemote name="delete" url="[controller:'grupoFamiliar', action:'delete2']" update="showGrupoFamiliar">
                    <g:hiddenField name="id" value="${grupoFamiliarInstance?.id}" />
                    <span class="button"><g:actionSubmit class="delete" action="delete2" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:formRemote>
                <g:formRemote name="list" url="[controller:'grupoFamiliar', action:'list2']" update="showGrupoFamiliar">
                    <span class="button"><g:submitButton name="list" class="list" value="${message(code: 'default.button.list.label', default: 'List')}"  /></span>
                </g:formRemote>
                
            </div>
        </div>
