
<%@ page import="br.edu.luciana.soccerManager.Empresa" %>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'empresa.label', default: 'Empresa')}" />

<div class="col-sm-10 col-lg-10">
    <ul class="breadcrumb">
        <li>
            <a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
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
            <g:link controller="empresa" action="index">
                <button class="btn btn-default">
                    <i class="glyphicon glyphicon-list icon-white"></i>
                    <g:message code="default.list.label" args="[entityName]" />
                </button>
            </g:link>
            <g:link controller="empresa" action="create">
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
                            <div class="form-group col-md-8">
                                <label for="razaoSocial">
                                    <g:message code="empresa.razaoSocial" default="Razao Social" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField name="razaoSocial" class="form-control" readonly="true" value="${empresaInstance?.razaoSocial}"/>
                            </div>

                            <div class="form-group col-md-4">
                                <label for="cnpj">
                                    <g:message code="empresa.cnpj" default="Cnpj" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField name="cnpj" class="form-control" type="number" value="${empresaInstance.cnpj}" readonly="true"/>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="box-content">
                            <div class="form-group col-md-6">
                                <label for="nomeFantasia">
                                    <g:message code="empresa.nomeFantasia" default="Nome Fantasia" />

                                </label>
                                <g:textField name="nomeFantasia" class="form-control" readonly="true" value="${empresaInstance?.nomeFantasia}"/>
                            </div>

                            <div class="form-group col-md-3">
                                <label for="inscricaoEstadual">
                                    <g:message code="empresa.inscricaoEstadual" default="Inscricao Estadual" />

                                </label>
                                <g:textField name="inscricaoEstadual" class="form-control" readonly="true" value="${empresaInstance?.inscricaoEstadual}"/>
                            </div>

                            <div class="form-group col-md-3">
                                <label for="inscricaoMunicipal">
                                    <g:message code="empresa.inscricaoMunicipal" default="Inscricao Municipal" />

                                </label>
                                <g:textField name="inscricaoMunicipal" class="form-control" readonly="true" value="${empresaInstance?.inscricaoMunicipal}"/>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="box-content">
                            <div class="form-group col-md-3">
                                <label for="responsavel">
                                    <g:message code="empresa.responsavel" default="Responsavel" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField name="responsavel" readonly="true" class="form-control" value="${empresaInstance?.responsavel}"/>
                            </div>

                            <div class="form-group col-md-3">
                                <label for="telefone">
                                    <g:message code="soccerManager.telefone" default="Telefone" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:field name="telefone" type="number" class="form-control" value="${empresaInstance.telefone}" readonly="true"/>
                            </div>

                            <div class="form-group col-md-3">
                                <label for="email">
                                    <g:message code="empresa.email" default="Email" />

                                </label>
                                <g:textField name="email" class="form-control" readonly="true" value="${empresaInstance?.email}"/>
                            </div>

                            <div class="form-group col-md-3">
                                <label for="site">
                                    <g:message code="empresa.site" default="Site" />

                                </label>
                                <g:textField name="site" class="form-control" readonly="true" value="${empresaInstance?.site}"/>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="box-content">
                            <div class="form-group col-md-7">
                                <label for="logradouro">
                                    <g:message code="endereco.logradouro" default="Logradouro" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField class="form-control" name="logradouro" readonly="true" value="${empresaInstance?.logradouro}"/>
                            </div>

                            <div class="form-group col-md-1">
                                <label for="numero">
                                    <g:message code="endereco.numero" default="Nº" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField class="form-control" name="numero" readonly="true" value="${empresaInstance?.numero}"/>
                            </div>

                            <div class="form-group col-md-4">
                                <label for="bairro">
                                    <g:message code="endereco.bairro" default="Bairro" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField class="form-control" name="bairro" readonly="true" value="${empresaInstance?.bairro}"/>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="box-content">
                            <div class="form-group col-md-6">
                                <label for="complemento">
                                    <g:message code="endereco.complemento" default="Complemento" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField class="form-control" name="complemento" readonly="true" value="${empresaInstance?.complemento}"/>
                            </div>

                            <div class="form-group col-md-3">
                                <label for="cep">
                                    <g:message code="endereco.cep" default="CEP" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField class="form-control" name="cep" readonly="true" value="${empresaInstance?.cep}"/>
                            </div>

                            <div class="form-group col-md-3">
                                <label for="cidade">
                                    <g:message code="cidade.label" default="Cidade" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField class="form-control" name="cidade" readonly="true" value="${empresaInstance?.cidade}"/>
                            </div>
                        </div>
                    </div>

                    <div class="box-content">
                        <div class="form-group">
                            <g:form url="[resource:empresaInstance, action:'edit']">
                                <g:actionSubmit class="edit btn btn-success col-lg-1" action="edit" id="${empresaInstance.id}" resource="${empresaInstance}" value="${message(code: 'default.button.edit.label', default: 'Edit')}"/>
                            </g:form>

                            <g:form url="[resource:empresaInstance, action:'delete']" method="DELETE">
                                <g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                            </g:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
