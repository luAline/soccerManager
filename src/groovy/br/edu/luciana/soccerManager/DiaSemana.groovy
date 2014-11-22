package br.edu.luciana.soccerManager

/**
 * Created with IntelliJ IDEA.
 * User: Luciana
 * Date: 10/11/14
 * Time: 08:35
 * To change this template use File | Settings | File Templates.
 */
public enum DiaSemana {
    DOMINGO("DOMINGO"),
    SEGUNDA("SEGUNDA"),
    TERCA("TERÇA"),
    QUARTA("QUARTA"),
    QUINTA("QUINTA"),
    SEXTA("SEXTA"),
    SABADO("SÁBADO")

    final String value

    DiaSemana(String value){
        this.value = value
    }

    @Override
    public String toString(){
        value
    }

    static lis(){
        [DOMINGO, SEGUNDA, TERCA, QUARTA, QUINTA, SEXTA, SABADO]
    }
}
