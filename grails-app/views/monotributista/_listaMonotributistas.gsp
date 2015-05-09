        <g:setProvider library="jquery"/>
        <script>
        	//javascript:recargarTabs();
		</script>
        <div id="showMonotributista">
	        <div class="nav">
	            <span class="menuButton">
	            	<g:remoteLink action="create2" update="showMonotributista" >
	            		<g:message code="default.new.label" args="[entityName]" />
	            	</g:remoteLink>
	            </span>
	        </div>
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
		        <div id="grid">
		           <g:render template="grid"/>
		        </div>
            </div>
         </div>
