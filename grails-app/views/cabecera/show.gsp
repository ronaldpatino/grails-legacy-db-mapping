
<%@ page import="colineal.Cabecera" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cabecera.label', default: 'Cabecera')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-cabecera" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-cabecera" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list cabecera">
			
				<g:if test="${cabeceraInstance?.codcliente}">
				<li class="fieldcontain">
					<span id="codcliente-label" class="property-label"><g:message code="cabecera.codcliente.label" default="Codcliente" /></span>
					
						<span class="property-value" aria-labelledby="codcliente-label"><g:fieldValue bean="${cabeceraInstance}" field="codcliente"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cabeceraInstance?.detalles}">
				<li class="fieldcontain">
					<span id="detalles-label" class="property-label"><g:message code="cabecera.detalles.label" default="Detalles" /></span>
					
						<g:each in="${cabeceraInstance.detalles}" var="d">
						<span class="property-value" aria-labelledby="detalles-label"><g:link controller="detalle" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${cabeceraInstance?.fecha}">
				<li class="fieldcontain">
					<span id="fecha-label" class="property-label"><g:message code="cabecera.fecha.label" default="Fecha" /></span>
					
						<span class="property-value" aria-labelledby="fecha-label"><g:fieldValue bean="${cabeceraInstance}" field="fecha"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${cabeceraInstance?.id}" />
					<g:link class="edit" action="edit" id="${cabeceraInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
