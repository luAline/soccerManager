package br.edu.luciana.soccerManager

class AlunoMensalidade {

    Aluno aluno
    Date dataPagamento = new Date()
    double valor = 0.00
    String observacao

    static constraints = {
        aluno()
        dataPagamento()
        valor()
        observacao(nullable: true, blank: true)
    }

    static mapping = {
        observacao type: 'text'
    }
}
