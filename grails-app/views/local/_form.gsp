<%@ page import="br.edu.luciana.soccerManager.Local" %>
<div class="col-sm-12 col-lg-12">
    <div class="row">
        <div class="box-content">
            <div class="form-group col-md-6">
                <label for="nome">
                    <g:message code="local.label" default="Nome" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField name="nome" required="" class="form-control" value="${localInstance?.nome}"/>
            </div>
            <div class="form-group col-md-6">
                <label for="observacao">
                    <g:message code="soccerManager.observacao" default="Observacao" />

                </label>
                <g:textField class="form-control" name="observacao" value="${localInstance?.observacao}"/>
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
                <g:textField class="form-control" name="logradouro" value="${localInstance?.logradouro}"/>
            </div>
            <div class="form-group col-md-1">
                <label for="numero">
                    <g:message code="endereco.numero" default="Numero" />

                </label>
                <g:textField class="form-control" name="numero" value="${localInstance?.numero}"/>
            </div>
            <div class="form-group col-md-3">
                <label for="numero">
                    <g:message code="endereco.cep" default="CEP" />

                </label>
                <g:textField class="form-control" name="cep" value="${localInstance?.cep}"/>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="box-content">
            <div class="form-group col-md-6">
                <label for="complemento">
                    <g:message code="endereco.complemento" default="Complemento" />

                </label>
                <g:textField class="form-control" name="complemento" value="${localInstance?.complemento}"/>
            </div>
            <div class="form-group col-md-3">
                <label for="bairro">
                    <g:message code="endereco.bairro" default="Bairro" />

                </label>
                <g:textField class="form-control" name="bairro" value="${localInstance?.bairro}"/>
            </div>
            <div class="form-group col-md-3">
                <label for="cidade">
                    <g:message code="cidade.label" default="Cidade" />

                </label>
                <g:select id="cidade" name="cidade" from="${br.edu.luciana.soccerManager.Cidade.list()}" optionKey="id" value="${localInstance?.cidade?.id}" class="form-control many-to-one" noSelection="['null': 'TODOS']"/>

            </div>
        </div>
    </div>
</div>

