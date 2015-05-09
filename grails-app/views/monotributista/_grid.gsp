		<g:setProvider library="jquery"/>
		<div id="chatForm">
	     <table id="tableAjax" class="ajax">
	         <thead>
	             <tr>
	             
	                 <g:sortableColumn property="id" title="${message(code: 'monotributista.id.label', default: 'Id')}" />
	             
	                 <g:sortableColumn property="nombre" title="${message(code: 'monotributista.nombre.label', default: 'Nombre')}" />
	             
	                 <g:sortableColumn property="cuitCui" title="${message(code: 'monotributista.cuitCui.label', default: 'Cuit Cui')}" />
	             
	                 <g:sortableColumn property="tipoContribuyente" title="${message(code: 'monotributista.tipoContribuyente.label', default: 'Tipo Contribuyente')}" />
	             
	                 <g:sortableColumn property="tipoActividad" title="${message(code: 'monotributista.tipoActividad.label', default: 'Tipo Actividad')}" />
	             
	                 <g:sortableColumn property="descripcion" title="${message(code: 'monotributista.descripcion.label', default: 'Descripcion')}" />
	             
	             </tr>
	         </thead>
	         <tbody>
	         <g:each in="${monotributistaInstanceList}" status="i" var="monotributistaInstance">
	             <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
	             	<td><g:remoteLink action="show2" id="${monotributistaInstance.id}" update="showMonotributista" on404="alert('not found');">${fieldValue(bean: monotributistaInstance, field: "id")}</g:remoteLink></td>
	             		
	                 <td>${fieldValue(bean: monotributistaInstance, field: "nombre")}</td>
	             
	                 <td>${fieldValue(bean: monotributistaInstance, field: "cuitCui")}</td>
	             
	                 <td>${fieldValue(bean: monotributistaInstance, field: "tipoContribuyente")}</td>
	             
	                 <td>${fieldValue(bean: monotributistaInstance, field: "tipoActividad")}</td>
	             
	                 <td>${fieldValue(bean: monotributistaInstance, field: "descripcion")}</td>
	             
	             </tr>
	         </g:each>
	         </tbody>
	     </table>
	 </div>	     
	 <div class="paginateButtons">
	     <g:remotePaginate update="showMonotributista" total="${monotributistaInstanceTotal}" />
	 </div>
