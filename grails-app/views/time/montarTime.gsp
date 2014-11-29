<%@ page import="br.edu.luciana.soccerManager.Time" %>

<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'time.label', default: 'Time')}" />

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

<div class="col-sm-10 col-lg-10">
    <ul class="breadcrumb">
        <li>
            <a class="home" href="${createLink(url: '../menu/telaInicio')}"><g:message code="default.home.label"/></a>
        </li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        <li><g:message code="default.show.label" args="[entityName]" /></li>
    </ul>
</div>

<div class="col-sm-10 col-lg-10">
    <div class="row">
        <div class="box col-md-12">
            <g:link controller="time" action="index">
                <button class="btn btn-default">
                    <i class="glyphicon glyphicon-list icon-white"></i>
                    <g:message code="default.list.label" args="[entityName]" />
                </button>
            </g:link>
            <g:link controller="time" action="show" id="${params.id}">
                <button class="btn btn-info">
                    <i class="glyphicon glyphicon-plus icon-white"></i>
                    <g:message code="soccerManager.voltar" args="[entityName]" />
                </button>
            </g:link>

        </div>
    </div>


    <div class="col-sm-12 col-lg-12">
        <div class="row">
            <div class="box col-md-12">
                <div class="box-inner">
                    <g:form action="adicionarAlunoTime" method="POST">

                        <g:hiddenField name="time" value="${timeInstance.id}"/>
                        <g:hiddenField name="timeAluno" value="${timeAlunoInstance?.id}"/>
                    <div class="box-header well">
                        <h2><i class="glyphicon glyphicon-picture"></i> <g:message code="default.show.label" args="[entityName]" /></h2>
                    </div>
                        <div class="row">
                            <div class="box-content">
                                <div class="form-group col-md-12">
                                    <label for="observacao">
                                        <g:message code="soccerManager.descricao" default="Observacao" />

                                    </label>
                                    <g:textField name="observacao" class="form-control" readonly="true" value="${timeInstance?.observacao}"/>
                                </div>
                            </div>
                        </div>
                    <div class="row">
                        <div class="box-content">
                            <div class="form-group col-md-2">
                                <label for="categoria${timeAlunoInstance?.aluno?.id}">
                                    <g:message code="categoria.label" default="Categoria" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField name="categoria" class="form-control"  readonly="true" value="${timeInstance?.categoria}"/>
                            </div>

                            <div class="form-group col-md-8">
                                <label class="control-label" for="aluno">
                                    <g:message code="aluno.label" default="Aluno" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <div class="controls">
                                    <g:select id="aluno" name="aluno" data-rel="chosen" from="${listaAlunos}" optionKey="id" required="" value="${timeAlunoInstance?.aluno?.id}" class="form-control many-to-one"/>
                                </div>
                            </div>

                            <div class="form-group col-md-2">
                                <label for="numeroCamisa">
                                    <g:message code="time.numCamisa" default="Nº Camisa" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField name="numeroCamisa" class="form-control" value="${timeAlunoInstance?.numeroCamisa}" required="true"/>
                            </div>
                        </div>
                    </div>

                    <div class="box-content center">
                        <g:if test="${timeAlunoInstance}">
                            <button type="submit" class="btn btn-info">
                                <i class="glyphicon glyphicon-plus icon-white"></i>
                                <g:message code="default.edit.label" args="[entityName]" />
                            </button>
                        </g:if>
                        <g:else>
                            <button type="submit" class="btn btn-success">
                                <i class="glyphicon glyphicon-plus icon-white"></i>
                                <g:message code="default.add.label" args="[entityName]" />
                            </button>
                        </g:else>

                    </div>
                    </g:form>
                    <g:render template="timeLista"/>
                </div>
            </div>
        </div>
    </div>
</div>