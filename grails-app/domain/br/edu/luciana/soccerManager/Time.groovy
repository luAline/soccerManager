package br.edu.luciana.soccerManager

class Time {

    Categoria categoria
    String observacao

    String setObservacao( String s ){
        observacao = s?.toUpperCase()
    }

    String toString(){
        categoria
    }

    def getListaAlunos(){
        TimeAluno.findAllByTime(this)
    }

    static constraints = {
        categoria(nullable: true, blank: true)
        observacao(nullable: true, blank: true)
    }

    static mapping = {
        observacao type: 'text'
    }
}
