<!-- quando for no jogo sumula -->
<div class="box-content">
    <table class="table table-bordered table-striped table-condensed">
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

            <tr>
                <td>
                    <i class="glyphicon glyphicon-trash red"></i>
                </td>
                <td>num camisa</td>
                <td>aluno</td>
                <td>
                <g:select name="cartao" from="${br.edu.luciana.soccerManager.Cartao.values()}" value=""/>
                </td>
                <td>
                    <g:textField name="falta" class="form-control" value=""/>
                </td>
                <td>
                    <g:textField name="gol" class="form-control" value=""/>
                </td>
            </tr>
        <tr>
            <td>
                <i class="glyphicon glyphicon-trash red"></i>
            </td>
            <td>num camisa</td>
            <td>aluno</td>
            <td>
                <g:select name="cartao" from="${br.edu.luciana.soccerManager.Cartao.values()}" value=""/>
            </td>
            <td>
                <g:textField name="falta" class="form-control" value=""/>
            </td>
            <td>
                <g:textField name="gol" class="form-control" value=""/>
            </td>
        </tr>

        </tbody>
    </table>
</div>
<div class="box-content center">
    <button class="btn btn-success">
        <i class="glyphicon glyphicon-list icon-white"></i>
        <g:message code="default.add.label" />
    </button>
</div>

