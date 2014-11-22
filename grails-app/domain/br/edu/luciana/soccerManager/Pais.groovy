package br.edu.luciana.soccerManager

class Pais {

    String nome

    String toString(){
        nome
    }

    String setNome( String s ){
        nome = s?.toUpperCase()
    }

    static constraints = {
        nome()
    }
}
