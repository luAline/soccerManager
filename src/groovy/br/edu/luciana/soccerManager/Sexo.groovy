package br.edu.luciana.soccerManager

/**
 * Created with IntelliJ IDEA.
 * User: Luciana
 * Date: 10/11/14
 * Time: 08:30
 * To change this template use File | Settings | File Templates.
 */
public enum Sexo {

    MASCULINO("MASCULINO"),
    FEMININO("FEMININO")

    final String value

    Sexo(String value){
        this.value = value
    }

    @Override
    public String toString(){
        value
    }

    static list(){
        [MASCULINO, FEMININO]
    }


}