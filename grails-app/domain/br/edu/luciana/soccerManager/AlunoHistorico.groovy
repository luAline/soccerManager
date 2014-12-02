package br.edu.luciana.soccerManager

class AlunoHistorico {

    Aluno aluno
    Date dataAnotacao = new Date()
    String anotacao

    static constraints = {
        aluno()
        dataAnotacao()
        anotacao()
    }

    static mapping = {
        anotacao type: 'text'
    }
}
