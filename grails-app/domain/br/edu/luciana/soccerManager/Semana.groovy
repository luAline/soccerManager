package br.edu.luciana.soccerManager

class Semana {

    boolean domingo = true
    boolean segunda = true
    boolean terca = true
    boolean quarta = true
    boolean quinta = true
    boolean sexta = true
    boolean sabado = true

    static constraints = {
        domingo()
        segunda()
        terca()
        quarta()
        quinta()
        sexta()
        sabado()
    }
}
