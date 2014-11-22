package br.edu.luciana.soccerManager

class Cidade {

    String nome
    Estado estado

    String toString(){
        nome
    }

    String setNome( String s ){
        nome = s?.toUpperCase()
    }

    String getEstadoString(){estado?.nome+" - "+estado?.pais?.nome}

    static constraints = {
        nome()
        estado()
    }
}
