package br.edu.luciana.soccerManager

class Funcao {

    String nome
    boolean ativo

    String toString(){
        nome
    }

    String setNome( String s ){
        nome = s?.toUpperCase()
    }

    static constraints = {
        nome()
        ativo()
    }
}
