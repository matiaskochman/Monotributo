

<%@ page import="monotributo.Domicilio" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'domicilio.label', default: 'Domicilio')}" />
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
            <g:hasErrors bean="${domicilioInstance}">
            <div class="errors">
                <g:renderErrors bean="${domicilioInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${domicilioInstance?.id}" />
                <g:hiddenField name="version" value="${domicilioInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="tipoDeDomicilio"><g:message code="domicilio.tipoDeDomicilio.label" default="Tipo De Domicilio" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: domicilioInstance, field: 'tipoDeDomicilio', 'errors')}">
                                    <g:textField name="tipoDeDomicilio" value="${domicilioInstance?.tipoDeDomicilio}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="calle"><g:message code="domicilio.calle.label" default="Calle" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: domicilioInstance, field: 'calle', 'errors')}">
                                    <g:textField name="calle" value="${domicilioInstance?.calle}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="numero"><g:message code="domicilio.numero.label" default="Numero" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: domicilioInstance, field: 'numero', 'errors')}">
                                    <g:textField name="numero" value="${domicilioInstance?.numero}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="sector"><g:message code="domicilio.sector.label" default="Sector" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: domicilioInstance, field: 'sector', 'errors')}">
                                    <g:textField name="sector" value="${domicilioInstance?.sector}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="torre"><g:message code="domicilio.torre.label" default="Torre" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: domicilioInstance, field: 'torre', 'errors')}">
                                    <g:textField name="torre" value="${domicilioInstance?.torre}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="piso"><g:message code="domicilio.piso.label" default="Piso" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: domicilioInstance, field: 'piso', 'errors')}">
                                    <g:textField name="piso" value="${domicilioInstance?.piso}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="deptoLocalOficina"><g:message code="domicilio.deptoLocalOficina.label" default="Depto Local Oficina" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: domicilioInstance, field: 'deptoLocalOficina', 'errors')}">
                                    <g:textField name="deptoLocalOficina" value="${domicilioInstance?.deptoLocalOficina}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="manzana"><g:message code="domicilio.manzana.label" default="Manzana" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: domicilioInstance, field: 'manzana', 'errors')}">
                                    <g:textField name="manzana" value="${domicilioInstance?.manzana}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="provincia"><g:message code="domicilio.provincia.label" default="Provincia" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: domicilioInstance, field: 'provincia', 'errors')}">
                                    <g:select name="provincia.id" from="${monotributo.Area.list()}" optionKey="id" value="${domicilioInstance?.provincia?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="partido"><g:message code="domicilio.partido.label" default="Partido" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: domicilioInstance, field: 'partido', 'errors')}">
                                    <g:select name="partido.id" from="${monotributo.Area.list()}" optionKey="id" value="${domicilioInstance?.partido?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="localidad"><g:message code="domicilio.localidad.label" default="Localidad" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: domicilioInstance, field: 'localidad', 'errors')}">
                                    <g:select name="localidad.id" from="${monotributo.Area.list()}" optionKey="id" value="${domicilioInstance?.localidad?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="codigoPostal"><g:message code="domicilio.codigoPostal.label" default="Codigo Postal" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: domicilioInstance, field: 'codigoPostal', 'errors')}">
                                    <g:textField name="codigoPostal" value="${domicilioInstance?.codigoPostal}" />
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
