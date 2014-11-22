package br.edu.luciana.soccerManager

class Foto {

    String nome
    String caminho

    static constraints = {
        nome(nullable: true, blank: true)
        caminho()
    }
}
