package br.edu.luciana.soccerManager

class Usuario {

    String nome
    String usuario
    String senha

    String setNome( String s ){
        nome = s?.toUpperCase()
    }

    String toString(){
        nome
    }

    static constraints = {
        nome (nullable: true, blank: true)
        usuario()
        senha()
    }
}
