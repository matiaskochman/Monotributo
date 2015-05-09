<%@ page import="monotributo.TituloProfesional" %>
<%@ page import="monotributo.ColegioProfesional" %>
        <g:setProvider library="jquery"/>

		<calendar:resources lang="en" theme="tiger"/>      
        <div id="createTituloProfesionalForm">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${tituloProfesionalInstance}">
            <div class="errors">
                <g:renderErrors bean="${tituloProfesionalInstance}" as="list" />
            </div>
            </g:hasErrors>
	          <g:formRemote
	            name="createTituloProfesional"
	            url="[controller:'tituloProfesional', action:'save2']"
	            update="createTituloProfesionalForm">            
            
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="titulo"><g:message code="tituloProfesional.titulo.label" default="Titulo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tituloProfesionalInstance, field: 'titulo', 'errors')}">
                                    <g:textField name="titulo" value="${tituloProfesionalInstance?.titulo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="colegioProfesional"><g:message code="tituloProfesional.colegioProfesional.label" default="Colegio Profesional" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tituloProfesionalInstance, field: 'colegioProfesional', 'errors')}">
                                    <g:select 
                                    	id="colegioProfesional"
                                    	name="idColegioProfesional"
                                    	optionKey="id" 
	                                	optionValue="colegioProfesional" 
                                    	from="${ColegioProfesional.list()}" 
                                    	value="${tituloProfesionalInstance?.colegioProfesional}" 
                                    	noSelection="['null': '']" >
                                    	<option>           </option>
	                                </g:select>
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fechaMatriculacion"><g:message code="tituloProfesional.fechaMatriculacion.label" default="Fecha Matriculacion" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tituloProfesionalInstance, field: 'fechaMatriculacion', 'errors')}">
                                    <g:datePicker name="fechaMatriculacion" precision="day" value="${tituloProfesionalInstance?.fechaMatriculacion}" default="none" noSelection="['': '']" />
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
