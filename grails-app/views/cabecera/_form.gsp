<%@ page import="colineal.Cabecera" %>



<div class="fieldcontain ${hasErrors(bean: cabeceraInstance, field: 'codcliente', 'error')} required">
	<label for="codcliente">
		<g:message code="cabecera.codcliente.label" default="Codcliente" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="codcliente" required="" value="${fieldValue(bean: cabeceraInstance, field: 'codcliente')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cabeceraInstance, field: 'detalles', 'error')} ">
	<label for="detalles">
		<g:message code="cabecera.detalles.label" default="Detalles" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${cabeceraInstance?.detalles?}" var="d">
    <li><g:link controller="detalle" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="detalle" action="create" params="['cabecera.id': cabeceraInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'detalle.label', default: 'Detalle')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: cabeceraInstance, field: 'fecha', 'error')} ">
	<label for="fecha">
		<g:message code="cabecera.fecha.label" default="Fecha" />
		
	</label>
	<g:textField name="fecha" value="${cabeceraInstance?.fecha}"/>
</div>

