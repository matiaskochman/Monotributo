

<%@ page import="monotributo.Establecimiento" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'establecimiento.label', default: 'Establecimiento')}" />
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
            <g:hasErrors bean="${establecimientoInstance}">
            <div class="errors">
                <g:renderErrors bean="${establecimientoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${establecimientoInstance?.id}" />
                <g:hiddenField name="version" value="${establecimientoInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="tipoEstablecimiento"><g:message code="establecimiento.tipoEstablecimiento.label" default="Tipo Establecimiento" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: establecimientoInstance, field: 'tipoEstablecimiento', 'errors')}">
                                    <g:textField name="tipoEstablecimiento" value="${establecimientoInstance?.tipoEstablecimiento}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="titularDelInmueble"><g:message code="establecimiento.titularDelInmueble.label" default="Titular Del Inmueble" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: establecimientoInstance, field: 'titularDelInmueble', 'errors')}">
                                    <g:textField name="titularDelInmueble" value="${establecimientoInstance?.titularDelInmueble}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="activo"><g:message code="establecimiento.activo.label" default="Activo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: establecimientoInstance, field: 'activo', 'errors')}">
                                    <g:checkBox name="activo" value="${establecimientoInstance?.activo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="partida"><g:message code="establecimiento.partida.label" default="Partida" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: establecimientoInstance, field: 'partida', 'errors')}">
                                    <g:textField name="partida" value="${establecimientoInstance?.partida}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="digito"><g:message code="establecimiento.digito.label" default="Digito" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: establecimientoInstance, field: 'digito', 'errors')}">
                                    <g:textField name="digito" value="${establecimientoInstance?.digito}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="catastro"><g:message code="establecimiento.catastro.label" default="Catastro" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: establecimientoInstance, field: 'catastro', 'errors')}">
                                    <g:textField name="catastro" value="${establecimientoInstance?.catastro}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="partido"><g:message code="establecimiento.partido.label" default="Partido" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: establecimientoInstance, field: 'partido', 'errors')}">
                                    <g:select name="partido.id" from="${monotributo.Area.list()}" optionKey="id" value="${establecimientoInstance?.partido?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="provincia"><g:message code="establecimiento.provincia.label" default="Provincia" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: establecimientoInstance, field: 'provincia', 'errors')}">
                                    <g:select name="provincia.id" from="${monotributo.Area.list()}" optionKey="id" value="${establecimientoInstance?.provincia?.id}"  />
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
