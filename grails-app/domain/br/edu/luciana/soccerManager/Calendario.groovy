package br.edu.luciana.soccerManager

class Calendario {

    String titulo
    String descricao
    Local local
    Date dataInicial
    Date dataFinal



    static constraints = {
        titulo(nullable: true, blank: true)
        descricao(nullable: true, blank: true)
        local(nullable: true, blank: true)
        dataInicial(nullable: true, blank: true)
        dataFinal(nullable: true, blank: true)
    }
}
