package br.edu.luciana.soccerManager

class Time {

    int numeroCamisa
    Aluno aluno
    Categoria categoria
    String observacao

    String setObservacao( String s ){
        observacao = s?.toUpperCase()
    }

    static constraints = {
        numeroCamisa(nullable: true, blank: true)
        aluno(nullable: true, blank: true)
        categoria(nullable: true, blank: true)
        observacao(nullable: true, blank: true)
    }

    static mapping = {
        observacao type: 'text'
        numeroCamisa length: 4
    }
}
