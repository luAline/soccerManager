<%@ page import="br.edu.luciana.soccerManager.Usuario" %>
<div class="col-sm-12 col-lg-12">
    <div class="row">
        <div class="box-content">
            <div class="form-group col-md-6">
                <label for="nome">
                    <g:message code="soccerManager.nome" default="Nome" />

                </label>
                <g:textField class="form-control" name="nome" value="${usuarioInstance?.nome}"/>
            </div>
            <div class="form-group col-md-3">
                <label for="usuario">
                    <g:message code="usuario.label" default="Usuario" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField class="form-control" name="usuario" required="" value="${usuarioInstance?.usuario}"/>
            </div>

            <div class="form-group col-md-3">
                <label for="senha">
                    <g:message code="usuario.senha" default="Senha" />
                    <span class="required-indicator">*</span>
                </label>
                <g:passwordField name="senha" class="form-control" required="" value="${usuarioInstance?.senha}" />
            </div>
        </div>
    </div>
</div>


