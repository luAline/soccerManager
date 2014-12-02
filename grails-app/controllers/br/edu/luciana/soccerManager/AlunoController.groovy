package br.edu.luciana.soccerManager



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AlunoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Aluno.list(params), model:[alunoInstanceCount: Aluno.count()]
    }


    def show(Aluno alunoInstance) {
        def resultado = (alunoInstance?.altura * alunoInstance?.altura)
        alunoInstance?.imc = (alunoInstance?.peso / resultado )

        return [alunoInstance: alunoInstance]
    }

    def create() {
        respond new Aluno(params)
    }

    @Transactional
    def save(Aluno alunoInstance) {
        if (alunoInstance == null) {
            notFound()
            return
        }

        if (alunoInstance.hasErrors()) {
            respond alunoInstance.errors, view:'create'
            return
        }

        alunoInstance.idade = Aluno.calculaIdade(alunoInstance.dataNascimento)

        alunoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'aluno.label', default: 'Aluno'), alunoInstance.id])
                redirect alunoInstance
            }
            '*' { respond alunoInstance, [status: CREATED] }
        }
    }

    def edit(Aluno alunoInstance) {
        respond alunoInstance
    }

    @Transactional
    def update(Aluno alunoInstance) {
        if (alunoInstance == null) {
            notFound()
            return
        }

        if (alunoInstance.hasErrors()) {
            respond alunoInstance.errors, view:'edit'
            return
        }
        alunoInstance.idade = Aluno.calculaIdade(alunoInstance.dataNascimento)
        alunoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Aluno.label', default: 'Aluno'), alunoInstance.id])
                redirect alunoInstance
            }
            '*'{ respond alunoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Aluno alunoInstance) {

        if (alunoInstance == null) {
            notFound()
            return
        }

        alunoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Aluno.label', default: 'Aluno'), alunoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'aluno.label', default: 'Aluno'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def mensalidadeLista(){

        def alunoInstance = Aluno.get(params.id)
        def alunoMensalidadeInstance =  AlunoMensalidade.get(params.alunoMensalidade)
        def listaAlunoMensalidade = AlunoMensalidade.list()

        return [alunoInstance: alunoInstance, alunoMensalidadeInstance: alunoMensalidadeInstance, listaAlunoMensalidade:listaAlunoMensalidade]
    }

    @Transactional
    def pagarMensalidade(){
        println("pagarMensalidade: "+params)
        def alunoInstance = Aluno.get(params.aluno)
        def alunoMensalidadeInstance = AlunoMensalidade.findAllByAluno(alunoInstance)

        alunoMensalidadeInstance = new AlunoMensalidade(aluno: alunoInstance, valor: params.valor, dataPagamento: params.dataPagamento, observacao: params.observacao.toString())
        alunoMensalidadeInstance.save(flush: true)
        flash.message = "Pagamento incluído"
        redirect(action: "mensalidadeLista", id: params.aluno)

        return[alunoMensalidadeInstance: alunoMensalidadeInstance]

    }

    @Transactional
    def excluirPagamento(){
        def alunoMensalidadeInstance = AlunoMensalidade.get(params.id)
        Integer idAluno = alunoMensalidadeInstance?.aluno?.id
        alunoMensalidadeInstance.delete(flush: true)
        flash.message = "Pagamento excluido"
        redirect(action: "mensalidadeLista", id: idAluno)
    }

    def historico(){
        def alunoInstance = Aluno.get(params.id)
        def alunoHistoricoInstance = AlunoHistorico.get(params.alunoHistorico)
        def listaHistorico = AlunoHistorico.list()

        return [alunoInstance: alunoInstance, alunoHistoricoInstance: alunoHistoricoInstance]

    }

    @Transactional
    def adicionarHistorico(){
        println("adicionarHistorico: "+params)
        def alunoInstance = Aluno.get(params.id)
        def alunoHistoricoInstance = AlunoHistorico.findAllByAluno(alunoInstance)

        alunoHistoricoInstance = new AlunoHistorico(aluno:alunoInstance, dataAnotacao: params.dataAnotacao, anotacao: params.anotacao.toString())
        alunoHistoricoInstance.save(flush: true)
        flash.message = "Anotação gravada."
        redirect(action: "historico", id: params.aluno)

        return [alunoHistoricoInstance:alunoHistoricoInstance]
    }

    def jogos(){

    }
}
