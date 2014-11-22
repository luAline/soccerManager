package br.edu.luciana.soccerManager

class Local {

    String nome
    String observacao
    String logradouro
    String numero
    String complemento
    String bairro
    String cep
    Cidade cidade

    String toString(){
        nome
    }

    String setNome( String s ){
        nome = s?.toUpperCase()
    }

    String setObservacao( String s ){
        observacao = s?.toUpperCase()
    }

    String setLogradouro( String s ){
        logradouro = s?.toUpperCase()
    }

    String setComplemento( String s ){
        complemento = s?.toUpperCase()
    }

    String setBairro( String s ){
        bairro = s?.toUpperCase()
    }

    static constraints = {
        nome()
        observacao(nullable: true, blank: true)
        logradouro(nullable: true, blank: true)
        numero(nullable: true, blank: true)
        complemento(nullable: true, blank: true)
        bairro(nullable: true, blank: true)
        cep(nullable: true, blank: true)
        cidade(nullable: true, blank: true)
    }
}
