
<%@ page import="br.edu.luciana.soccerManager.Funcionario" %>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'funcionario.label', default: 'Funcionario')}" />

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
            <g:link controller="funcionario" action="index">
                <button class="btn btn-default">
                    <i class="glyphicon glyphicon-list icon-white"></i>
                    <g:message code="default.list.label" args="[entityName]" />
                </button>
            </g:link>
            <g:link controller="funcionario" action="create">
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
                        <div class="checkbox col-md-2">
                            <label>
                                <input type="checkbox" disabled="" value="${funcionarioInstance?.ativo}">
                                <g:message code="soccerManager.ativo" default="Ativo" />
                            </label>
                        </div>

                        <div class="form-group col-md-5">
                            <label for="nome">
                                <g:message code="soccerManager.nome" default="Nome" />
                                <span class="required-indicator">*</span>
                            </label>
                            <g:textField class="form-control" name="nome" readonly="true" value="${funcionarioInstance?.nome}"/>
                        </div>

                        <div class="form-group col-md-2">
                            <label>
                                <g:message code="data.nascimento" default="Data Nascimento" />
                                <span class="required-indicator">*</span>
                            </label>
                            <g:textField name="dataNascimento" id="dataNascimento" class="form-control" readonly="true" value="${formatDate(format: 'dd/MM/yyyy', date: funcionarioInstance?.dataNascimento)}"/>
                        </div>

                        <div class="form-group col-md-2">
                            <label for="dataCadastro">
                                <g:message code="data.cadastro" default="Data Cadastro" />
                                <span class="required-indicator">*</span>
                            </label>
                            <g:textField name="dataCadastro" id="dataCadastro" class="form-control" readonly="true" value="${formatDate(format: 'dd/MM/yyyy', date: funcionarioInstance?.dataCadastro)}"/>
                        </div>

                        <div class="form-group col-md-1">
                            <label for="idade">
                                <g:message code="soccerManager.idade" default="Idade" />
                            </label>
                            <g:textField class="form-control" name="idade" readonly="true" value="${funcionarioInstance?.idade}"/>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="box-content">
                        <div class="form-group col-md-2">
                            <label for="rg">
                                <g:message code="funcionario.rg" default="RG" />
                            </label>
                            <g:textField class="form-control" name="rg" readonly="true" value="${funcionarioInstance?.RG}"/>
                        </div>

                        <div class="form-group col-md-2">
                            <label for="cpf">
                                <g:message code="funcionario.cpf" default="CPF" />
                            </label>
                            <g:textField class="form-control" name="cpf" readonly="true" value="${funcionarioInstance?.CPF}"/>
                        </div>

                        <div class="form-group col-md-2">
                            <label for="sexo">
                                <g:message code="funcionario.sexo" default="Sexo" />
                                <span class="required-indicator">*</span>
                            </label>
                            <g:textField class="form-control" name="sexo" readonly="true" value="${funcionarioInstance?.sexo}"/>
                        </div>

                        <div class="form-group col-md-2">
                            <label for="telefone">
                                <g:message code="soccerManager.telefone" default="Telefone" />
                            </label>
                            <g:textField class="form-control" name="telefone" readonly="true" value="${funcionarioInstance?.telefone}"/>
                        </div>

                        <div class="form-group col-md-4">
                            <label for="funcao">
                                <g:message code="funcao.label" default="Função" />
                                <span class="required-indicator">*</span>
                            </label>
                            <g:textField class="form-control" name="funcao" readonly="true" value="${funcionarioInstance?.funcao}"/>
                        </div>
                    </div>
                </div>

                <hr>

                <div class="row">
                    <div class="box-content">
                        <div class="form-group">
                            <div class="form-group col-md-7">
                                <label for="logradouro">
                                    <g:message code="endereco.logradouro" default="Logradouro" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField class="form-control" name="logradouro" readonly="true" value="${funcionarioInstance?.logradouro}"/>
                            </div>

                            <div class="form-group col-md-1">
                                <label for="numero">
                                    <g:message code="endereco.numero" default="Nº" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField class="form-control" name="numero" readonly="true" value="${funcionarioInstance?.numero}"/>
                            </div>

                            <div class="form-group col-md-4">
                                <label for="bairro">
                                    <g:message code="endereco.bairro" default="Bairro" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField class="form-control" name="bairro" readonly="true" value="${funcionarioInstance?.bairro}"/>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="box-content">
                        <div class="form-group">
                            <div class="form-group col-md-6">
                                <label for="complemento">
                                    <g:message code="endereco.complemento" default="Complemento" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField class="form-control" name="complemento" readonly="true" value="${funcionarioInstance?.complemento}"/>
                            </div>

                            <div class="form-group col-md-3">
                                <label for="cep">
                                    <g:message code="endereco.cep" default="CEP" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField class="form-control" name="cep" readonly="true" value="${funcionarioInstance?.cep}"/>
                            </div>

                            <div class="form-group col-md-3">
                                <label for="cidade">
                                    <g:message code="cidade.label" default="Cidade" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField class="form-control" name="cidade" readonly="true" value="${funcionarioInstance?.cidade}"/>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="box-content">
                        <div class="form-group col-md-6">
                            <label for="banco">
                                <g:message code="funcionario.banco" default="Banco" />
                            </label>
                            <g:textField class="form-control" name="banco" readonly="true" value="${funcionarioInstance?.banco}"/>
                        </div>

                        <div class="form-group col-md-2">
                            <label for="agencia">
                                <g:message code="funcionario.agencia" default="Agência" />
                            </label>
                            <g:textField class="form-control" name="agencia" readonly="true" value="${funcionarioInstance?.agencia}"/>
                        </div>

                        <div class="form-group col-md-2">
                            <label for="conta">
                                <g:message code="funcionario.conta" default="Conta" />
                            </label>
                            <g:textField class="form-control" name="conta" readonly="true" value="${funcionarioInstance?.conta}"/>
                        </div>

                        <div class="form-group col-md-2">
                            <label for="valorSalario">
                                <g:message code="funcionario.valorSalario" default="Valor Salário" />
                                <span class="required-indicator">*</span>
                            </label>
                            <g:textField class="form-control" name="valorSalario" readonly="true" value="${formatNumber(type: 'currency', number: funcionarioInstance?.valorSalario)}"/>
                        </div>
                    </div>
                </div>

                <hr>

                <div class="row">
                    <div class="box-content">
                        <div class="form-group col-md-12">
                            <label for="observacao">
                                <g:message code="soccerManager.observacao" default="Observações" />
                            </label>
                            <g:textArea class="autogrow form-control" name="observacao" readonly="" value="${funcionarioInstance?.observacao}"/>
                        </div>
                    </div>
                </div>


                <div class="box-content">
                    <div class="form-group">
                        <g:form url="[resource:funcionarioInstance, action:'edit']">
                            <g:actionSubmit class="edit btn btn-success col-lg-1" action="edit" id="${funcionarioInstance.id}" resource="${funcionarioInstance}" value="${message(code: 'default.button.edit.label', default: 'Edit')}"/>
                        </g:form>

                        <g:form url="[resource:funcionarioInstance, action:'delete']" method="DELETE">
                            <g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                        </g:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>




