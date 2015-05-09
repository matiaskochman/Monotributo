

<%@ page import="monotributo.Area" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'area.label', default: 'Area')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${areaInstance}">
            <div class="errors">
                <g:renderErrors bean="${areaInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="descripcion"><g:message code="area.descripcion.label" default="Descripcion" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: areaInstance, field: 'descripcion', 'errors')}">
                                    <g:textField name="descripcion" value="${areaInstance?.descripcion}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tipo"><g:message code="area.tipo.label" default="Tipo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: areaInstance, field: 'area', 'errors')}">
									<g:select
										id="area"
										name="tipo"
										from="${constants.AreaTypeConstants.getAreaTypes()}"
										value="${areaInstance?.tipo}" 
										noSelection="['null': '']" >
									</g:select>             
                                </td>
                            </tr>
                        	<!-- 
                        	 -->
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="areaPadre"><g:message code="area.areaPadre.label" default="Area Padre" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: areaInstance, field: 'areaPadre', 'errors')}">
                                    <g:select name="areaPadre.id" from="${monotributo.Area.list()}" optionKey="id" optionValue="descripcion" value="${areaInstance?.areaPadre?.id}" noSelection="['null': '']" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
