<div class="box-content">
    <table class="table table-bordered table-striped table-condensed" id="index">
        <thead>
        <tr>
            <th><g:message code="soccerManager.acao"/> </th>
            <th><g:message code="aluno.label"/> </th>
            <th><g:message code="time.numCamisa"/> </th>
            <th><g:message code="categoria.label"/> </th>
            <th><g:message code="aluno.idade"/> </th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${timeInstance.listaAlunos}" var="timeAlunoInstance">


        <tr>
            <th>
                <g:link action="montarTime" id="${timeInstance.id}" params="${['timeAluno':timeAlunoInstance.id]}"><i class="glyphicon glyphicon-pencil green"></i></g:link>
                <g:link action="retirarAluno" id="${timeAlunoInstance.id}"><i class="glyphicon glyphicon-trash red"></i></g:link>
            </th>
            <th>${timeAlunoInstance.aluno}</th>
            <th>${timeAlunoInstance.numeroCamisa}</th>
            <th>${timeAlunoInstance.time.categoria}</th>
            <th>${timeAlunoInstance.aluno.idade}</th>
        </tr>

        </g:each>
        </tbody>
    </table>
</div>