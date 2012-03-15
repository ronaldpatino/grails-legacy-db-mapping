<%@ page import="colineal.Detalle" %>



<div class="fieldcontain ${hasErrors(bean: detalleInstance, field: 'cabecera', 'error')} required">
	<label for="cabecera">
		<g:message code="detalle.cabecera.label" default="Cabecera" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cabecera" name="cabecera.id" from="${colineal.Cabecera.list()}" optionKey="id" required="" value="${detalleInstance?.cabecera?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: detalleInstance, field: 'cantidad', 'error')} ">
	<label for="cantidad">
		<g:message code="detalle.cantidad.label" default="Cantidad" />
		
	</label>
	<g:textField name="cantidad" value="${detalleInstance?.cantidad}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: detalleInstance, field: 'coditem', 'error')} ">
	<label for="coditem">
		<g:message code="detalle.coditem.label" default="Coditem" />
		
	</label>
	<g:textField name="coditem" value="${detalleInstance?.coditem}"/>
</div>

