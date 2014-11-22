package br.edu.luciana.soccerManager

/**
 * Created with IntelliJ IDEA.
 * User: Luciana
 * Date: 10/11/14
 * Time: 08:40
 * To change this template use File | Settings | File Templates.
 */
public enum Cartao {
    AMARELO("AM"),
    VERMELHO("VER"),
    AZUL("AZ"),
    NENHUM("-")

    final String value

    Cartao(String value){
        this.value = value
    }

    @Override
    public String toString(){
        value
    }

    static list(){
        [AMARELO, VERMELHO, AZUL, NENHUM]
    }
}
