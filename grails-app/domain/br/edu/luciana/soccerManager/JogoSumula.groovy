package br.edu.luciana.soccerManager

class JogoSumula {

    Aluno aluno
    Time time
    Cartao cartao = Cartao.NENHUM
    Integer faltas
    Integer gol



    static constraints = {
        aluno()
        time()
        cartao()
        faltas(nullable: true, blank: true)
        gol(nullable: true, blank: true)
    }
}
