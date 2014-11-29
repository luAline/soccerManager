package br.edu.luciana.soccerManager



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TimeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Time.list(params), model:[timeInstanceCount: Time.count()]
    }

    def show(Time timeInstance) {
        respond timeInstance
    }

    def create() {

        respond new Time(params)

    }

    @Transactional
    def save(Time timeInstance) {
        if (timeInstance == null) {
            notFound()
            return
        }

        if (timeInstance.hasErrors()) {
            respond timeInstance.errors, view:'create'
            return
        }

        timeInstance.save flush:true

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
            respond timeInstance.errors, view:'edit'
            return
        }

        timeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Time.label', default: 'Time'), timeInstance.id])
                redirect timeInstance
            }
            '*'{ respond timeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Time timeInstance) {

        if (timeInstance == null) {
            notFound()
            return
        }

        timeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Time.label', default: 'Time'), timeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'time.label', default: 'Time'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def categoria(){
        def listaCategoriaList = Categoria.list()
        return [listaCategoriaList:listaCategoriaList]
    }

    def montarTime(){
        def timeInstance = Time.get(params.id)
        def timeAlunoInstance = TimeAluno.get(params.timeAluno)
        def listaAlunos = Aluno.findAll("from Aluno a where a.idade >= "+timeInstance.categoria?.idadeMinima+" and a.idade <= "+timeInstance.categoria?.idadeMaxima)

        return [timeAlunoInstance:timeAlunoInstance,timeInstance: timeInstance,listaAlunos:listaAlunos]
    }

    @Transactional
    def adicionarAlunoTime(){
        println("adicionarAlunoTime:"+params)
        def timeInstance = Time.get(params.time)
        def alunoInstance = Aluno.get(params.aluno)
        def timeAlunoInstance = TimeAluno.findByTimeAndAluno(timeInstance,alunoInstance)
        if ((timeAlunoInstance) && (!params.timeAluno)) {
            flash.message = "Aluno já se encontra no time"
            redirect(action: "montarTime", id: params.time)
        }else{
            timeAlunoInstance = TimeAluno.get(params.timeAluno)
            if (timeAlunoInstance){
                timeAlunoInstance.aluno = alunoInstance
                timeAlunoInstance.numeroCamisa = params.numeroCamisa.toInteger()
                timeAlunoInstance.save(flush: true)
                flash.message = "Aluno Atualizado"
                redirect(action: "montarTime", id: params.time)
            }else{
                timeAlunoInstance = new TimeAluno(time:timeInstance, aluno: alunoInstance, numeroCamisa: params.numeroCamisa.toInteger())
                timeAlunoInstance.save(flush: true)
                flash.message = "Aluno adicionado no time"
                redirect(action: "montarTime", id: params.time)
            }

        }
    }

    @Transactional
    def retirarAluno(){
        def timeAlunoInstance = TimeAluno.get(params.id)
        Integer idTime = timeAlunoInstance.time.id
        timeAlunoInstance.delete(flush: true)
        flash.message = "Aluno Retirado"
        redirect(action: "montarTime", id:idTime)
    }
}
