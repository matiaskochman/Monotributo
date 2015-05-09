
<%@ page import="monotributo.GrupoFamiliar" %>
<g:setProvider library="jquery"/>
    <script>
       	javascript:recargarTabs();
	</script>
<div id="listaGrupoFamiliar">
        <div class="nav">
            <span class="menuButton">
	        	<g:remoteLink class="create" action="create2" update="listaGrupoFamiliar" ><g:message code="default.new.label" args="[entityName]" /></g:remoteLink>
            </span>
            
        </div>
        <div>
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'grupoFamiliar.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="nombre" title="${message(code: 'grupoFamiliar.nombre.label', default: 'Nombre')}" />
                        
                            <g:sortableColumn property="apellido" title="${message(code: 'grupoFamiliar.apellido.label', default: 'Apellido')}" />
                        
                            <g:sortableColumn property="parentesco" title="${message(code: 'grupoFamiliar.parentesco.label', default: 'Parentesco')}" />
                        
                            <g:sortableColumn property="tipoDeDocumento" title="${message(code: 'grupoFamiliar.tipoDeDocumento.label', default: 'Tipo De Documento')}" />
                        
                            <g:sortableColumn property="numeroDeDocumento" title="${message(code: 'grupoFamiliar.numeroDeDocumento.label', default: 'Numero De Documento')}" />

                            <g:sortableColumn property="archivoAdjunto" title="${message(code: 'grupoFamiliar.archivoAdjunto.label', default: 'Adjunto')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${grupoFamiliarInstanceList}" status="i" var="grupoFamiliarInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                			<td><g:remoteLink action="show2" id="${grupoFamiliarInstance.id}" update="listaGrupoFamiliar" on404="alert('not found');">${fieldValue(bean: grupoFamiliarInstance, field: "id")}</g:remoteLink></td>                            
                        
                            <td>${fieldValue(bean: grupoFamiliarInstance, field: "nombre")}</td>
                        
                            <td>${fieldValue(bean: grupoFamiliarInstance, field: "apellido")}</td>
                        
                            <td>${fieldValue(bean: grupoFamiliarInstance, field: "parentesco")}</td>
                        
                            <td>${fieldValue(bean: grupoFamiliarInstance, field: "tipoDeDocumento")}</td>
                        
                            <td>${fieldValue(bean: grupoFamiliarInstance, field: "numeroDeDocumento")}</td>

                            <td>${fieldValue(bean: grupoFamiliarInstance, field: "archivoAdjunto")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
	     		<g:remotePaginate update="domicilios" total="${grupoFamiliarInstanceTotal}" />
            </div>
            
        </div>
</div>
