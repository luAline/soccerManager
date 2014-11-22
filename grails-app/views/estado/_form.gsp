<%@ page import="br.edu.luciana.soccerManager.Estado" %>
<div class="col-sm-12 col-lg-12">
    <div class="row">
        <div class="box-content">
            <div class="form-group col-md-8">
                <label for="nome">
                    <g:message code="soccerManager.nome" default="Nome" />
                    <span class="required-indicator">*</span>
                </label>
                    <g:textField name="nome" class="form-control"  required="" value="${estadoInstance?.nome}"/>
            </div>
            <div class="form-group col-md-4">
                <label class="control-label" for="pais">
                    <g:message code="pais.label" default="Pais" />
                    <span class="required-indicator">*</span>
                </label>
                <div class="controls">
                    <g:select id="pais" name="pais" data-rel="chosen" from="${br.edu.luciana.soccerManager.Pais.list()}" optionKey="id" required="" value="${estadoInstance?.pais?.id}" class="form-control many-to-one"/>
                </div>
            </div>
        </div>
    </div>
</div>


