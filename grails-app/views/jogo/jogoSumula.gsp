<%@ page import="br.edu.luciana.soccerManager.Jogo" %>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'jogo.label', default: 'Jogo')}" />

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
            <g:link controller="jogo" action="index">
                <button class="btn btn-default">
                    <i class="glyphicon glyphicon-list icon-white"></i>
                    <g:message code="default.list.label" args="[entityName]" />
                </button>
            </g:link>
            <g:link controller="jogo" action="show" id="${params.id}">
                <button class="btn btn-default">
                    <i class="glyphicon glyphicon-arrow-left icon-white"></i>
                    <g:message code="soccerManager.voltar" args="[entityName]" />
                </button>
            </g:link>
        </div>
    </div>

    <div class="col-sm-12 col-lg-12">
        <div class="row">
            <div class="box col-md-12">
                <div class="box-inner">
                <g:form action="adicionarJogoSumula" method="POST">
                    <g:hiddenField name="jogo" value="${jogoInstance?.id}"/>

                    <div class="box-header well">
                        <h2><i class="glyphicon glyphicon-picture"></i> <g:message code="default.show.label" args="[entityName]" /></h2>
                    </div>

                    <div class="row">
                        <div class="box-content">
                            <div class="form-group col-md-7">
                                <label for="descricao">
                                    <g:message code="soccerManager.descricao" default="Descricao" />

                                </label>
                                <g:textField name="descricao" class="form-control" readonly="true" value="${jogoInstance?.descricao}"/>
                            </div>
                            <div class="form-group col-md-5">
                                <label for="adversario">
                                    <g:message code="jogo.adversario" default="Adversario" />

                                </label>
                                <g:textField name="adversario" class="form-control" readonly="true" value="${jogoInstance?.adversario}"/>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="box-content">
                            <div class="form-group col-md-6">
                                <label for="time">
                                    <g:message code="time.label" default="Time" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField name="time" class="form-control" readonly="true" value="${jogoInstance?.time}"/>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="dataJogo">
                                    <g:message code="data.jogo" default="Data Jogo" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField name="dataJogo" readonly="true" class="form-control" value="${formatDate(format: 'dd/MM/yyyy', date: jogoInstance?.dataJogo)}"/>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="categoria">
                                    <g:message code="categoria.label" default="Categoria" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField name="categoria" class="form-control" readonly="true" value="${jogoInstance?.categoria}"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="box-content">
                            <div class="form-group col-md-12">
                                <label for="local">
                                    <g:message code="local.label" default="Local" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField name="local" class="form-control" readonly="true" value="${jogoInstance?.local}"/>
                            </div>
                        </div>
                    </div>
                    <hr>

                </g:form>
                     <g:render template="jogoSumulaLista" />
                </div>
            </div>
        </div>
    </div>
</div>