package br.edu.luciana.soccerManager



class Aluno {

    String nome
    String matricula
    Date dataNascimento
    int idade
    String RG
    String CPF
    Sexo sexo = Sexo.MASCULINO
    String responsavel
    String responsavelRG
    String responsavelCPF
    String parentesco
    String telefone
    double valorMensalidade
    Date vencimentoMensalidade
    Date dataCadastro
    double altura
    double peso
    double imc
    String pressaoArterial
    String alergia
    String deficiencia
    boolean ativo
    String observacao
    Categoria categoria
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

    String setResponsavel( String s ){
        responsavel = s?.toUpperCase()
    }

    String setParentesco( String s ){
        parentesco = s?.toUpperCase()
    }

    String setAlergia( String s ){
        alergia = s?.toUpperCase()
    }

    String setDeficiencia( String s ){
        deficiencia = s?.toUpperCase()
    }

    String setObservacao( String s ){
        observacao = s?.toUpperCase()
    }


    static constraints = {
        nome()
        matricula()
        dataNascimento()
        idade()
        RG(nullable: true, blank: true)
        CPF(nullable: true, blank: true)
        sexo()
        responsavel(nullable: true, blank: true)
        responsavelRG(nullable: true, blank: true)
        responsavelCPF(nullable: true, blank: true)
        parentesco(nullable: true, blank: true)
        telefone()
        valorMensalidade(nullable: true, blank: true)
        vencimentoMensalidade(nullable: true, blank: true)
        dataCadastro()
        altura(nullable: true, blank: true)
        peso(nullable: true, blank: true)
        imc(nullable: true, blank: true)
        pressaoArterial(nullable: true, blank: true)
        alergia(nullable: true, blank: true)
        deficiencia(nullable: true, blank: true)
        ativo()
        observacao(nullable: true, blank: true)
        categoria()
        logradouro(nullable: true, blank: true)
        numero(nullable: true, blank: true)
        complemento(nullable: true, blank: true)
        bairro(nullable: true, blank: true)
        cep(nullable: true, blank: true)
        cidade(nullable: true, blank: true)
    }
}
