<%@ page import="br.edu.luciana.soccerManager.Time" %>

<div class="col-sm-12 col-lg-12">
    <div class="row">

        <div class="form-group col-md-12">
            <label for="observacao">
                <g:message code="soccerManager.descricao" default="Observacao" />

            </label>
            <g:textField name="observacao" class="form-control" value="${timeInstance?.observacao}"/>
        </div>
    </div>
</div>