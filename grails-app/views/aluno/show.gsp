
<%@ page import="br.edu.luciana.soccerManager.Aluno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aluno.label', default: 'Aluno')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-aluno" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-aluno" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list aluno">
			
				<g:if test="${alunoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="aluno.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${alunoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.matricula}">
				<li class="fieldcontain">
					<span id="matricula-label" class="property-label"><g:message code="aluno.matricula.label" default="Matricula" /></span>
					
						<span class="property-value" aria-labelledby="matricula-label"><g:fieldValue bean="${alunoInstance}" field="matricula"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.dataNascimento}">
				<li class="fieldcontain">
					<span id="dataNascimento-label" class="property-label"><g:message code="aluno.dataNascimento.label" default="Data Nascimento" /></span>
					
						<span class="property-value" aria-labelledby="dataNascimento-label"><g:formatDate date="${alunoInstance?.dataNascimento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.idade}">
				<li class="fieldcontain">
					<span id="idade-label" class="property-label"><g:message code="aluno.idade.label" default="Idade" /></span>
					
						<span class="property-value" aria-labelledby="idade-label"><g:fieldValue bean="${alunoInstance}" field="idade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.RG}">
				<li class="fieldcontain">
					<span id="RG-label" class="property-label"><g:message code="aluno.RG.label" default="RG" /></span>
					
						<span class="property-value" aria-labelledby="RG-label"><g:fieldValue bean="${alunoInstance}" field="RG"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.CPF}">
				<li class="fieldcontain">
					<span id="CPF-label" class="property-label"><g:message code="aluno.CPF.label" default="CPF" /></span>
					
						<span class="property-value" aria-labelledby="CPF-label"><g:fieldValue bean="${alunoInstance}" field="CPF"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="aluno.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${alunoInstance}" field="sexo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.responsavel}">
				<li class="fieldcontain">
					<span id="responsavel-label" class="property-label"><g:message code="aluno.responsavel.label" default="Responsavel" /></span>
					
						<span class="property-value" aria-labelledby="responsavel-label"><g:fieldValue bean="${alunoInstance}" field="responsavel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.responsavelRG}">
				<li class="fieldcontain">
					<span id="responsavelRG-label" class="property-label"><g:message code="aluno.responsavelRG.label" default="Responsavel RG" /></span>
					
						<span class="property-value" aria-labelledby="responsavelRG-label"><g:fieldValue bean="${alunoInstance}" field="responsavelRG"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.responsavelCPF}">
				<li class="fieldcontain">
					<span id="responsavelCPF-label" class="property-label"><g:message code="aluno.responsavelCPF.label" default="Responsavel CPF" /></span>
					
						<span class="property-value" aria-labelledby="responsavelCPF-label"><g:fieldValue bean="${alunoInstance}" field="responsavelCPF"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.parentesco}">
				<li class="fieldcontain">
					<span id="parentesco-label" class="property-label"><g:message code="aluno.parentesco.label" default="Parentesco" /></span>
					
						<span class="property-value" aria-labelledby="parentesco-label"><g:fieldValue bean="${alunoInstance}" field="parentesco"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.telefone}">
				<li class="fieldcontain">
					<span id="telefone-label" class="property-label"><g:message code="aluno.telefone.label" default="Telefone" /></span>
					
						<span class="property-value" aria-labelledby="telefone-label"><g:fieldValue bean="${alunoInstance}" field="telefone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.valorMensalidade}">
				<li class="fieldcontain">
					<span id="valorMensalidade-label" class="property-label"><g:message code="aluno.valorMensalidade.label" default="Valor Mensalidade" /></span>
					
						<span class="property-value" aria-labelledby="valorMensalidade-label"><g:fieldValue bean="${alunoInstance}" field="valorMensalidade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.vencimentoMensalidade}">
				<li class="fieldcontain">
					<span id="vencimentoMensalidade-label" class="property-label"><g:message code="aluno.vencimentoMensalidade.label" default="Vencimento Mensalidade" /></span>
					
						<span class="property-value" aria-labelledby="vencimentoMensalidade-label"><g:formatDate date="${alunoInstance?.vencimentoMensalidade}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.dataCadastro}">
				<li class="fieldcontain">
					<span id="dataCadastro-label" class="property-label"><g:message code="aluno.dataCadastro.label" default="Data Cadastro" /></span>
					
						<span class="property-value" aria-labelledby="dataCadastro-label"><g:formatDate date="${alunoInstance?.dataCadastro}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.altura}">
				<li class="fieldcontain">
					<span id="altura-label" class="property-label"><g:message code="aluno.altura.label" default="Altura" /></span>
					
						<span class="property-value" aria-labelledby="altura-label"><g:fieldValue bean="${alunoInstance}" field="altura"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.peso}">
				<li class="fieldcontain">
					<span id="peso-label" class="property-label"><g:message code="aluno.peso.label" default="Peso" /></span>
					
						<span class="property-value" aria-labelledby="peso-label"><g:fieldValue bean="${alunoInstance}" field="peso"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.imc}">
				<li class="fieldcontain">
					<span id="imc-label" class="property-label"><g:message code="aluno.imc.label" default="Imc" /></span>
					
						<span class="property-value" aria-labelledby="imc-label"><g:fieldValue bean="${alunoInstance}" field="imc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.pressaoArterial}">
				<li class="fieldcontain">
					<span id="pressaoArterial-label" class="property-label"><g:message code="aluno.pressaoArterial.label" default="Pressao Arterial" /></span>
					
						<span class="property-value" aria-labelledby="pressaoArterial-label"><g:fieldValue bean="${alunoInstance}" field="pressaoArterial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.alergia}">
				<li class="fieldcontain">
					<span id="alergia-label" class="property-label"><g:message code="aluno.alergia.label" default="Alergia" /></span>
					
						<span class="property-value" aria-labelledby="alergia-label"><g:fieldValue bean="${alunoInstance}" field="alergia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.deficiencia}">
				<li class="fieldcontain">
					<span id="deficiencia-label" class="property-label"><g:message code="aluno.deficiencia.label" default="Deficiencia" /></span>
					
						<span class="property-value" aria-labelledby="deficiencia-label"><g:fieldValue bean="${alunoInstance}" field="deficiencia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.ativo}">
				<li class="fieldcontain">
					<span id="ativo-label" class="property-label"><g:message code="aluno.ativo.label" default="Ativo" /></span>
					
						<span class="property-value" aria-labelledby="ativo-label"><g:formatBoolean boolean="${alunoInstance?.ativo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.observacao}">
				<li class="fieldcontain">
					<span id="observacao-label" class="property-label"><g:message code="aluno.observacao.label" default="Observacao" /></span>
					
						<span class="property-value" aria-labelledby="observacao-label"><g:fieldValue bean="${alunoInstance}" field="observacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.categoria}">
				<li class="fieldcontain">
					<span id="categoria-label" class="property-label"><g:message code="aluno.categoria.label" default="Categoria" /></span>
					
						<span class="property-value" aria-labelledby="categoria-label"><g:link controller="categoria" action="show" id="${alunoInstance?.categoria?.id}">${alunoInstance?.categoria?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.logradouro}">
				<li class="fieldcontain">
					<span id="logradouro-label" class="property-label"><g:message code="aluno.logradouro.label" default="Logradouro" /></span>
					
						<span class="property-value" aria-labelledby="logradouro-label"><g:fieldValue bean="${alunoInstance}" field="logradouro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.numero}">
				<li class="fieldcontain">
					<span id="numero-label" class="property-label"><g:message code="aluno.numero.label" default="Numero" /></span>
					
						<span class="property-value" aria-labelledby="numero-label"><g:fieldValue bean="${alunoInstance}" field="numero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.complemento}">
				<li class="fieldcontain">
					<span id="complemento-label" class="property-label"><g:message code="aluno.complemento.label" default="Complemento" /></span>
					
						<span class="property-value" aria-labelledby="complemento-label"><g:fieldValue bean="${alunoInstance}" field="complemento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.bairro}">
				<li class="fieldcontain">
					<span id="bairro-label" class="property-label"><g:message code="aluno.bairro.label" default="Bairro" /></span>
					
						<span class="property-value" aria-labelledby="bairro-label"><g:fieldValue bean="${alunoInstance}" field="bairro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.cep}">
				<li class="fieldcontain">
					<span id="cep-label" class="property-label"><g:message code="aluno.cep.label" default="Cep" /></span>
					
						<span class="property-value" aria-labelledby="cep-label"><g:fieldValue bean="${alunoInstance}" field="cep"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.cidade}">
				<li class="fieldcontain">
					<span id="cidade-label" class="property-label"><g:message code="aluno.cidade.label" default="Cidade" /></span>
					
						<span class="property-value" aria-labelledby="cidade-label"><g:link controller="cidade" action="show" id="${alunoInstance?.cidade?.id}">${alunoInstance?.cidade?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:alunoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${alunoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
