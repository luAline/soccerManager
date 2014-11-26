<%@ page import="br.edu.luciana.soccerManager.Time" %>

<g:each in="${alunoLista}" var="timeInstance">
    <div class="form-group col-md-2">
        <g:link class="create" action="create" controller="time" id="${timeInstance?.id}">${timeInstance?.nome}</g:link>
    </div>
</g:each>


<div class="fieldcontain ${hasErrors(bean: timeInstance, field: 'numeroCamisa', 'error')} required">
	<label for="numeroCamisa">
		<g:message code="time.numeroCamisa.label" default="Numero Camisa" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numeroCamisa" type="number" value="${timeInstance.numeroCamisa}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: timeInstance, field: 'aluno', 'error')} required">
	<label for="aluno">
		<g:message code="time.aluno.label" default="Aluno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="aluno" name="aluno.id" from="${br.edu.luciana.soccerManager.Aluno.list()}" optionKey="id" required="" value="${timeInstance?.aluno?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: timeInstance, field: 'categoria', 'error')} required">
	<label for="categoria">
		<g:message code="time.categoria.label" default="Categoria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="categoria" name="categoria.id" from="${br.edu.luciana.soccerManager.Categoria.list()}" optionKey="id" required="" value="${timeInstance?.categoria?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: timeInstance, field: 'observacao', 'error')} ">
	<label for="observacao">
		<g:message code="time.observacao.label" default="Observacao" />
		
	</label>
	<g:textField name="observacao" value="${timeInstance?.observacao}"/>

</div>

