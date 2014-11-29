package br.edu.luciana.soccerManager



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SemanaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Semana.list(params), model: [semanaInstanceCount: Semana.count()]
    }

    def show(Semana semanaInstance) {
        respond semanaInstance
    }

    def create() {
        respond new Semana(params)
    }

    @Transactional
    def save(Semana semanaInstance) {
        if (semanaInstance == null) {
            notFound()
            return
        }

        if (semanaInstance.hasErrors()) {
            respond semanaInstance.errors, view: 'create'
            return
        }

        semanaInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'semana.label', default: 'Semana'), semanaInstance.id])
                redirect semanaInstance
            }
            '*' { respond semanaInstance, [status: CREATED] }
        }
    }

    def edit(Semana semanaInstance) {
        respond semanaInstance
    }

    @Transactional
    def update(Semana semanaInstance) {
        if (semanaInstance == null) {
            notFound()
            return
        }

        if (semanaInstance.hasErrors()) {
            respond semanaInstance.errors, view: 'edit'
            return
        }

        semanaInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Semana.label', default: 'Semana'), semanaInstance.id])
                redirect semanaInstance
            }
            '*' { respond semanaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Semana semanaInstance) {

        if (semanaInstance == null) {
            notFound()
            return
        }

        semanaInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Semana.label', default: 'Semana'), semanaInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'semana.label', default: 'Semana'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
