<%@ page import="br.edu.luciana.soccerManager.Calendario" %>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'calendario.label', default: 'Calendario')}" />

<div class="col-sm-10 col-lg-10">
    <ul class="breadcrumb">
        <li>
            <a class="home" href="${createLink(url: '../menu/telaInicio')}"><g:message code="default.home.label"/></a>
        </li>
        <li><g:message code="calendario.label"/></li>
    </ul>
</div>

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>



<div class="col-sm-10 col-lg-10">
    <div class="row">
        <div class="box col-md-12">
            <g:link controller="calendario" action="create">
                <button class="btn btn-info">
                    <i class="glyphicon glyphicon-plus icon-white"></i>
                    <g:message code="calendario.evento" args="[entityName]" />
                </button>
            </g:link>
        </div>
    </div>

    <div class="row">
        <div class="box col-md-12">
            <div class="box-inner">
                <div class="box-header well">
                    <h2><i class="glyphicon glyphicon-picture"></i> <g:message code="calendario.label"/></h2>
                </div>
                <div class="box-content">

                    <div id="calendar"></div>

                    <div class="clearfix"></div>

                </div>
            </div>
        </div>
    </div>
</div>


<script type='text/javascript'>

    $(document).ready(function() {
        var currentLangCode = 'pt-br';

        // build the language selector's options
        $.each($.fullCalendar.langs, function(langCode) {
            $('#lang-selector').append(
                    $('<option/>')
                            .attr('value', langCode)
                            .prop('selected', langCode == currentLangCode)
                            .text(langCode)
            );
        });

        // rerender the calendar when the selected option changes
        $('#lang-selector').on('change', function() {
            if (this.value) {
                currentLangCode = this.value;
                $('#calendar').fullCalendar('destroy');
                renderCalendar();
            }
        });

        function renderCalendar() {
            $('#calendar').fullCalendar({
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,agendaWeek,agendaDay'
                },
                defaultDate: moment(),
                lang: currentLangCode,
                buttonIcons: false, // show the prev/next text
                weekNumbers: true,
                editable: true,
                eventLimit: true, // allow "more" link when too many events
                events: [
                    //OUTUBRO
                    {
                        title: 'JOGO AMISTOSO',
                        start: '2014-10-01'
                    },
                    {
                        title: 'EVENTO COM VÁRIOS DIAS',
                        start: '2014-10-07',
                        end: '2014-10-10'
                    },
                    {
                        title: 'REUNIÃO',
                        start: '2014-10-24T17:30:00'
                    },

                    // NOVEMBRO
                    {
                        title: 'JOGO',
                        start: '2014-11-03T14:30:00'
                    },
                    {
                        title: 'EVENTO COPA PARANÁ',
                        start: '2014-11-14T14:30:00',
                        end: '2014-11-15T14:30:00'
                    },
                    {
                        title: 'REUNIÃO',
                        start: '2014-11-18T14:30:00'
                    },
                    {
                        title: 'FESTA ECOLA',
                        start: '2014-11-30T14:30:00'
                    },

                    //DEZEMBRO
                    {
                        title: 'PASSEIO',
                        start: '2014-12-03T12:00:00'
                    },
                    {
                        id: 999,
                        title: 'JOGO CAMPEONATO CURITIBA',
                        start: '2014-12-13T16:00:00'
                    },
                    {
                        id: 999,
                        title: 'JOGO CAMPEONATO CURITIBA',
                        start: '2014-12-20T16:00:00'
                    },
                    {
                        title: 'VIAGEM',
                        start: '2014-12-11',
                        end: '2014-12-13'
                    },
                    {
                        title: 'ENCERRAMENTO',
                        start: '2014-12-22'
                    },

                    //JANEIRO
                    {
                        title: 'RETORNO  AULAS',
                        start: '2015-01-13T07:00:00'
                    },
                    {
                        title: 'FESTA',
                        start: '2015-01-05T10:30:00'
                    },
                    {
                        title: 'REUNIÃO',
                        start: '2015-01-25T20:00:00'
                    },

                ]
            });
        }

        renderCalendar();
    });


</script>
<style>

body {
    margin: 40px 10px;
    padding: 0;
    font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
    font-size: 14px;
}

#calendar {
    max-width: 900px;
    margin: 0 auto;
}

</style>