<%@ page import="br.edu.luciana.soccerManager.Funcionario" %>

<div class="col-sm-12 col-lg-12">
    <div class="row">
        <div class="checkbox col-md-2">
            <label>
                <input type="checkbox" value="${funcionarioInstance?.ativo}">
                <g:message code="soccerManager.ativo" default="Ativo" />
            </label>
        </div>

        <div class="form-group col-md-5">
            <label for="nome">
                <g:message code="soccerManager.nome" default="Nome" />
                <span class="required-indicator">*</span>
            </label>
            <g:textField class="form-control" name="nome" required="" value="${funcionarioInstance?.nome}"/>
        </div>

        <div class="form-group col-md-2">
            <label for="dataNascimento">
                <g:message code="data.nascimento" default="Data Nascimento" />
                <span class="required-indicator">*</span>
            </label>
            <g:datePicker name="dataNascimento" precision="day" value="${funcionarioInstance?.dataNascimento}"/>
        </div>

        <div class="form-group col-md-2">
            <label for="dataCadastro">
                <g:message code="data.cadastro" default="Data Cadastro" />
                <span class="required-indicator">*</span>
            </label>
            <g:datePicker name="dataCadastro" precision="day" value="${funcionarioInstance?.dataCadastro}"/>
        </div>

        <div class="form-group col-md-1 hidden">
            <label for="idade">
                <g:message code="soccerManager.idade" default="Idade" />
            </label>
            <g:textField class="form-control" name="idade" value="${funcionarioInstance?.idade}"/>
        </div>

    </div>

    <div class="row">
        <div class="form-group col-md-2">
            <label for="rg">
                <g:message code="funcionario.rg" default="RG" />
            </label>
            <g:textField class="form-control" name="rg" value="${funcionarioInstance?.RG}"/>
        </div>

        <div class="form-group col-md-2">
            <label for="cpf">
                <g:message code="funcionario.cpf" default="CPF" />
            </label>
            <g:textField class="form-control" name="cpf" value="${funcionarioInstance?.CPF}"/>
        </div>

        <div class="form-group col-md-2">
            <label class="control-label" for="sexo">
                <g:message code="funcionario.sexo" default="Sexo" />
                <span class="required-indicator">*</span>
            </label>
            <div class="controls">
                <g:select name="sexo" id="sexo" data-rel="chosen" from="${br.edu.luciana.soccerManager.Sexo?.values()}"  keys="${br.edu.luciana.soccerManager.Sexo.values()*.name()}" required="" value="${funcionarioInstance?.sexo?.name()}" class="form-control many-to-one"/>
            </div>
        </div>

        <div class="form-group col-md-2">
            <label for="telefone">
                <g:message code="soccerManager.telefone" default="Telefone" />
            </label>
            <g:textField class="form-control" name="telefone" value="${funcionarioInstance?.telefone}"/>
        </div>

        <div class="form-group col-md-4">
            <label class="control-label" for="funcao">
                <g:message code="funcao.label" default="Função" />
                <span class="required-indicator">*</span>
            </label>
            <div class="controls">
                <g:select id="funcao" name="funcao" from="${br.edu.luciana.soccerManager.Funcao.list()}" optionKey="id" value="${funcionarioInstance?.funcao?.id}" class="form-control many-to-one" noSelection="['null': 'TODOS']"/>
            </div>
        </div>
    </div>

    <hr>

    <div class="row">
        <div class="box-content">
            <div class="form-group col-md-7">
                <label for="logradouro">
                    <g:message code="endereco.logradouro" default="Logradouro" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField class="form-control" name="logradouro" value="${funcionarioInstance?.logradouro}"/>
            </div>

            <div class="form-group col-md-1">
                <label for="numero">
                    <g:message code="endereco.numero" default="Nº" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField class="form-control" name="numero" value="${funcionarioInstance?.numero}"/>
            </div>

            <div class="form-group col-md-4">
                <label for="bairro">
                    <g:message code="endereco.bairro" default="Bairro" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField class="form-control" name="bairro" value="${funcionarioInstance?.bairro}"/>
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
                <g:textField class="form-control" name="complemento" value="${funcionarioInstance?.complemento}"/>
            </div>

            <div class="form-group col-md-3">
                <label for="cep">
                    <g:message code="endereco.cep" default="CEP" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField class="form-control" name="cep" value="${funcionarioInstance?.cep}"/>
            </div>

            <div class="form-group col-md-2">
                <label for="cidade">
                    <g:message code="cidade.label" default="Cidade" />

                </label>
                <g:select id="cidade" name="cidade" from="${br.edu.luciana.soccerManager.Cidade.list()}" optionKey="id" value="${funcionarioInstance?.cidade?.id}" class="form-control many-to-one" noSelection="['null': 'TODOS']"/>
            </div>
        </div>
    </div>

    <hr>

    <div class="row">
        <div class="form-group col-md-6">
            <label for="banco">
                <g:message code="funcionario.banco" default="Banco" />
            </label>
            <g:textField class="form-control" name="banco" value="${funcionarioInstance?.banco}"/>
        </div>

        <div class="form-group col-md-2">
            <label for="agencia">
                <g:message code="funcionario.agencia" default="Agência" />
            </label>
            <g:textField class="form-control" name="agencia" value="${funcionarioInstance?.agencia}"/>
        </div>

        <div class="form-group col-md-2">
            <label for="conta">
                <g:message code="funcionario.conta" default="Conta" />
            </label>
            <g:textField class="form-control" name="conta" value="${funcionarioInstance?.conta}"/>
        </div>

        <div class="form-group col-md-2">
            <label for="valorSalario">
                <g:message code="funcionario.valorSalario" default="Valor Salário" />
                <span class="required-indicator">*</span>
            </label>
            <g:textField class="form-control" name="valorSalario" required="" value="${funcionarioInstance?.valorSalario}"/>
        </div>
    </div>

    <hr>

    <div class="row">
        <div class="form-group col-md-12">
            <label for="observacao">
                <g:message code="soccerManager.observacao" default="Observações" />
            </label>
            <g:textArea class="autogrow form-control" name="observacao" value="${funcionarioInstance?.observacao}"/>
        </div>
    </div>
</div>



