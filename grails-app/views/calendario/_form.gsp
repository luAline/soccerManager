<%@ page import="br.edu.luciana.soccerManager.Calendario" %>
<div class="col-sm-12 col-lg-12">
    <div class="row">
        <div class="box-content">
            <div class="form-group col-md-6">
                <label for="titulo">
                    <g:message code="calendario.titulo" default="Titulo" />

                </label>
                <g:textField name="titulo" class="form-control" value="${calendarioInstance?.titulo}"/>
            </div>
            <div class="form-group col-md-6">
                <label for="descricao">
                    <g:message code="soccerManager.descricao" default="Descricao" />

                </label>
                <g:textField name="descricao" class="form-control" value="${calendarioInstance?.descricao}"/>
            </div>
        </div>
        <div class="box-content">
            <div class="form-group col-md-6">
                <label for="local">
                    <g:message code="local.label" default="Local" />

                </label>
                <g:select id="local" name="local" from="${br.edu.luciana.soccerManager.Local.list()}" optionKey="id" value="${calendarioInstance?.local?.id}" class="form-control many-to-one" noSelection="['null': 'TODOS']"/>
            </div>
            <div class="form-group col-md-3">
                <label for="dataInicial">
                    <g:message code="data.inicial" default="Data Inicial" />

                </label>
                <g:textField name="dataInicial" class="form-control data" value="${formatDate(format: "dd/MM/yyyy", date: calendarioInstance?.dataInicial)}"/>
                <g:datePicker name="myDate" value="${new Date()}" precision="day" years="${1930..1970}"/>
            </div>
            <div class="form-group col-md-3">
                <label for="dataFinal">
                    <g:message code="data.final" default="Data Final" />

                </label>
                <g:textField name="dataFinal" class="form-control data" value="${formatDate(format: "dd/MM/yyyy", calendarioInstance?.dataFinal)}"/>
            </div>
        </div>

    </div>
</div>

<script>
    $(function() {
        $( ".data" ).datepicker({
            showButtonPanel:true,
            dateFormat: 'dd/mm/yy',
            changeYear: true,
            showOtherMonths: true,
            selectOtherMonths: true,
            dayNames: ['Domingo','Segunda','Terça','Quarta','Quinta','Sexta','Sábado','Domingo'],
            dayNamesMin: ['D','S','T','Q','Q','S','S','D'],
            dayNamesShort: ['Dom','Seg','Ter','Qua','Qui','Sex','Sáb','Dom'],
            monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
            monthNamesShort: ['Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez']
        });
    });
</script>

