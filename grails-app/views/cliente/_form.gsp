<%@ page import="colineal.Cliente" %>



<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'apellido', 'error')} ">
	<label for="apellido">
		<g:message code="cliente.apellido.label" default="Apellido" />
		
	</label>
	<g:textField name="apellido" value="${clienteInstance?.apellido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'codciudad', 'error')} required">
	<label for="codciudad">
		<g:message code="cliente.codciudad.label" default="Codciudad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="codciudad" required="" value="${fieldValue(bean: clienteInstance, field: 'codciudad')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="cliente.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${clienteInstance?.nombre}"/>
</div>

