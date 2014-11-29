<%@ page import="br.edu.luciana.soccerManager.Semana" %>



<div class="fieldcontain ${hasErrors(bean: semanaInstance, field: 'domingo', 'error')} ">
	<label for="domingo">
		<g:message code="semana.domingo.label" default="Domingo" />
		
	</label>
	<g:checkBox name="domingo" value="${semanaInstance?.domingo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: semanaInstance, field: 'segunda', 'error')} ">
	<label for="segunda">
		<g:message code="semana.segunda.label" default="Segunda" />
		
	</label>
	<g:checkBox name="segunda" value="${semanaInstance?.segunda}" />

</div>

<div class="fieldcontain ${hasErrors(bean: semanaInstance, field: 'terca', 'error')} ">
	<label for="terca">
		<g:message code="semana.terca.label" default="Terca" />
		
	</label>
	<g:checkBox name="terca" value="${semanaInstance?.terca}" />

</div>

<div class="fieldcontain ${hasErrors(bean: semanaInstance, field: 'quarta', 'error')} ">
	<label for="quarta">
		<g:message code="semana.quarta.label" default="Quarta" />
		
	</label>
	<g:checkBox name="quarta" value="${semanaInstance?.quarta}" />

</div>

<div class="fieldcontain ${hasErrors(bean: semanaInstance, field: 'quinta', 'error')} ">
	<label for="quinta">
		<g:message code="semana.quinta.label" default="Quinta" />
		
	</label>
	<g:checkBox name="quinta" value="${semanaInstance?.quinta}" />

</div>

<div class="fieldcontain ${hasErrors(bean: semanaInstance, field: 'sexta', 'error')} ">
	<label for="sexta">
		<g:message code="semana.sexta.label" default="Sexta" />
		
	</label>
	<g:checkBox name="sexta" value="${semanaInstance?.sexta}" />

</div>

<div class="fieldcontain ${hasErrors(bean: semanaInstance, field: 'sabado', 'error')} ">
	<label for="sabado">
		<g:message code="semana.sabado.label" default="Sabado" />
		
	</label>
	<g:checkBox name="sabado" value="${semanaInstance?.sabado}" />

</div>

