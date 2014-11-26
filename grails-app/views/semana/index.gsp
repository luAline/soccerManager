
<%@ page import="br.edu.luciana.soccerManager.Semana" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'semana.label', default: 'Semana')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-semana" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-semana" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="domingo" title="${message(code: 'semana.domingo.label', default: 'Domingo')}" />
					
						<g:sortableColumn property="segunda" title="${message(code: 'semana.segunda.label', default: 'Segunda')}" />
					
						<g:sortableColumn property="terca" title="${message(code: 'semana.terca.label', default: 'Terca')}" />
					
						<g:sortableColumn property="quarta" title="${message(code: 'semana.quarta.label', default: 'Quarta')}" />
					
						<g:sortableColumn property="quinta" title="${message(code: 'semana.quinta.label', default: 'Quinta')}" />
					
						<g:sortableColumn property="sexta" title="${message(code: 'semana.sexta.label', default: 'Sexta')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${semanaInstanceList}" status="i" var="semanaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${semanaInstance.id}">${fieldValue(bean: semanaInstance, field: "domingo")}</g:link></td>
					
						<td><g:formatBoolean boolean="${semanaInstance.segunda}" /></td>
					
						<td><g:formatBoolean boolean="${semanaInstance.terca}" /></td>
					
						<td><g:formatBoolean boolean="${semanaInstance.quarta}" /></td>
					
						<td><g:formatBoolean boolean="${semanaInstance.quinta}" /></td>
					
						<td><g:formatBoolean boolean="${semanaInstance.sexta}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${semanaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
