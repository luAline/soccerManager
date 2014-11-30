package br.edu.luciana.soccerManager

import java.text.SimpleDateFormat

class Jogo {

    String descricao
    String adversario
    Time time
    Date dataJogo = new Date()
    Categoria categoria
    Local local



    String setDescricao( String s ){
        descricao = s?.toUpperCase()
    }
    String setAdversario( String s ){
        adversario = s?.toUpperCase()
    }

    String getDataJogoString(){ new SimpleDateFormat("dd/MM/yyyy").format(dataJogo) }



    static constraints = {
        descricao(nullable: true, blank: true)
        adversario(nullable: true, blank: true)
        time()
        dataJogo()
        categoria()
        local()
    }
}
