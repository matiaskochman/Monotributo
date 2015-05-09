        <g:setProvider library="jquery"/>
	    <script>
	       	javascript:recargarTabs();
		</script>
        <div id="showTituloProfesional">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tituloProfesional.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: tituloProfesionalInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tituloProfesional.titulo.label" default="Titulo" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: tituloProfesionalInstance, field: "titulo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tituloProfesional.colegioProfesional.label" default="Colegio Profesional" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: tituloProfesionalInstance, field: "colegioProfesional.colegioProfesional")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tituloProfesional.fechaMatriculacion.label" default="Fecha Matriculacion" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${tituloProfesionalInstance?.fechaMatriculacion}" /></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:formRemote name="edit" url="[controller:'tituloProfesional', action:'edit2']" update="showTituloProfesional">
                    <g:hiddenField name="id" value="${tituloProfesionalInstance?.id}" />
					<span class="button"><g:submitButton name="edit" class="edit" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>                    
                </g:formRemote>
                <g:formRemote name="delete" url="[controller:'tituloProfesional', action:'delete2']" update="showTituloProfesional">
                    <g:hiddenField name="id" value="${tituloProfesionalInstance?.id}" />
                    <span class="button"><g:actionSubmit class="delete" action="delete2" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:formRemote>
                <g:formRemote name="list" url="[controller:'tituloProfesional', action:'list2']" update="showTituloProfesional">
                    <span class="button"><g:submitButton name="list" class="list" value="${message(code: 'default.button.list.label', default: 'List')}"  /></span>
                </g:formRemote>
                
            </div>
        </div>
