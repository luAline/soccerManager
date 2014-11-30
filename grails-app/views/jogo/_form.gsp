<%@ page import="br.edu.luciana.soccerManager.Jogo" %>

<div class="col-sm-12 col-lg-12">
    <div class="row">
        <div class="form-group col-md-7">
            <label for="descricao">
                <g:message code="soccerManager.descricao" default="Descricao" />

            </label>
            <g:textField name="descricao" class="form-control" value="${jogoInstance?.descricao}"/>
        </div>
        <div class="form-group col-md-5">
            <label for="adversario">
                <g:message code="jogo.adversario" default="Adversario" />

            </label>
            <g:textField name="adversario" class="form-control" value="${jogoInstance?.adversario}"/>
        </div>
    </div>
    <div class="row">
        <div class="form-group col-md-6">
            <label for="time">
                <g:message code="time.label" default="Time" />
                <span class="required-indicator">*</span>
            </label>
            <g:select id="time" name="time" from="${br.edu.luciana.soccerManager.Time.list()}" optionKey="id" required="" value="${jogoInstance?.time?.id}" class="form-control many-to-one" noSelection="['null': 'TODOS']"/>

        </div>
        <div class="form-group col-md-3">
            <label for="dataJogo">
                <g:message code="data.jogo" default="Data Jogo" />
                <span class="required-indicator">*</span>
            </label>
            <g:datePicker name="dataJogo" precision="day"  value="${jogoInstance?.dataJogo}"  />

        </div>
        <div class="form-group col-md-3">
            <label for="categoria">
                <g:message code="categoria.label" default="Categoria" />
                <span class="required-indicator">*</span>
            </label>
            <g:select id="categoria" name="categoria" from="${br.edu.luciana.soccerManager.Categoria.list()}" optionKey="id" required="" value="${jogoInstance?.categoria?.id}" class="form-control many-to-one" noSelection="['null': 'TODOS']"/>

        </div>
    </div>
    <div class="row">
        <div class="form-group col-md-12">
            <label for="local">
                <g:message code="local.label" default="Local" />
                <span class="required-indicator">*</span>
            </label>
            <g:select id="local" name="local" from="${br.edu.luciana.soccerManager.Local.list()}" optionKey="id" required="" value="${jogoInstance?.local?.id}" class="form-control many-to-one" noSelection="['null': 'TODOS']"/>

        </div>
    </div>
</div>
