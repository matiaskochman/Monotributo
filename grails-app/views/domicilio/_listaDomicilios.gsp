        <g:setProvider library="jquery"/>
        <script>
        	//javascript:recargarTabs();
		</script>
        <div id="domicilios">
	        <div class="nav">
	            <span class="menuButton">
	            	<g:remoteLink action="create2" update="domicilios" ><g:message code="default.new.label" args="[entityName]" /></g:remoteLink>
	            </span>
	        </div>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'domicilio.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="tipoDeDomicilio" title="${message(code: 'domicilio.tipoDeDomicilio.label', default: 'Tipo De Domicilio')}" />
                        
                            <g:sortableColumn property="calle" title="${message(code: 'domicilio.calle.label', default: 'Calle')}" />
                        
                            <g:sortableColumn property="numero" title="${message(code: 'domicilio.numero.label', default: 'Numero')}" />
                        
                            <g:sortableColumn property="sector" title="${message(code: 'domicilio.sector.label', default: 'Sector')}" />
                        
                            <g:sortableColumn property="torre" title="${message(code: 'domicilio.torre.label', default: 'Torre')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${domicilioInstanceList}" status="i" var="domicilioInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
							<td><g:remoteLink action="show2" id="${domicilioInstance.id}" update="domicilios" on404="alert('not found');">${fieldValue(bean: domicilioInstance, field: "id")}</g:remoteLink></td>                            
                        
                            <td>${fieldValue(bean: domicilioInstance, field: "tipoDeDomicilio")}</td>
                        
                            <td>${fieldValue(bean: domicilioInstance, field: "calle")}</td>
                        
                            <td>${fieldValue(bean: domicilioInstance, field: "numero")}</td>
                        
                            <td>${fieldValue(bean: domicilioInstance, field: "sector")}</td>
                        
                            <td>${fieldValue(bean: domicilioInstance, field: "torre")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
	     		<g:remotePaginate update="domicilios" total="${domicilioInstanceTotal}" />
            </div>
        </div>

