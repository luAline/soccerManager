package br.edu.luciana.soccerManager

import java.text.SimpleDateFormat

class AlunoMensalidade {

    Aluno aluno
    Date dataPagamento = new Date()
    double valor = 0.00
    String observacao

    String setObservacao( String s ){
        observacao = s?.toUpperCase()
    }

    String getDataPagamentoString(){ new SimpleDateFormat("dd/MM/yyyy").format(dataPagamento) }

    static constraints = {
        aluno()
        dataPagamento()
        valor()
        observacao(nullable: true, blank: true)
    }

    static mapping = {
        observacao type: 'text'
    }
}
