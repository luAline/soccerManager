<%@ page import="br.edu.luciana.soccerManager.Cidade" %>

<div class="col-sm-12 col-lg-12">
    <div class="row">
        <div class="form-group col-md-8 fieldcontain ${hasErrors(bean: cidadeInstance, field: 'nome', 'error')} required ">
            <label for="nome">
                <g:message code="soccerManager.nome" default="Nome" />
                <span class="required-indicator">*</span>
            </label>
            <g:textField class="form-control" name="nome" required="" value="${cidadeInstance?.nome}"/>

        </div>

        <div class="form-group col-md-4 fieldcontain ${hasErrors(bean: cidadeInstance, field: 'estado', 'error')} required">
            <label for="estado">
                <g:message code="estado.label" default="Estado" />
                <span class="required-indicator">*</span>
            </label>
            <g:select id="estado" name="estado.id" from="${br.edu.luciana.soccerManager.Estado.list()}" optionKey="id" required="" value="${cidadeInstance?.estado?.id}" class="form-control many-to-one"/>

        </div>
    </div>
</div>



