
<%@ page import="br.edu.luciana.soccerManager.Local" %>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'local.label', default: 'Local')}" />
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
            <g:link controller="local" action="index">
                <button class="btn btn-default">
                    <i class="glyphicon glyphicon-list icon-white"></i>
                    <g:message code="default.list.label" args="[entityName]" />
                </button>
            </g:link>
            <g:link controller="local" action="create">
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
                                    <g:message code="local.label" default="Nome" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField name="nome" readonly="true" class="form-control" value="${localInstance?.nome}"/>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="observacao">
                                    <g:message code="soccerManager.observacao" default="Observacao" />

                                </label>
                                <g:textField class="form-control" readonly="true" name="observacao" value="${localInstance?.observacao}"/>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="box-content">
                            <div class="form-group col-md-8">
                                <label for="logradouro">
                                    <g:message code="endereco.logradouro" default="Logradouro" />

                                </label>
                                <g:textField class="form-control" name="logradouro" readonly="true" value="${localInstance?.logradouro}"/>
                            </div>
                            <div class="form-group col-md-1">
                                <label for="numero">
                                    <g:message code="endereco.numero" default="Numero" />

                                </label>
                                <g:textField class="form-control" name="numero" readonly="true" value="${localInstance?.numero}"/>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="numero">
                                    <g:message code="endereco.cep" default="CEP" />

                                </label>
                                <g:textField class="form-control" name="cep" readonly="true" value="${localInstance?.cep}"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="box-content">
                            <div class="form-group col-md-6">
                                <label for="complemento">
                                    <g:message code="endereco.complemento" default="Complemento" />

                                </label>
                                <g:textField class="form-control" name="complemento" readonly="true" value="${localInstance?.complemento}"/>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="bairro">
                                    <g:message code="endereco.bairro" default="Bairro" />

                                </label>
                                <g:textField class="form-control" name="bairro" readonly="true" value="${localInstance?.bairro}"/>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="cidade">
                                    <g:message code="cidade.label" default="Cidade" />

                                </label>
                                <g:textField class="form-control" name="cidade" readonly="true" value="${localInstance?.cidade?.nome}"/>
                            </div>
                        </div>
                    </div>

                    <div class="box-content">
                        <div class="form-group">
                            <g:form url="[resource:localInstance, action:'edit']">
                                <g:actionSubmit class="edit btn btn-success col-lg-1" action="edit" id="${localInstance.id}" resource="${localInstance}" value="${message(code: 'default.button.edit.label', default: 'Edit')}"/>
                            </g:form>

                            <g:form url="[resource:localInstance, action:'delete']" method="DELETE">
                                <g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                            </g:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

