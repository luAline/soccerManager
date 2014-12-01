package br.edu.luciana.soccerManager

import java.text.SimpleDateFormat

class Calendario {

    String titulo
    String descricao
    Local local
    Date dataInicial
    Date dataFinal

    String toString(){
        titulo
    }

    String setTitulo( String s ){
        titulo = s?.toUpperCase()
    }

    String setDescricao( String s ){
        descricao = s?.toUpperCase()
    }

    String getDataInicialString(){new SimpleDateFormat("dd/MM/yyyy").format(dataInicial)}
    String getDataFinalString(){new SimpleDateFormat("dd/MM/yyyy").format(dataFinal)}

    static constraints = {
        titulo(nullable: true, blank: true)
        descricao(nullable: true, blank: true)
        local(nullable: true, blank: true)
        dataInicial(nullable: true, blank: true)
        dataFinal(nullable: true, blank: true)
    }
}
