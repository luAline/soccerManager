
<%@ page import="br.edu.luciana.soccerManager.Aluno" %>

<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'aluno.label', default: 'Aluno')}" />

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
            <g:link controller="aluno" action="index">
                <button class="btn btn-default">
                    <i class="glyphicon glyphicon-list icon-white"></i>
                    <g:message code="default.list.label" args="[entityName]" />
                </button>
            </g:link>
            <g:link controller="aluno" action="create">
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
                            <div class="form-group col-md-2">
                                <label for="ativo">
                                    <g:message code="soccerManager.ativo" default="Ativo" />

                                </label>
                                <g:checkBox name="ativo" disabled="true" value="${alunoInstance?.ativo}" />
                            </div>

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

                            <div class="form-group col-md-1">
                                <label for="idade">
                                    <g:message code="soccerManager.idade" default="Idade" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField name="idade" type="number" class="form-control" readonly="true" value="${alunoInstance.idade}"/>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="box-content">
                            <div class="form-group col-md-2">
                                <label for="dataNascimento">
                                    <g:message code="data.nascimento" default="Data Nascimento" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField name="dataNascimento" readonly="true" class="form-control" value="${formatDate(format: 'dd/MM/yyyy', date: alunoInstance?.dataNascimento)}"/>
                            </div>

                            <div class="form-group col-md-2">
                                <label for="dataCadastro">
                                    <g:message code="data.cadastro" default="Data Cadastro" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField name="dataCadastro" readonly="true" class="form-control" value="${formatDate(format: 'dd/MM/yyyy', date: alunoInstance?.dataCadastro)}"/>
                            </div>

                            <div class="form-group col-md-2">
                                <label for="RG">
                                    <g:message code="funcionario.rg" default="RG" />

                                </label>
                                <g:textField name="RG" class="form-control" readonly="true" value="${alunoInstance?.RG}"/>
                            </div>

                            <div class="form-group col-md-2">
                                <label for="CPF">
                                    <g:message code="funcionario.cpf" default="CPF" />

                                </label>
                                <g:textField name="CPF" readonly="true" class="form-control" value="${alunoInstance?.CPF}"/>
                            </div>

                            <div class="form-group col-md-2">
                                <label for="sexo">
                                    <g:message code="funcionario.sexo" default="Sexo" />

                                </label>
                                <g:textField name="sexo" readonly="true" class="form-control" value="${alunoInstance?.sexo?.name()}"/>
                            </div>
                            <div class="form-group col-md-2">
                                <label for="categoria">
                                    <g:message code="categoria.label" default="Categoria" />

                                </label>
                                <g:textField name="categoria" readonly="true" class="form-control" value="${alunoInstance?.categoria}"/>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="box-content">
                            <div class="form-group col-md-4">
                                <label for="responsavel">
                                    <g:message code="empresa.responsavel" default="Responsavel" />

                                </label>
                                <g:textField name="responsavel" class="form-control" readonly="true" value="${alunoInstance?.responsavel}"/>
                            </div>

                            <div class="form-group col-md-2">
                                <label for="responsavelRG">
                                    <g:message code="aluno.responsavelRG" default="Responsavel RG" />

                                </label>
                                <g:textField name="responsavelRG" class="form-control" readonly="true" value="${alunoInstance?.responsavelRG}"/>
                            </div>

                            <div class="form-group col-md-2">
                                <label for="responsavelCPF">
                                    <g:message code="aluno.responsavelCPF" default="Responsavel CPF" />

                                </label>
                                <g:textField name="responsavelCPF" class="form-control" readonly="true" value="${alunoInstance?.responsavelCPF}"/>
                            </div>

                            <div class="form-group col-md-2">
                                <label for="parentesco">
                                    <g:message code="aluno.parentesco" default="Parentesco" />

                                </label>
                                <g:textField name="parentesco" class="form-control" readonly="true" value="${alunoInstance?.parentesco}"/>
                            </div>

                            <div class="form-group col-md-2">
                                <label for="telefone">
                                    <g:message code="soccerManager.telefone" default="Telefone" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField name="telefone" class="form-control" readonly="true" value="${alunoInstance?.telefone}"/>
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
                                <g:textField name="valorMensalidade" class="form-control" readonly="true" value="${fieldValue(bean: alunoInstance, field: 'valorMensalidade')}"/>
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
                    <hr>
                    <div class="row">
                        <div class="box-content">
                            <div class="form-group col-md-2">
                                <label for="altura">
                                    <g:message code="aluno.altura" default="Altura" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField name="altura" class="form-control" readonly="true" value="${fieldValue(bean: alunoInstance, field: 'altura')}"/>
                            </div>
                            <div class="form-group col-md-2">
                                <label for="peso">
                                    <g:message code="aluno.peso" default="Peso" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField name="peso" class="form-control" readonly="true" value="${fieldValue(bean: alunoInstance, field: 'peso')}"/>
                            </div>
                            <div class="form-group col-md-2">
                                <label for="imc">
                                    <g:message code="aluno.imc" default="Imc" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField name="imc" class="form-control" readonly="true" value="${fieldValue(bean: alunoInstance, field: 'imc')}"/>
                            </div>
                            <div class="form-group col-md-2">
                                <label for="pressaoArterial">
                                    <g:message code="aluno.pressaoArterial" default="Pressao Arterial" />

                                </label>
                                <g:textField name="pressaoArterial" class="form-control" readonly="true" value="${alunoInstance?.pressaoArterial}"/>
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
                                <g:textField name="logradouro" class="form-control" readonly="true" value="${alunoInstance?.logradouro}"/>
                            </div>

                            <div class="form-group col-md-1">
                                <label for="numero">
                                    <g:message code="endereco.numero" default="Numero" />

                                </label>
                                <g:textField name="numero" class="form-control" readonly="true" value="${alunoInstance?.numero}"/>
                            </div>

                            <div class="form-group col-md-3">
                                <label for="cep">
                                    <g:message code="endereco.cep" default="Cep" />

                                </label>
                                <g:textField name="cep" class="form-control" readonly="true" value="${alunoInstance?.cep}"/>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="box-content">
                            <div class="form-group col-md-7">
                                <label for="complemento">
                                    <g:message code="endereco.complemento" default="Complemento" />

                                </label>
                                <g:textField name="complemento" class="form-control" readonly="true" value="${alunoInstance?.complemento}"/>
                            </div>

                            <div class="form-group col-md-3">
                                <label for="bairro">
                                    <g:message code="endereco.bairro" default="Bairro" />

                                </label>
                                <g:textField name="bairro" class="form-control" readonly="true" value="${alunoInstance?.bairro}"/>
                            </div>

                            <div class="form-group col-md-2">
                                <label for="cidade">
                                    <g:message code="cidade.label" default="Cidade" />

                                </label>
                                <g:textField name="cidade" class="form-control" readonly="true" value="${alunoInstance?.cidade}"/>
                            </div>
                        </div>
                    </div>
                     <hr>
                    <div class="row">
                        <div class="box-content">
                            <div class="form-group col-md-4">
                                <label for="alergia">
                                    <g:message code="aluno.alergia" default="Alergia" />

                                </label>
                                <g:textArea name="alergia" class="autogrow form-control" readonly="" value="${alunoInstance?.alergia}"/>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="deficiencia">
                                    <g:message code="aluno.deficiencia" default="Deficiencia" />

                                </label>
                                <g:textArea name="deficiencia" class="autogrow form-control" readonly="" value="${alunoInstance?.deficiencia}"/>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="observacao">
                                    <g:message code="soccerManager.observacao" default="Observacao" />

                                </label>
                                <g:textArea name="observacao" class="autogrow form-control" readonly="" value="${alunoInstance?.observacao}"/>
                            </div>
                        </div>
                    </div>

                <div class="box-content">
                    <div class="form-group">
                        <g:form url="[resource:alunoInstance, action:'edit']">
                            <g:actionSubmit class="edit btn btn-success col-lg-1" action="edit" id="${alunoInstance.id}" resource="${alunoInstance}" value="${message(code: 'default.button.edit.label', default: 'Edit')}"/>
                        </g:form>

                        <g:form url="[resource:alunoInstance, action:'delete']" method="DELETE">
                            <g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                        </g:form>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>

