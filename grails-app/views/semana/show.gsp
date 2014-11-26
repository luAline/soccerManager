
<%@ page import="br.edu.luciana.soccerManager.Semana" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'semana.label', default: 'Semana')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-semana" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-semana" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list semana">
			
				<g:if test="${semanaInstance?.domingo}">
				<li class="fieldcontain">
					<span id="domingo-label" class="property-label"><g:message code="semana.domingo.label" default="Domingo" /></span>
					
						<span class="property-value" aria-labelledby="domingo-label"><g:formatBoolean boolean="${semanaInstance?.domingo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${semanaInstance?.segunda}">
				<li class="fieldcontain">
					<span id="segunda-label" class="property-label"><g:message code="semana.segunda.label" default="Segunda" /></span>
					
						<span class="property-value" aria-labelledby="segunda-label"><g:formatBoolean boolean="${semanaInstance?.segunda}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${semanaInstance?.terca}">
				<li class="fieldcontain">
					<span id="terca-label" class="property-label"><g:message code="semana.terca.label" default="Terca" /></span>
					
						<span class="property-value" aria-labelledby="terca-label"><g:formatBoolean boolean="${semanaInstance?.terca}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${semanaInstance?.quarta}">
				<li class="fieldcontain">
					<span id="quarta-label" class="property-label"><g:message code="semana.quarta.label" default="Quarta" /></span>
					
						<span class="property-value" aria-labelledby="quarta-label"><g:formatBoolean boolean="${semanaInstance?.quarta}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${semanaInstance?.quinta}">
				<li class="fieldcontain">
					<span id="quinta-label" class="property-label"><g:message code="semana.quinta.label" default="Quinta" /></span>
					
						<span class="property-value" aria-labelledby="quinta-label"><g:formatBoolean boolean="${semanaInstance?.quinta}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${semanaInstance?.sexta}">
				<li class="fieldcontain">
					<span id="sexta-label" class="property-label"><g:message code="semana.sexta.label" default="Sexta" /></span>
					
						<span class="property-value" aria-labelledby="sexta-label"><g:formatBoolean boolean="${semanaInstance?.sexta}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${semanaInstance?.sabado}">
				<li class="fieldcontain">
					<span id="sabado-label" class="property-label"><g:message code="semana.sabado.label" default="Sabado" /></span>
					
						<span class="property-value" aria-labelledby="sabado-label"><g:formatBoolean boolean="${semanaInstance?.sabado}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:semanaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${semanaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
