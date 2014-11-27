
<%@ page import="br.edu.luciana.soccerManager.Usuario" %>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />

<div class="col-sm-10 col-lg-10">
    <ul class="breadcrumb">
        <li>
            <a class="home" href="${createLink(url: '../menu/telaInicio')}"><g:message code="default.home.label"/></a>
        </li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        <li><g:message code="default.show.label" args="[entityName]" /></li>
    </ul>
</div>

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

<div class="col-sm-10 col-lg-10">
    <div class="row">
        <div class="box col-md-12">
            <g:link controller="usuario" action="index">
                <button class="btn btn-default">
                    <i class="glyphicon glyphicon-list icon-white"></i>
                    <g:message code="default.list.label" args="[entityName]" />
                </button>
            </g:link>
            <g:link controller="usuario" action="create">
                <button class="btn btn-info">
                    <i class="glyphicon glyphicon-plus icon-white"></i>
                    <g:message code="default.new.label" args="[entityName]" />
                </button>
            </g:link>
        </div>
    </div>

    <div class="col-sm-12 col-lg-12">
        <div class="row">
            <div class="box col-md-12">
                <div class="box-inner">
                    <div class="box-header well">
                        <h2><i class="glyphicon glyphicon-picture"></i> <g:message code="default.show.label" args="[entityName]" /></h2>
                    </div>

                    <div class="row">
                        <div class="box-content">
                            <div class="form-group col-md-6">
                                <label for="nome">
                                    <g:message code="soccerManager.nome" default="Nome" />

                                </label>
                                <g:textField class="form-control" name="nome" readonly="true" value="${usuarioInstance?.nome}"/>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="usuario">
                                    <g:message code="usuario.label" default="Usuario" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField class="form-control" name="usuario" readonly="true" value="${usuarioInstance?.usuario}"/>
                            </div>

                            <div class="form-group col-md-3">
                                <label for="senha">
                                    <g:message code="usuario.senha" default="Senha" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:passwordField name="senha" class="form-control" readonly="true" value="${usuarioInstance?.senha}" />
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

</div>
