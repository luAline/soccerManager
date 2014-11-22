package br.edu.luciana.soccerManager

class Estado {

    String nome
    Pais pais

    String toString(){
        nome
    }

    String setNome( String s ){
        nome = s?.toUpperCase()
    }

    static constraints = {
        nome()
        pais()
    }
}
