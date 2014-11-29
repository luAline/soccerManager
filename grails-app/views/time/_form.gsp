<%@ page import="br.edu.luciana.soccerManager.Time" %>

<div class="col-sm-12 col-lg-12">
    <div class="row">

        <div class="form-group col-md-8">
            <label for="observacao">
                <g:message code="soccerManager.descricao" default="Observacao" />

            </label>
            <g:textField name="observacao" class="form-control" value="${timeInstance?.observacao}"/>
        </div>

        <div class="form-group col-md-4">
            <label class="control-label" for="categoria">
                <g:message code="categoria.label" default="Categoria" />
                <span class="required-indicator">*</span>
            </label>
            <div class="controls">
                <g:select id="categoria" name="categoria" data-rel="chosen" from="${br.edu.luciana.soccerManager.Categoria.list()}" optionKey="id" required="" value="${timeInstance?.categoria}" class="form-control many-to-one"/>
            </div>
        </div>
    </div>
</div>