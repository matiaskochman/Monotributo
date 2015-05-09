
<%@ page import="monotributo.Categoria" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                            <g:sortableColumn property="id" title="${message(code: 'categoria.id.label', default: 'Id')}" />
                            <g:sortableColumn property="categoria" title="${message(code: 'categoria.categoria.label', default: 'Categoria')}" />
                            <g:sortableColumn property="topeIngresosBrutos" title="${message(code: 'categoria.topeIngresosBrutos.label', default: 'Tope Ingresos Brutos')}" />
                            <g:sortableColumn property="cantidadMinimaEmpleados" title="${message(code: 'categoria.cantidadMinimaEmpleados.label', default: 'Cantidad Minima Empleados')}" />
                            <g:sortableColumn property="superficieAceptada" title="${message(code: 'categoria.superficieAceptada.label', default: 'Superficie Aceptada')}" />
                            <g:sortableColumn property="alquileresAnuales" title="${message(code: 'categoria.alquileresAnuales.label', default: 'Alquileres anuales')}" />
                            <g:sortableColumn property="energiaElectricaConsumidaAnualmente" title="${message(code: 'categoria.energiaElectricaConsumidaAnualmente.label', default: 'Energia Electrica Consumida Anualmente')}" />
                            <g:sortableColumn property="impuestoLocacionesPrestacionServicios" title="${message(code: 'categoria.impuestoLocacionesPrestacionServicios.label', default: 'Impuesto por Locaciones y Prestacion de Servicios')}" />
                            <g:sortableColumn property="impuestoVentaCosasMuebles" title="${message(code: 'categoria.impuestoVentaCosasMuebles.label', default: 'Impuestos Venta de Cosas Muebles')}" />
                            <g:sortableColumn property="aportesAlSipa" title="${message(code: 'categoria.aportesAlSipa.label', default: 'Aportes al Sipa')}" />
                            <g:sortableColumn property="aporteObraSocial" title="${message(code: 'categoria.aporteObraSocial.label', default: 'Aporte Obra Social')}" />
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${categoriaInstanceList}" status="i" var="categoriaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                            <td><g:link action="edit" id="${categoriaInstance.id}">editar</g:link></td>
                            <td>${fieldValue(bean: categoriaInstance, field: "categoria")}</td>
                            <td>${fieldValue(bean: categoriaInstance, field: "topeIngresosBrutos")}</td>
                            <td>${fieldValue(bean: categoriaInstance, field: "cantidadMinimaEmpleados")}</td>
                            <td>${fieldValue(bean: categoriaInstance, field: "superficieAceptada")}</td>
                            <td>${fieldValue(bean: categoriaInstance, field: "alquileresAnuales")}</td>
                            <td>${fieldValue(bean: categoriaInstance, field: "energiaElectricaConsumidaAnualmente")}</td>
                            <td>${fieldValue(bean: categoriaInstance, field: "impuestoLocacionesPrestacionServicios")}</td>
                            <td>${fieldValue(bean: categoriaInstance, field: "impuestoVentaCosasMuebles")}</td>
                            <td>${fieldValue(bean: categoriaInstance, field: "aportesAlSipa")}</td>
                            <td>${fieldValue(bean: categoriaInstance, field: "aporteObraSocial")}</td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${categoriaInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
