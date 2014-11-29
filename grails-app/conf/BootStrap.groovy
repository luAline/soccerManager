import br.edu.luciana.soccerManager.Usuario

class BootStrap {

    def init = { servletContext ->

        Integer qtdeUsuario = Usuario.findAll()?.size()

        if (qtdeUsuario ==0){
            //Criar Usuario Inicial
            new Usuario(nome: "Administrador do Sistema",usuario: "admin",senha: "1234").save(flush: true)
        }

    }
    def destroy = {
    }
}
