package br.edu.luciana.soccerManager

import java.text.SimpleDateFormat

class Funcionario {

    String nome
    Date dataNascimento
    int idade
    String RG
    String CPF
    Sexo sexo = Sexo.MASCULINO
    String telefone
    Date dataCadastro
    String banco
    String agencia
    String conta
    double valorSalario = 0.00
    boolean ativo
    String observacao
    String logradouro
    String numero
    String complemento
    String bairro
    String cep
    Cidade cidade
    Funcao funcao

    String toString(){
        nome
    }

    String setNome( String s ){
        nome = s?.toUpperCase()
    }

    String setBanco( String s ){
        banco = s?.toUpperCase()
    }

    String setObservacao( String s ){
        observacao = s?.toUpperCase()
    }

    String getDataNascimentoString(){new SimpleDateFormat("dd/MM/yyyy").format(dataNascimento)}
    String getDataCadastroString(){new SimpleDateFormat("dd/MM/yyyy").format(dataCadastro)}


    public static int calculaIdade(Date data){
        Calendar dateOfBirth = new GregorianCalendar();
        dateOfBirth.setTime(data);

        // Cria um objeto calendar com a data atual
        Calendar today = Calendar.getInstance();

        // Obtém a idade baseado no ano
        int age = today.get(Calendar.YEAR) - dateOfBirth.get(Calendar.YEAR);
        dateOfBirth.add(Calendar.YEAR, age);
        if (today.before(dateOfBirth)) {
            age--;
        }
        return age;
    }

    static constraints = {
        nome()
        dataNascimento()
        idade(nullable: true, blank: true)
        RG(nullable: true, blank: true)
        CPF(nullable: true, blank: true)
        sexo()
        telefone(nullable: true, blank: true)
        dataCadastro()
        banco(nullable: true, blank: true)
        agencia(nullable: true, blank: true)
        conta(nullable: true, blank: true)
        valorSalario()
        ativo()
        observacao(nullable: true, blank: true)
        logradouro(nullable: true, blank: true)
        numero(nullable: true, blank: true)
        complemento(nullable: true, blank: true)
        bairro(nullable: true, blank: true)
        cep(nullable: true, blank: true)
        cidade(nullable: true, blank: true)
        funcao(nullable: true, blank: true)
    }

    static mapping = {
        observacao type: "text"
    }
}
