<%@ page import="br.edu.luciana.soccerManager.Aluno" %>

<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'aluno.label', default: 'Aluno')}" />

<div class="col-sm-10 col-lg-10">
    <ul class="breadcrumb">
        <li>
            <a class="home" href="${createLink(url: '../menu/telaInicio')}"><g:message code="default.home.label"/></a>
        </li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        <li><g:message code="soccerManager.add"/> Histórico</li>
    </ul>
</div>

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

<div class="col-sm-10 col-lg-10">
    <g:link controller="aluno" action="index">
        <button class="btn btn-default">
            <i class="glyphicon glyphicon-list icon-white"></i>
            <g:message code="default.list.label" args="[entityName]" />
        </button>
    </g:link>

    <g:link controller="aluno" action="show" id="${params.id}">
        <button class="btn btn-default">
            <i class="glyphicon glyphicon-arrow-left icon-white"></i>
            <g:message code="soccerManager.voltar" />
        </button>
    </g:link>

    <div class="col-sm-12 col-lg-12">
        <div class="row">
            <div class="box col-md-12">
                <div class="box-inner">
                    <div class="box-header well">
                        <h2><i class="glyphicon glyphicon-picture"></i> <g:message code="default.show.label" args="[entityName]" /></h2>
                    </div>
                    <g:form action="adicionarHistorico" method="POST">

                        <g:hiddenField name="alunoHistorico" value="${alunoHistoricoInstance?.id}"/>
                        <div class="row">
                            <div class="box-content">
                                <div class="form-group col-md-2">
                                    <label for="dataAnotacao">
                                        <g:message code="data.anotacao" default="Data Pagamento" />
                                    </label>
                                    <g:datePicker name="dataAnotacao" precision="day"  value="${alunoHistoricoInstance?.dataAnotacao}"  />
                                </div>

                                <div class="form-group col-md-10">
                                    <label for="anotacao">
                                        <g:message code="aluno.anotacao" default="Anotação" />

                                    </label>
                                    <g:textArea name="anotacao" class="autogrow form-control" value="${alunoHistoricoInstance?.anotacao}"/>
                                </div>
                            </div>
                        </div>

                        <div class="box-content center">
                            <button type="button" class="btn btn-info">
                                <i class="glyphicon glyphicon-plus icon-white"></i>
                                <g:message code="soccerManager.add" />
                            </button>
                        </div>
                    </g:form>

                    <div class="row">
                        <div class="box-content">
                            <g:each in="${listaHistorico}" var="alunoHistoricoInstance">
                                <div class="form-group col-md-12">
                                    <div class="well">
                                        <h5 style="text-align: center">${alunoHistoricoInstance?.dataAnotacaoString}</h5>
                                        <p>${alunoHistoricoInstance?.anotacao}</p>
                                    </div>
                                </div>
                            </g:each>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>