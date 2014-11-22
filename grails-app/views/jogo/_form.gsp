<%@ page import="br.edu.luciana.soccerManager.Jogo" %>



<div class="fieldcontain ${hasErrors(bean: jogoInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="jogo.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${jogoInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jogoInstance, field: 'adversario', 'error')} ">
	<label for="adversario">
		<g:message code="jogo.adversario.label" default="Adversario" />
		
	</label>
	<g:textField name="adversario" value="${jogoInstance?.adversario}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jogoInstance, field: 'time', 'error')} required">
	<label for="time">
		<g:message code="jogo.time.label" default="Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="time" name="time.id" from="${br.edu.luciana.soccerManager.Time.list()}" optionKey="id" required="" value="${jogoInstance?.time?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jogoInstance, field: 'cartao', 'error')} ">
	<label for="cartao">
		<g:message code="jogo.cartao.label" default="Cartao" />
		
	</label>
	<g:select name="cartao" from="${br.edu.luciana.soccerManager.Cartao?.values()}" keys="${br.edu.luciana.soccerManager.Cartao.values()*.name()}" value="${jogoInstance?.cartao?.name()}"  noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jogoInstance, field: 'falta', 'error')} required">
	<label for="falta">
		<g:message code="jogo.falta.label" default="Falta" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="falta" type="number" value="${jogoInstance.falta}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: jogoInstance, field: 'gol', 'error')} required">
	<label for="gol">
		<g:message code="jogo.gol.label" default="Gol" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="gol" type="number" value="${jogoInstance.gol}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: jogoInstance, field: 'dataJogo', 'error')} required">
	<label for="dataJogo">
		<g:message code="jogo.dataJogo.label" default="Data Jogo" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataJogo" precision="day"  value="${jogoInstance?.dataJogo}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: jogoInstance, field: 'categoria', 'error')} required">
	<label for="categoria">
		<g:message code="jogo.categoria.label" default="Categoria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="categoria" name="categoria.id" from="${br.edu.luciana.soccerManager.Categoria.list()}" optionKey="id" required="" value="${jogoInstance?.categoria?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jogoInstance, field: 'local', 'error')} required">
	<label for="local">
		<g:message code="jogo.local.label" default="Local" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="local" name="local.id" from="${br.edu.luciana.soccerManager.Local.list()}" optionKey="id" required="" value="${jogoInstance?.local?.id}" class="many-to-one"/>

</div>

