
<%@ page import="colineal.Detalle" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'detalle.label', default: 'Detalle')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-detalle" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-detalle" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list detalle">
			
				<g:if test="${detalleInstance?.cabecera}">
				<li class="fieldcontain">
					<span id="cabecera-label" class="property-label"><g:message code="detalle.cabecera.label" default="Cabecera" /></span>
					
						<span class="property-value" aria-labelledby="cabecera-label"><g:link controller="cabecera" action="show" id="${detalleInstance?.cabecera?.id}">${detalleInstance?.cabecera?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${detalleInstance?.cantidad}">
				<li class="fieldcontain">
					<span id="cantidad-label" class="property-label"><g:message code="detalle.cantidad.label" default="Cantidad" /></span>
					
						<span class="property-value" aria-labelledby="cantidad-label"><g:fieldValue bean="${detalleInstance}" field="cantidad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${detalleInstance?.producto}">
				<li class="fieldcontain">
					<span id="coditem-label" class="property-label"><g:message code="detalle.producto.label" default="Coditem" /></span>
					
						<span class="property-value" aria-labelledby="coditem-label"><g:fieldValue bean="${detalleInstance}" field="producto"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${detalleInstance?.id}" />
					<g:link class="edit" action="edit" id="${detalleInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
