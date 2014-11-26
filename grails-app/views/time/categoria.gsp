<table>
    <thead>
    <tr>
        <th>Nome</th>
        <th>Idade Min</th>
        <th>Idade Max</th>
    </tr>
    </thead>
    <tbody>

    <g:each in="${listaCategoriaList}" var="timeInstance">
        <tr>
            <td>${timeInstance?.nome}</td>
            <td>${timeInstance?.idadeMinima}</td>
            <td>${timeInstance?.idadeMaxima}</td>
        </tr>
    </g:each>
    </tbody>
</table>