<%@ page import="br.edu.luciana.soccerManager.Calendario" %>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'calendario.evento', default: 'Evento')}" />

<div class="col-sm-10 col-lg-10">
    <ul class="breadcrumb">
        <li>
            <a class="home" href="${createLink(url: '../menu/telaInicio')}"><g:message code="default.home.label"/></a>
        </li>
        <li><g:link action="calendario"><g:message code="calendario.label" /></g:link></li>
        <li><g:message code="default.edit.label" args="[entityName]" /></li>
    </ul>
</div>

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<g:hasErrors bean="${calendarioInstance}">
    <ul class="errors" role="alert">
        <g:eachError bean="${calendarioInstance}" var="error">
            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
        </g:eachError>
    </ul>
</g:hasErrors>

<div class="col-sm-10 col-lg-10">
    <div class="row">
        <div class="box col-md-12">
            <g:link controller="calendario" action="calendario">
                <button class="btn btn-default">
                    <i class="glyphicon glyphicon-list icon-white"></i>
                    <g:message code="calendario.label" />
                </button>
            </g:link>
        </div>
    </div>

    <div class="row">
        <div class="box col-md-12">
            <div class="box-inner">
                <div class="box-header well">
                    <h2><i class="glyphicon glyphicon-picture"></i> <g:message code="default.edit.label" args="[entityName]" /></h2>
                </div>

                <g:form url="[resource:calendarioInstance, action:'update']" method="PUT" >
                    <g:hiddenField name="version" value="${calendarioInstance?.version}" />
                    <div class="box-content">
                        <div class="form-group">
                            <g:render template="form"/>
                        </div>
                    </div>
                    <div class="box-content">
                        <div class="form-group">
                            <g:actionSubmit class="save btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                        </div>
                    </div>
                </g:form>
            </div>
        </div>
    </div>
</div>

