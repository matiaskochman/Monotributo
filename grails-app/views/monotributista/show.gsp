
<%@ page import="monotributo.Monotributista" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'monotributista.label', default: 'Monotributista')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monotributista.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monotributistaInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monotributista.nombre.label" default="Nombre" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monotributistaInstance, field: "nombre")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monotributista.cuitCui.label" default="Cuit Cui" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monotributistaInstance, field: "cuitCui")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monotributista.tipoContribuyente.label" default="Tipo Contribuyente" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monotributistaInstance, field: "tipoContribuyente")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monotributista.tipoActividad.label" default="Tipo Actividad" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monotributistaInstance, field: "tipoActividad")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monotributista.descripcion.label" default="Descripcion" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monotributistaInstance, field: "descripcion")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monotributista.fechaDeNacimiento.label" default="Fecha De Nacimiento" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${monotributistaInstance?.fechaDeNacimiento}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monotributista.contacto.label" default="Contacto" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monotributistaInstance, field: "contacto")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monotributista.tel1.label" default="Tel1" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monotributistaInstance, field: "tel1")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monotributista.tel2.label" default="Tel2" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monotributistaInstance, field: "tel2")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monotributista.celular1.label" default="Celular1" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monotributistaInstance, field: "celular1")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monotributista.celular2.label" default="Celular2" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monotributistaInstance, field: "celular2")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monotributista.email1.label" default="Email1" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monotributistaInstance, field: "email1")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monotributista.email2.label" default="Email2" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monotributistaInstance, field: "email2")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monotributista.web.label" default="Web" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: monotributistaInstance, field: "web")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monotributista.listaDomicilios.label" default="Lista Domicilios" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${monotributistaInstance.listaDomicilios}" var="l">
                                    <li><g:link controller="domicilio" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monotributista.listaGrupoFamiliar.label" default="Lista Grupo Familiar" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${monotributistaInstance.listaGrupoFamiliar}" var="l">
                                    <li><g:link controller="grupoFamiliar" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monotributista.listaEstablecimientos.label" default="Lista Establecimientos" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${monotributistaInstance.listaEstablecimientos}" var="l">
                                    <li><g:link controller="establecimiento" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monotributista.listaTitulosProfesionales.label" default="Lista Titulos Profesionales" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${monotributistaInstance.listaTitulosProfesionales}" var="l">
                                    <li><g:link controller="tituloProfesional" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="monotributista.listaVehiculos.label" default="Lista Vehiculos" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${monotributistaInstance.listaVehiculos}" var="l">
                                    <li><g:link controller="vehiculo" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${monotributistaInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
