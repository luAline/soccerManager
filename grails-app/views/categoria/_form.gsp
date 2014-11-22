<%@ page import="br.edu.luciana.soccerManager.Categoria" %>
<div class="col-sm-12 col-lg-12">
    <div class="row">
        <div class="box-content">
            <div class="form-group col-md-8">
                <label for="nome">
                    <g:message code="soccerManager.nome" default="Nome" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField name="nome" required="" class="form-control" value="${categoriaInstance?.nome}"/>
            </div>
            <div class="form-group col-md-2">
                <label for="idadeMinima">
                    <g:message code="categoria.idadeMinima" default="Idade Minima" />
                    <span class="required-indicator">*</span>
                </label>
                <g:field name="idadeMinima" type="number" class="form-control" value="${categoriaInstance.idadeMinima}" required=""/>
            </div>
            <div class="form-group col-md-2">
                <label for="idadeMaxima">
                    <g:message code="categoria.idadeMaxima" default="Idade Maxima" />
                    <span class="required-indicator">*</span>
                </label>
                <g:field name="idadeMaxima" type="number" class="form-control" value="${categoriaInstance.idadeMaxima}" required=""/>
            </div>
        </div>
    </div>
</div>

