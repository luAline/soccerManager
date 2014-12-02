package br.edu.luciana.soccerManager

import java.text.SimpleDateFormat

class AlunoHistorico {

    Aluno aluno
    Date dataAnotacao = new Date()
    String anotacao

    String getDataAnotacaoString(){ new SimpleDateFormat("dd/MM/yyyy").format(dataAnotacao)}

    static constraints = {
        aluno()
        dataAnotacao()
        anotacao()
    }

    static mapping = {
        anotacao type: 'text'
    }
}
