<%@ page import="br.edu.luciana.soccerManager.Funcao" %>

<div class="col-sm-12 col-lg-12">
    <div class="row">
        <div class="checkbox col-md-2">
            <label>
                <input type="checkbox" value="${funcaoInstance?.ativo}">
                <g:message code="soccerManager.ativo" default="Ativo" />
            </label>
        </div>

        <div class="form-group col-md-10">
            <label for="nome">
                <g:message code="soccerManager.nome" default="Nome" />
                <span class="required-indicator">*</span>
            </label>
            <g:textField class="form-control" name="nome" required="" value="${funcaoInstance?.nome}"/>
        </div>
    </div>
</div>