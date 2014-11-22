package br.edu.luciana.soccerManager

class Categoria {

    String nome
    int idadeMinima
    int idadeMaxima

    String toString(){
        nome
    }

    String setNome( String s ){
        nome = s?.toUpperCase()
    }

    static constraints = {
        nome()
        idadeMinima()
        idadeMaxima()
    }

}
