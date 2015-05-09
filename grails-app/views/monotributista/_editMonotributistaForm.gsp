<%@ page import="monotributo.Monotributista" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <g:setProvider library="jquery"/>
    
    </head>
    <body>
        <div id="createMonotributistaForm">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${monotributistaInstance}">
            <div class="errors">
                <g:renderErrors bean="${monotributistaInstance}" as="list" />
            </div>
            </g:hasErrors>        
	          <g:formRemote
	            name="createMonotributista"
	            url="[controller:'monotributista', action:'update2']"
	            update="createMonotributistaForm">            
		                <div class="dialog">
		                    <table>
		                        <tbody>
		                        
		                            <tr class="prop">
		                                <td valign="top" class="name">
		                                    <label for="nombre"><g:message code="monotributista.nombre.label" default="Nombre" /></label>
		                                </td>
		                                <td valign="top" class="value ${hasErrors(bean: monotributistaInstance, field: 'nombre', 'errors')}">
		                                    <g:textField name="nombre" value="${monotributistaInstance?.nombre}" />
		                                </td>
		                            </tr>
		                        
		                            <tr class="prop">
		                                <td valign="top" class="name">
		                                    <label for="cuitCui"><g:message code="monotributista.cuitCui.label" default="Cuit Cui" /></label>
		                                </td>
		                                <td valign="top" class="value ${hasErrors(bean: monotributistaInstance, field: 'cuitCui', 'errors')}">
		                                    <g:textField name="cuitCui" value="${monotributistaInstance?.cuitCui}" />
		                                </td>
		                            </tr>
		                        
		                            <tr class="prop">
		                                <td valign="top" class="name">
		                                    <label for="tipoContribuyente"><g:message code="monotributista.tipoContribuyente.label" default="Tipo Contribuyente" /></label>
		                                </td>
		                                <td valign="top" class="value ${hasErrors(bean: monotributistaInstance, field: 'tipoContribuyente', 'errors')}">
		                                    <g:textField name="tipoContribuyente" value="${monotributistaInstance?.tipoContribuyente}" />
		                                </td>
		                            </tr>
		                        
		                            <tr class="prop">
		                                <td valign="top" class="name">
		                                    <label for="tipoActividad"><g:message code="monotributista.tipoActividad.label" default="Tipo Actividad" /></label>
		                                </td>
		                                <td valign="top" class="value ${hasErrors(bean: monotributistaInstance, field: 'tipoActividad', 'errors')}">
		                                    <g:textField name="tipoActividad" value="${monotributistaInstance?.tipoActividad}" />
		                                </td>
		                            </tr>
		                        
		                            <tr class="prop">
		                                <td valign="top" class="name">
		                                    <label for="descripcion"><g:message code="monotributista.descripcion.label" default="Descripcion" /></label>
		                                </td>
		                                <td valign="top" class="value ${hasErrors(bean: monotributistaInstance, field: 'descripcion', 'errors')}">
		                                    <g:textField name="descripcion" value="${monotributistaInstance?.descripcion}" />
		                                </td>
		                            </tr>
		                        
		                            <tr class="prop">
		                                <td valign="top" class="name">
		                                    <label for="fechaDeNacimiento"><g:message code="monotributista.fechaDeNacimiento.label" default="Fecha De Nacimiento" /></label>
		                                </td>
		                                <td valign="top" class="value ${hasErrors(bean: monotributistaInstance, field: 'fechaDeNacimiento', 'errors')}">
		                                    <g:datePicker name="fechaDeNacimiento" precision="day" value="${monotributistaInstance?.fechaDeNacimiento}" default="none" noSelection="['': '']" />
		                                </td>
		                            </tr>
		                        
		                            <tr class="prop">
		                                <td valign="top" class="name">
		                                    <label for="contacto"><g:message code="monotributista.contacto.label" default="Contacto" /></label>
		                                </td>
		                                <td valign="top" class="value ${hasErrors(bean: monotributistaInstance, field: 'contacto', 'errors')}">
		                                    <g:textField name="contacto" value="${monotributistaInstance?.contacto}" />
		                                </td>
		                            </tr>
		                        
		                            <tr class="prop">
		                                <td valign="top" class="name">
		                                    <label for="tel1"><g:message code="monotributista.tel1.label" default="Tel1" /></label>
		                                </td>
		                                <td valign="top" class="value ${hasErrors(bean: monotributistaInstance, field: 'tel1', 'errors')}">
		                                    <g:textField name="tel1" value="${monotributistaInstance?.tel1}" />
		                                </td>
		                            </tr>
		                        
		                            <tr class="prop">
		                                <td valign="top" class="name">
		                                    <label for="tel2"><g:message code="monotributista.tel2.label" default="Tel2" /></label>
		                                </td>
		                                <td valign="top" class="value ${hasErrors(bean: monotributistaInstance, field: 'tel2', 'errors')}">
		                                    <g:textField name="tel2" value="${monotributistaInstance?.tel2}" />
		                                </td>
		                            </tr>
		                        
		                            <tr class="prop">
		                                <td valign="top" class="name">
		                                    <label for="celular1"><g:message code="monotributista.celular1.label" default="Celular1" /></label>
		                                </td>
		                                <td valign="top" class="value ${hasErrors(bean: monotributistaInstance, field: 'celular1', 'errors')}">
		                                    <g:textField name="celular1" value="${monotributistaInstance?.celular1}" />
		                                </td>
		                            </tr>
		                        
		                            <tr class="prop">
		                                <td valign="top" class="name">
		                                    <label for="celular2"><g:message code="monotributista.celular2.label" default="Celular2" /></label>
		                                </td>
		                                <td valign="top" class="value ${hasErrors(bean: monotributistaInstance, field: 'celular2', 'errors')}">
		                                    <g:textField name="celular2" value="${monotributistaInstance?.celular2}" />
		                                </td>
		                            </tr>
		                        
		                            <tr class="prop">
		                                <td valign="top" class="name">
		                                    <label for="email1"><g:message code="monotributista.email1.label" default="Email1" /></label>
		                                </td>
		                                <td valign="top" class="value ${hasErrors(bean: monotributistaInstance, field: 'email1', 'errors')}">
		                                    <g:textField name="email1" value="${monotributistaInstance?.email1}" />
		                                </td>
		                            </tr>
		                        
		                            <tr class="prop">
		                                <td valign="top" class="name">
		                                    <label for="email2"><g:message code="monotributista.email2.label" default="Email2" /></label>
		                                </td>
		                                <td valign="top" class="value ${hasErrors(bean: monotributistaInstance, field: 'email2', 'errors')}">
		                                    <g:textField name="email2" value="${monotributistaInstance?.email2}" />
		                                </td>
		                            </tr>
		                        
		                            <tr class="prop">
		                                <td valign="top" class="name">
		                                    <label for="web"><g:message code="monotributista.web.label" default="Web" /></label>
		                                </td>
		                                <td valign="top" class="value ${hasErrors(bean: monotributistaInstance, field: 'web', 'errors')}">
		                                    <g:textField name="web" value="${monotributistaInstance?.web}" />
		                                </td>
		                            </tr>
		                        
		                        </tbody>
		                    </table>
		                </div>
		                <g:hiddenField name="id" value="${monotributistaInstance?.id}" />
		                <div class="buttons">
		                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
		                </div>
		            </g:formRemote>
        </div>
    </body>
</html>