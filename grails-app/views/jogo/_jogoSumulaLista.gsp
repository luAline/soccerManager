<div class="box-content">
    <table class="table table-bordered table-striped table-condensed" id="index">
        <thead>
        <tr>
            <th><g:message code="soccerManager.acao"/> </th>
            <th><g:message code="time.numCamisa"/></th>
            <th><g:message code="aluno.label"/></th>
            <th><g:message code="jogo.cartao"/></th>
            <th><g:message code="jogo.falta"/></th>
            <th><g:message code="jogo.gol"/></th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${jogoInstance?.time?.id}">
            <tr>
                <td>
                    <i class="glyphicon glyphicon-pencil green"></i>
                    <i class="glyphicon glyphicon-trash red"></i>
                </td>
                <td>ghjbnk</td>
                <td>dlj</td>
                <td>dlj</td>
                <td>dlj</td>
                <td>dlj</td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>