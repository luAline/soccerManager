
<%@ page import="br.edu.luciana.soccerManager.Jogo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'jogo.label', default: 'Jogo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-jogo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(url: '../menu/telaInicio')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-jogo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descricao" title="${message(code: 'jogo.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="adversario" title="${message(code: 'jogo.adversario.label', default: 'Adversario')}" />
					
						<th><g:message code="jogo.time.label" default="Time" /></th>
					
						<g:sortableColumn property="cartao" title="${message(code: 'jogo.cartao.label', default: 'Cartao')}" />
					
						<g:sortableColumn property="falta" title="${message(code: 'jogo.falta.label', default: 'Falta')}" />
					
						<g:sortableColumn property="gol" title="${message(code: 'jogo.gol.label', default: 'Gol')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${jogoInstanceList}" status="i" var="jogoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${jogoInstance.id}">${fieldValue(bean: jogoInstance, field: "descricao")}</g:link></td>
					
						<td>${fieldValue(bean: jogoInstance, field: "adversario")}</td>
					
						<td>${fieldValue(bean: jogoInstance, field: "time")}</td>
					
						<td>${fieldValue(bean: jogoInstance, field: "cartao")}</td>
					
						<td>${fieldValue(bean: jogoInstance, field: "falta")}</td>
					
						<td>${fieldValue(bean: jogoInstance, field: "gol")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${jogoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
