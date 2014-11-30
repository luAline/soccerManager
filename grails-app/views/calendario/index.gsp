
<%@ page import="br.edu.luciana.soccerManager.Calendario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'calendario.label', default: 'Calendario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-calendario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-calendario" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="titulo" title="${message(code: 'calendario.titulo.label', default: 'Titulo')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'calendario.descricao.label', default: 'Descricao')}" />
					
						<th><g:message code="calendario.local.label" default="Local" /></th>
					
						<g:sortableColumn property="dataInicial" title="${message(code: 'calendario.dataInicial.label', default: 'Data Inicial')}" />
					
						<g:sortableColumn property="dataFinal" title="${message(code: 'calendario.dataFinal.label', default: 'Data Final')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${calendarioInstanceList}" status="i" var="calendarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${calendarioInstance.id}">${fieldValue(bean: calendarioInstance, field: "titulo")}</g:link></td>
					
						<td>${fieldValue(bean: calendarioInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: calendarioInstance, field: "local")}</td>
					
						<td><g:formatDate date="${calendarioInstance.dataInicial}" /></td>
					
						<td><g:formatDate date="${calendarioInstance.dataFinal}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${calendarioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
