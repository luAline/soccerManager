<%@ page import="br.edu.luciana.soccerManager.Aluno" %>
<div class="col-sm-12 col-lg-12">
    <div class="row">
        <div class="box-content">
            <div class="form-group col-md-2">
                <label for="ativo">
                    <g:message code="soccerManager.ativo" default="Ativo" />

                </label>
                <g:checkBox name="ativo" value="${alunoInstance?.ativo}" />
            </div>
            <div class="form-group col-md-2">
                <label for="matricula">
                    <g:message code="aluno.matricula" default="Matricula" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField name="matricula" class="form-control" required="" value="${alunoInstance?.matricula}"/>
            </div>
            <div class="form-group col-md-7">
                <label for="nome">
                    <g:message code="soccerManager.nome" default="Nome" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField name="nome" required="" class="form-control" value="${alunoInstance?.nome}"/>
            </div>
            <div class="form-group col-md-1">
                <label for="idade">
                    <g:message code="soccerManager.idade" default="Idade" />
                    <span class="required-indicator">*</span>
                </label>
                <g:field name="idade" type="number" class="form-control" value="${alunoInstance.idade}" required=""/>
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
                <g:datePicker name="dataNascimento" precision="day"  value="${alunoInstance?.dataNascimento}"  />
            </div>
            <div class="form-group col-md-2">
                <label for="dataCadastro">
                    <g:message code="data.cadastro" default="Data Cadastro" />
                    <span class="required-indicator">*</span>
                </label>
                <g:datePicker name="dataCadastro" precision="day"  value="${alunoInstance?.dataCadastro}"  />
            </div>

            <div class="form-group col-md-2">
                <label for="RG">
                    <g:message code="funcionario.rg" default="RG" />

                </label>
                <g:textField name="RG" class="form-control" value="${alunoInstance?.RG}"/>
            </div>
            <div class="form-group col-md-2">
                <label for="CPF">
                    <g:message code="funcionario.cpf" default="CPF" />

                </label>
                <g:textField name="CPF" class="form-control" value="${alunoInstance?.CPF}"/>
            </div>
            <div class="form-group col-md-2">
                <label for="sexo">
                    <g:message code="funcionario.sexo" default="Sexo" />
                    <span class="required-indicator">*</span>
                </label>
                <g:select name="sexo" class="form-control" from="${br.edu.luciana.soccerManager.Sexo?.values()}" keys="${br.edu.luciana.soccerManager.Sexo.values()*.name()}" required="" value="${alunoInstance?.sexo?.name()}" />
            </div>
            <div class="form-group col-md-2">
                <label for="categoria">
                    <g:message code="categoria.label" default="Categoria" />
                    <span class="required-indicator">*</span>
                </label>
                <g:select id="categoria" name="categoria" from="${br.edu.luciana.soccerManager.Categoria.list()}" optionKey="id" required="" value="${alunoInstance?.categoria?.id}" class="form-control many-to-one" noSelection="['null': 'TODOS']"/>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="box-content">
            <div class="form-group col-md-3">
                <label for="responsavel">
                    <g:message code="empresa.responsavel" default="Responsavel" />

                </label>
                <g:textField name="responsavel" class="form-control" value="${alunoInstance?.responsavel}"/>
            </div>
            <div class="form-group col-md-2">
                <label for="responsavelRG">
                    <g:message code="aluno.responsavelRG" default="Responsavel RG" />

                </label>
                <g:textField name="responsavelRG" class="form-control" value="${alunoInstance?.responsavelRG}"/>
            </div>
            <div class="form-group col-md-2">
                <label for="responsavelCPF">
                    <g:message code="aluno.responsavelCPF" default="Responsavel CPF" />

                </label>
                <g:textField name="responsavelCPF" class="form-control" value="${alunoInstance?.responsavelCPF}"/>
            </div>
            <div class="form-group col-md-2">
                <label for="parentesco">
                    <g:message code="aluno.parentesco" default="Parentesco" />

                </label>
                <g:textField name="parentesco" class="form-control" value="${alunoInstance?.parentesco}"/>
            </div>
            <div class="form-group col-md-2">
                <label for="telefone">
                    <g:message code="soccerManager.telefone" default="Telefone" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField name="telefone" class="form-control" required="" value="${alunoInstance?.telefone}"/>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="box-content">
            <div class="form-group col-md-1">
                <label for="valorMensalidade">
                    <g:message code="aluno.valorMensalidade" default="Valor Mensalidade" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField name="valorMensalidade" class="form-control" value="${fieldValue(bean: alunoInstance, field: 'valorMensalidade')}" required=""/>
            </div>
            <div class="form-group col-md-2">
                <label for="vencimentoMensalidade">
                    <g:message code="aluno.vencimentoMensalidade" default="Vencimento Mensalidade" />

                </label>
                <g:datePicker name="vencimentoMensalidade" precision="day"  value="${alunoInstance?.vencimentoMensalidade}" default="none" noSelection="['': '']" />
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
                <g:textField name="altura" class="form-control" value="${fieldValue(bean: alunoInstance, field: 'altura')}" required=""/>
            </div>
            <div class="form-group col-md-2">
                <label for="peso">
                    <g:message code="aluno.peso" default="Peso" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField name="peso" class="form-control" value="${fieldValue(bean: alunoInstance, field: 'peso')}" required=""/>
            </div>
            <div class="form-group col-md-2">
                <label for="imc">
                    <g:message code="aluno.imc" default="Imc" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField name="imc" class="form-control" value="${fieldValue(bean: alunoInstance, field: 'imc')}" required=""/>
            </div>
            <div class="form-group col-md-2">
                <label for="pressaoArterial">
                    <g:message code="aluno.pressaoArterial" default="Pressao Arterial" />

                </label>
                <g:textField name="pressaoArterial" class="form-control" value="${alunoInstance?.pressaoArterial}"/>
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
                <g:textField name="logradouro" class="form-control" value="${alunoInstance?.logradouro}"/>
            </div>

            <div class="form-group col-md-8">
                <label for="numero">
                    <g:message code="endereco.numero" default="Numero" />

                </label>
                <g:textField name="numero" class="form-control" value="${alunoInstance?.numero}"/>
            </div>


            <div class="form-group col-md-8">
                <label for="alergia">
                    <g:message code="aluno.alergia" default="Alergia" />

                </label>
                <g:textArea name="alergia" class="autogrow form-control" value="${alunoInstance?.alergia}"/>
            </div>
            <div class="form-group col-md-8">
                <label for="deficiencia">
                    <g:message code="aluno.deficiencia" default="Deficiencia" />

                </label>
                <g:textField name="deficiencia" class="autogrow form-control" value="${alunoInstance?.deficiencia}"/>
            </div>
            <div class="form-group col-md-8">
                <label for="observacao">
                    <g:message code="soccerManager.observacao" default="Observacao" />

                </label>
                <g:textField name="observacao" class="autogrow form-control" value="${alunoInstance?.observacao}"/>
            </div>

            fernando  fork
            luciana tentativa


            <div class="form-group col-md-8">
                <label for="complemento">
                    <g:message code="endereco.complemento" default="Complemento" />

                </label>
                <g:textField name="complemento" class="form-control" value="${alunoInstance?.complemento}"/>
            </div>
            <div class="form-group col-md-8">
                <label for="bairro">
                    <g:message code="endereco.bairro" default="Bairro" />

                </label>
                <g:textField name="bairro" class="form-control" value="${alunoInstance?.bairro}"/>
            </div>
            <div class="form-group col-md-8">
                <label for="cep">
                    <g:message code="endereco.cep" default="Cep" />

                </label>
                <g:textField name="cep" class="form-control" value="${alunoInstance?.cep}"/>
            </div>
            <div class="form-group col-md-8">
                <label for="cidade">
                    <g:message code="cidade.label" default="Cidade" />

                </label>
                <g:select id="cidade" name="cidade" from="${br.edu.luciana.soccerManager.Cidade.list()}" optionKey="id" value="${alunoInstance?.cidade?.id}" class="form-control many-to-one" noSelection="['null': 'TODOS']"/>
            </div>
            <div class="form-group col-md-8"></div>
        </div>
    </div>


    <div class="row">
        <div class="box-content">
            <div class="form-group col-md-8"></div>
            <div class="form-group col-md-8"></div>
            <div class="form-group col-md-8"></div>
            <div class="form-group col-md-8"></div>
            <div class="form-group col-md-8"></div>
        </div>
    </div>
</div>
