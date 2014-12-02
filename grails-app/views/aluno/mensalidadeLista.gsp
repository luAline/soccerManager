<%@ page import="br.edu.luciana.soccerManager.Aluno" %>

<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'aluno.label', default: 'Aluno')}" />

<div class="col-sm-10 col-lg-10">
    <ul class="breadcrumb">
        <li>
            <a class="home" href="${createLink(url: '../menu/telaInicio')}"><g:message code="default.home.label"/></a>
        </li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        <li><g:message code="soccerManager.add"/> Mensalidade</li>
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

                    <div class="row">
                        <div class="box-content">
                            <div class="form-group col-md-2">
                                <label for="matricula">
                                    <g:message code="aluno.matricula" default="Matricula" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField name="matricula" class="form-control" readonly="true" value="${alunoInstance?.matricula}"/>
                            </div>

                            <div class="form-group col-md-7">
                                <label for="nome">
                                    <g:message code="soccerManager.nome" default="Nome" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField name="nome" readonly="true" class="form-control" value="${alunoInstance?.nome}"/>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="box-content">
                            <div class="form-group col-md-2">
                                <label for="valorMensalidade">
                                    <g:message code="aluno.valorMensalidade" default="Valor Mensalidade" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField name="valorMensalidade" class="form-control" readonly="true" value="${formatNumber(type: 'currency', number: alunoInstance?.valorMensalidade)}"/>
                            </div>

                            <div class="form-group col-md-3">
                                <label for="vencimentoMensalidade">
                                    <g:message code="aluno.vencimentoMensalidade" default="Vencimento Mensalidade" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField name="vencimentoMensalidade" class="form-control" readonly="true" value="${alunoInstance?.vencimentoMensalidade}"/>
                            </div>
                        </div>
                    </div>

                    <h4>Pagamento</h4>
                    <g:form action="pagarMensalidade" method="POST">

                        <g:hiddenField name="aluno" value="${alunoInstance?.id}"/>
                        <g:hiddenField name="alunoMensalidade" value="${alunoMensalidadeInstance?.id}"/>
                    <div class="row">
                        <div class="box-content">
                            <div class="form-group col-md-2">
                                <label for="valor">
                                    <g:message code="aluno.valorMensalidade" default="Valor Mensalidade" />
                                </label>
                                <g:textField name="valor" class="form-control" value="${alunoMensalidadeInstance?.valor}"/>
                            </div>

                            <div class="form-group col-md-2">
                                <label for="dataPagamento">
                                    <g:message code="data.pagamento" default="Data Pagamento" />
                                </label>
                                <g:datePicker name="dataPagamento" precision="day"  value="${alunoMensalidadeInstance?.dataPagamento}"  />
                            </div>

                            <div class="form-group col-md-8">
                                <label for="observacao">
                                    <g:message code="soccerManager.observacao" default="Valor Mensalidade" />
                                </label>
                                <g:textField name="observacao" class="form-control" value="${alunoMensalidadeInstance?.observacao}"/>
                            </div>
                        </div>
                    </div>

                        <div class="box-content center">
                            <button type="submit" class="btn btn-info">
                                <i class="glyphicon glyphicon-plus icon-white"></i>
                                <g:message code="aluno.pagarMensalidade" />
                            </button>
                        </div>
                    </g:form>
                    <h4>Lista Mensalidades</h4>
                    <div class="box-content">
                        <table class="table table-bordered table-striped table-condensed" id="listaMensalidade">
                            <thead>
                            <tr>
                                <th><g:message code="soccerManager.acao"/> </th>
                                <th><g:message code="data.pagamento"/> </th>
                                <th><g:message code="aluno.valorMensalidade"/> </th>
                                <th><g:message code="soccerManager.observacao"/> </th>
                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${listaAlunoMensalidade}" var="alunoMensalidadeInstance">
                            <tr>
                                <td><g:link action="excluirPagamento" id="${alunoMensalidadeInstance.id}"><i class="glyphicon glyphicon-trash red"></i></g:link></td>
                                <td>${alunoMensalidadeInstance?.dataPagamentoString}</td>
                                <td>${formatNumber(type: 'currency', number: alunoMensalidadeInstance?.valor)}</td>
                                <td>${alunoMensalidadeInstance?.observacao}</td>
                            </tr>
                            </g:each>
                            </tbody>
                        </table>
                        <div class="pagination">
                            <g:paginate total="${alunoInstanceCount ?: 0}" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>