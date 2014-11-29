<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'jogo.label', default: 'Jogo')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-jogo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(url: '../menu/telaInicio')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-jogo" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${jogoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${jogoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:jogoInstance, action:'save']" >


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




				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
