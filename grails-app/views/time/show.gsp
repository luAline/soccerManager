
<%@ page import="br.edu.luciana.soccerManager.Time" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'time.label', default: 'Time')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-time" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-time" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list time">
			
				<g:if test="${timeInstance?.numeroCamisa}">
				<li class="fieldcontain">
					<span id="numeroCamisa-label" class="property-label"><g:message code="time.numeroCamisa.label" default="Numero Camisa" /></span>
					
						<span class="property-value" aria-labelledby="numeroCamisa-label"><g:fieldValue bean="${timeInstance}" field="numeroCamisa"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeInstance?.aluno}">
				<li class="fieldcontain">
					<span id="aluno-label" class="property-label"><g:message code="time.aluno.label" default="Aluno" /></span>
					
						<span class="property-value" aria-labelledby="aluno-label"><g:link controller="aluno" action="show" id="${timeInstance?.aluno?.id}">${timeInstance?.aluno?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeInstance?.categoria}">
				<li class="fieldcontain">
					<span id="categoria-label" class="property-label"><g:message code="time.categoria.label" default="Categoria" /></span>
					
						<span class="property-value" aria-labelledby="categoria-label"><g:link controller="categoria" action="show" id="${timeInstance?.categoria?.id}">${timeInstance?.categoria?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${timeInstance?.observacao}">
				<li class="fieldcontain">
					<span id="observacao-label" class="property-label"><g:message code="time.observacao.label" default="Observacao" /></span>
					
						<span class="property-value" aria-labelledby="observacao-label"><g:fieldValue bean="${timeInstance}" field="observacao"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:timeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${timeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
