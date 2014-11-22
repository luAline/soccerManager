package br.edu.luciana.soccerManager

class Jogo {

    String descricao
    String adversario
    Time time
    Cartao cartao = Cartao.NENHUM
    int falta
    int gol
    Date dataJogo = new Date()
    Categoria categoria
    Local local

    String setDescricao( String s ){
        descricao = s?.toUpperCase()
    }
    String setAdversario( String s ){
        adversario = s?.toUpperCase()
    }

    static constraints = {
        descricao(nullable: true, blank: true)
        adversario(nullable: true, blank: true)
        time()
        cartao(nullable: true, blank: true)
        falta(nullable: true, blank: true)
        gol(nullable: true, blank: true)
        dataJogo()
        categoria()
        local()
    }
}
