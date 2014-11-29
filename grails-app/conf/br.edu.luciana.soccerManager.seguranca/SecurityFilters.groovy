package br.edu.luciana.soccerManager.seguranca

class SecurityFilters {
    def filters = {
        loginCheck(controller: '*', action: '*') {
            before = {
                if (!session.usuario && !actionName.equals('login') && !actionName.equals('fazerLogin')) {
                    redirect(controller:'usuario', action: 'login')
                    return false
                }
            }
        }
    }
}