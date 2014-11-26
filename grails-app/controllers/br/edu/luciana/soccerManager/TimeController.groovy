package br.edu.luciana.soccerManager



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TimeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Time.list(params), model: [timeInstanceCount: Time.count()]
    }

    def show(Time timeInstance) {
        def alunoLista = Aluno.list()

        println("Idade min: "+timeInstance?.categoria?.idadeMinima)
        println("Idade max: "+timeInstance?.categoria?.idadeMaxima)
        [timeInstance:timeInstance,alunoLista:alunoLista]
    }

    def create() {
        def alunoLista = Aluno.list()
        def timeInstance = new Time(params)
        return [alunoLista: alunoLista, timeInstance: timeInstance]
    }

    @Transactional
    def save(Time timeInstance) {
        if (timeInstance == null) {
            notFound()
            return
        }

        if (timeInstance.hasErrors()) {
            respond timeInstance.errors, view: 'create'
            return
        }

        timeInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'time.label', default: 'Time'), timeInstance.id])
                redirect timeInstance
            }
            '*' { respond timeInstance, [status: CREATED] }
        }
    }

    def edit(Time timeInstance) {
        respond timeInstance
    }

    @Transactional
    def update(Time timeInstance) {
        if (timeInstance == null) {
            notFound()
            return
        }

        if (timeInstance.hasErrors()) {
            respond timeInstance.errors, view: 'edit'
            return
        }

        timeInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Time.label', default: 'Time'), timeInstance.id])
                redirect timeInstance
            }
            '*' { respond timeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Time timeInstance) {

        if (timeInstance == null) {
            notFound()
            return
        }

        timeInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Time.label', default: 'Time'), timeInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'time.label', default: 'Time'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def categoria(){
        def listaCategoriaList = Categoria.list()
        return [listaCategoriaList:listaCategoriaList]
    }
}
