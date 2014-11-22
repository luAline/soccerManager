<%@ page import="br.edu.luciana.soccerManager.Empresa" %>
<div class="col-sm-12 col-lg-12">
    <div class="row">
        <div class="box-content">
            <div class="form-group col-md-8">
                <label for="razaoSocial">
                    <g:message code="empresa.razaoSocial" default="Razao Social" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField name="razaoSocial" class="form-control" required="" value="${empresaInstance?.razaoSocial}"/>
            </div>

            <div class="form-group col-md-4">
                <label for="cnpj">
                    <g:message code="empresa.cnpj" default="Cnpj" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField name="cnpj" class="form-control" type="number" value="${empresaInstance.cnpj}" required=""/>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="box-content">
            <div class="form-group col-md-6">
                <label for="nomeFantasia">
                    <g:message code="empresa.nomeFantasia" default="Nome Fantasia" />

                </label>
                <g:textField name="nomeFantasia" class="form-control" value="${empresaInstance?.nomeFantasia}"/>
            </div>

            <div class="form-group col-md-3">
                <label for="inscricaoEstadual">
                    <g:message code="empresa.inscricaoEstadual" default="Inscricao Estadual" />

                </label>
                <g:textField name="inscricaoEstadual" class="form-control" value="${empresaInstance?.inscricaoEstadual}"/>
            </div>

            <div class="form-group col-md-3">
                <label for="inscricaoMunicipal">
                    <g:message code="empresa.inscricaoMunicipal" default="Inscricao Municipal" />

                </label>
                <g:textField name="inscricaoMunicipal" class="form-control" value="${empresaInstance?.inscricaoMunicipal}"/>
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
                <g:textField name="responsavel" required="" class="form-control" value="${empresaInstance?.responsavel}"/>
            </div>

            <div class="form-group col-md-3">
                <label for="telefone">
                    <g:message code="soccerManager.telefone" default="Telefone" />
                    <span class="required-indicator">*</span>
                </label>
                <g:field name="telefone" type="number" class="form-control" value="${empresaInstance.telefone}" required=""/>
            </div>

            <div class="form-group col-md-3">
                <label for="email">
                    <g:message code="empresa.email" default="Email" />

                </label>
                <g:textField name="email" class="form-control" value="${empresaInstance?.email}"/>
            </div>

            <div class="form-group col-md-3">
                <label for="site">
                    <g:message code="empresa.site" default="Site" />

                </label>
                <g:textField name="site" class="form-control" value="${empresaInstance?.site}"/>
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
                <g:textField class="form-control" name="logradouro" value="${empresaInstance?.logradouro}"/>
            </div>

            <div class="form-group col-md-1">
                <label for="numero">
                    <g:message code="endereco.numero" default="Nº" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField class="form-control" name="numero" value="${empresaInstance?.numero}"/>
            </div>

            <div class="form-group col-md-4">
                <label for="bairro">
                    <g:message code="endereco.bairro" default="Bairro" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField class="form-control" name="bairro" value="${empresaInstance?.bairro}"/>
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
                <g:textField class="form-control" name="complemento" value="${empresaInstance?.complemento}"/>
            </div>

            <div class="form-group col-md-3">
                <label for="cep">
                    <g:message code="endereco.cep" default="CEP" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField class="form-control" name="cep" value="${empresaInstance?.cep}"/>
            </div>

            <div class="form-group col-md-3">
                <label class="control-label" for="cidade">
                    <g:message code="cidade.label" default="Cidade" />
                    <span class="required-indicator">*</span>
                </label>
                <div class="controls">
                    <g:select name="cidade" id="cidade" data-rel="chosen" from="${br.edu.luciana.soccerManager.Cidade.list()}"  required="" value="${empresaInstance?.cidade}" class="form-control many-to-one"/>
                </div>
            </div>
        </div>
    </div>
</div>


