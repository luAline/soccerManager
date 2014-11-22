<%@ page import="br.edu.luciana.soccerManager.Pais" %>


<div class="col-sm-12 col-lg-12">
    <div class="row">
        <div class="form-group fieldcontain ${hasErrors(bean: paisInstance, field: 'nome', 'error')} required ">
            <label for="nome">
                <g:message code="soccerManager.nome" default="Nome" />
                <span class="required-indicator">*</span>
            </label>
            <g:textField class="form-control" name="nome" required="" value="${paisInstance?.nome}"/>

        </div>
    </div>
</div>


