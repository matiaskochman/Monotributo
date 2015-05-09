
<%@ page import="monotributo.Domicilio" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'domicilio.label', default: 'Domicilio')}" />
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
                            <td valign="top" class="name"><g:message code="domicilio.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: domicilioInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="domicilio.tipoDeDomicilio.label" default="Tipo De Domicilio" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: domicilioInstance, field: "tipoDeDomicilio")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="domicilio.calle.label" default="Calle" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: domicilioInstance, field: "calle")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="domicilio.numero.label" default="Numero" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: domicilioInstance, field: "numero")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="domicilio.sector.label" default="Sector" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: domicilioInstance, field: "sector")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="domicilio.torre.label" default="Torre" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: domicilioInstance, field: "torre")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="domicilio.piso.label" default="Piso" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: domicilioInstance, field: "piso")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="domicilio.deptoLocalOficina.label" default="Depto Local Oficina" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: domicilioInstance, field: "deptoLocalOficina")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="domicilio.manzana.label" default="Manzana" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: domicilioInstance, field: "manzana")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="domicilio.provincia.label" default="Provincia" /></td>
                            
                            <td valign="top" class="value"><g:link controller="area" action="show" id="${domicilioInstance?.provincia?.id}">${domicilioInstance?.provincia?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="domicilio.partido.label" default="Partido" /></td>
                            
                            <td valign="top" class="value"><g:link controller="area" action="show" id="${domicilioInstance?.partido?.id}">${domicilioInstance?.partido?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="domicilio.localidad.label" default="Localidad" /></td>
                            
                            <td valign="top" class="value"><g:link controller="area" action="show" id="${domicilioInstance?.localidad?.id}">${domicilioInstance?.localidad?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="domicilio.codigoPostal.label" default="Codigo Postal" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: domicilioInstance, field: "codigoPostal")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${domicilioInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
