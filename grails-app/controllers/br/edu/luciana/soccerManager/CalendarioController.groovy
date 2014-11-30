package br.edu.luciana.soccerManager



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CalendarioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Calendario.list(params), model: [calendarioInstanceCount: Calendario.count()]
    }

    def show(Calendario calendarioInstance) {
        respond calendarioInstance
    }

    def create() {
        respond new Calendario(params)
    }

    @Transactional
    def save(Calendario calendarioInstance) {
        if (calendarioInstance == null) {
            notFound()
            return
        }

        if (calendarioInstance.hasErrors()) {
            respond calendarioInstance.errors, view: 'create'
            return
        }

        calendarioInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'calendario.label', default: 'Calendario'), calendarioInstance.id])
                redirect calendarioInstance
            }
            '*' { respond calendarioInstance, [status: CREATED] }
        }
    }

    def edit(Calendario calendarioInstance) {
        respond calendarioInstance
    }

    @Transactional
    def update(Calendario calendarioInstance) {
        if (calendarioInstance == null) {
            notFound()
            return
        }

        if (calendarioInstance.hasErrors()) {
            respond calendarioInstance.errors, view: 'edit'
            return
        }

        calendarioInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Calendario.label', default: 'Calendario'), calendarioInstance.id])
                redirect calendarioInstance
            }
            '*' { respond calendarioInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Calendario calendarioInstance) {

        if (calendarioInstance == null) {
            notFound()
            return
        }

        calendarioInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Calendario.label', default: 'Calendario'), calendarioInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'calendario.label', default: 'Calendario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def calendario(){

    }
}
