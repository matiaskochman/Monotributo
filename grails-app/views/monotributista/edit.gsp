

<%@ page import="monotributo.Monotributista" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'monotributista.label', default: 'Monotributista')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${monotributistaInstance}">
            <div class="errors">
                <g:renderErrors bean="${monotributistaInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${monotributistaInstance?.id}" />
                <g:hiddenField name="version" value="${monotributistaInstance?.version}" />
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
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="listaDomicilios"><g:message code="monotributista.listaDomicilios.label" default="Lista Domicilios" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monotributistaInstance, field: 'listaDomicilios', 'errors')}">
                                    
<ul>
<g:each in="${monotributistaInstance?.listaDomicilios?}" var="l">
    <li><g:link controller="domicilio" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="domicilio" action="create" params="['monotributista.id': monotributistaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'domicilio.label', default: 'Domicilio')])}</g:link>

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="listaGrupoFamiliar"><g:message code="monotributista.listaGrupoFamiliar.label" default="Lista Grupo Familiar" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monotributistaInstance, field: 'listaGrupoFamiliar', 'errors')}">
                                    <g:select name="listaGrupoFamiliar" from="${monotributo.GrupoFamiliar.list()}" multiple="yes" optionKey="id" size="5" value="${monotributistaInstance?.listaGrupoFamiliar*.id}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="listaEstablecimientos"><g:message code="monotributista.listaEstablecimientos.label" default="Lista Establecimientos" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monotributistaInstance, field: 'listaEstablecimientos', 'errors')}">
                                    <g:select name="listaEstablecimientos" from="${monotributo.Establecimiento.list()}" multiple="yes" optionKey="id" size="5" value="${monotributistaInstance?.listaEstablecimientos*.id}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="listaTitulosProfesionales"><g:message code="monotributista.listaTitulosProfesionales.label" default="Lista Titulos Profesionales" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monotributistaInstance, field: 'listaTitulosProfesionales', 'errors')}">
                                    <g:select name="listaTitulosProfesionales" from="${monotributo.TituloProfesional.list()}" multiple="yes" optionKey="id" size="5" value="${monotributistaInstance?.listaTitulosProfesionales*.id}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="listaVehiculos"><g:message code="monotributista.listaVehiculos.label" default="Lista Vehiculos" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: monotributistaInstance, field: 'listaVehiculos', 'errors')}">
                                    <g:select name="listaVehiculos" from="${monotributo.Vehiculo.list()}" multiple="yes" optionKey="id" size="5" value="${monotributistaInstance?.listaVehiculos*.id}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
