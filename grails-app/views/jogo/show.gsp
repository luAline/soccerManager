
<%@ page import="br.edu.luciana.soccerManager.Jogo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'jogo.label', default: 'Jogo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-jogo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(url: '../menu/telaInicio')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-jogo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list jogo">
			
				<g:if test="${jogoInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="jogo.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${jogoInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jogoInstance?.adversario}">
				<li class="fieldcontain">
					<span id="adversario-label" class="property-label"><g:message code="jogo.adversario.label" default="Adversario" /></span>
					
						<span class="property-value" aria-labelledby="adversario-label"><g:fieldValue bean="${jogoInstance}" field="adversario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jogoInstance?.time}">
				<li class="fieldcontain">
					<span id="time-label" class="property-label"><g:message code="jogo.time.label" default="Time" /></span>
					
						<span class="property-value" aria-labelledby="time-label"><g:link controller="time" action="show" id="${jogoInstance?.time?.id}">${jogoInstance?.time?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${jogoInstance?.cartao}">
				<li class="fieldcontain">
					<span id="cartao-label" class="property-label"><g:message code="jogo.cartao.label" default="Cartao" /></span>
					
						<span class="property-value" aria-labelledby="cartao-label"><g:fieldValue bean="${jogoInstance}" field="cartao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jogoInstance?.falta}">
				<li class="fieldcontain">
					<span id="falta-label" class="property-label"><g:message code="jogo.falta.label" default="Falta" /></span>
					
						<span class="property-value" aria-labelledby="falta-label"><g:fieldValue bean="${jogoInstance}" field="falta"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jogoInstance?.gol}">
				<li class="fieldcontain">
					<span id="gol-label" class="property-label"><g:message code="jogo.gol.label" default="Gol" /></span>
					
						<span class="property-value" aria-labelledby="gol-label"><g:fieldValue bean="${jogoInstance}" field="gol"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jogoInstance?.dataJogo}">
				<li class="fieldcontain">
					<span id="dataJogo-label" class="property-label"><g:message code="jogo.dataJogo.label" default="Data Jogo" /></span>
					
						<span class="property-value" aria-labelledby="dataJogo-label"><g:formatDate date="${jogoInstance?.dataJogo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${jogoInstance?.categoria}">
				<li class="fieldcontain">
					<span id="categoria-label" class="property-label"><g:message code="jogo.categoria.label" default="Categoria" /></span>
					
						<span class="property-value" aria-labelledby="categoria-label"><g:link controller="categoria" action="show" id="${jogoInstance?.categoria?.id}">${jogoInstance?.categoria?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${jogoInstance?.local}">
				<li class="fieldcontain">
					<span id="local-label" class="property-label"><g:message code="jogo.local.label" default="Local" /></span>
					
						<span class="property-value" aria-labelledby="local-label"><g:link controller="local" action="show" id="${jogoInstance?.local?.id}">${jogoInstance?.local?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:jogoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${jogoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
