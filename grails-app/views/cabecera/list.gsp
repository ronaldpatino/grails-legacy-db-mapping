
<%@ page import="colineal.Cabecera" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cabecera.label', default: 'Cabecera')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-cabecera" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-cabecera" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="codcliente" title="${message(code: 'cabecera.codcliente.label', default: 'Codcliente')}" />
					
						<g:sortableColumn property="fecha" title="${message(code: 'cabecera.fecha.label', default: 'Fecha')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${cabeceraInstanceList}" status="i" var="cabeceraInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cabeceraInstance.id}">${fieldValue(bean: cabeceraInstance, field: "cliente.nombre")}</g:link></td>
					
						<td>${fieldValue(bean: cabeceraInstance, field: "fecha")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${cabeceraInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
