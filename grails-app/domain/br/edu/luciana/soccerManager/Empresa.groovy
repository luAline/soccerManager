package br.edu.luciana.soccerManager

class Empresa {

    String razaoSocial
    String nomeFantasia
    String cnpj
    String inscricaoEstadual
    String inscricaoMunicipal
    String responsavel
    String telefone
    String email
    String site
    String logradouro
    String numero
    String complemento
    String bairro
    String cep
    Cidade cidade

    String setRazaoSocial( String s ){
        razaoSocial = s?.toUpperCase()
    }

    String toString(){
        razaoSocial
    }

    String setNomeFantasia( String s ){
        nomeFantasia = s?.toUpperCase()
    }
    String setResponsavel( String s ){
        responsavel = s?.toUpperCase()
    }

    String setInscricaoEstadual( String s ){
        inscricaoEstadual = s?.toUpperCase()
    }

    static constraints = {
        razaoSocial()
        nomeFantasia(nullable: true, blank: true)
        cnpj()
        inscricaoEstadual(nullable: true, blank: true)
        inscricaoMunicipal(nullable: true, blank: true)
        responsavel()
        telefone(nullable: true, blank: true)
        email(nullable: true, blank: true)
        site(nullable: true, blank: true)
        logradouro(nullable: true, blank: true)
        numero(nullable: true, blank: true)
        complemento(nullable: true, blank: true)
        bairro(nullable: true, blank: true)
        cep(nullable: true, blank: true)
        cidade(nullable: true, blank: true)
    }

    static mapping = {
        cnpj length: 14
        telefone length: 11
    }

}
