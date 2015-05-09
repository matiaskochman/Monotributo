        <g:setProvider library="jquery"/>
	    <script>
	       	javascript:recargarTabs();
		</script>
        
        <div id="listaTitulosProfesionales">
	        <div class="nav">
	            <span class="menuButton">
	            	<g:remoteLink action="create2" update="listaTitulosProfesionales" ><g:message code="default.new.label" args="[entityName]" /></g:remoteLink>
	            </span>
	        </div>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'tituloProfesional.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="titulo" title="${message(code: 'tituloProfesional.titulo.label', default: 'Titulo')}" />
                        
                            <g:sortableColumn property="colegioProfesional" title="${message(code: 'tituloProfesional.colegioProfesional.label', default: 'Colegio Profesional')}" />
                        
                            <g:sortableColumn property="fechaMatriculacion" title="${message(code: 'tituloProfesional.fechaMatriculacion.label', default: 'Fecha Matriculacion')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${tituloProfesionalInstanceList}" status="i" var="tituloProfesionalInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
							<td><g:remoteLink action="show2" id="${tituloProfesionalInstance.id}" update="listaTitulosProfesionales" on404="alert('not found');">${fieldValue(bean: tituloProfesionalInstance, field: "id")}</g:remoteLink></td>                            
                        
                            <td>${fieldValue(bean: tituloProfesionalInstance, field: "titulo")}</td>
                        
                            <td>${fieldValue(bean: tituloProfesionalInstance, field: "colegioProfesional.colegioProfesional")}</td>
                        
                            <td><g:formatDate date="${tituloProfesionalInstance.fechaMatriculacion}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
	     		<g:remotePaginate update="listaTitulosProfesionales" total="${tituloProfesionalInstanceTotal}" />
            </div>
        </div>
