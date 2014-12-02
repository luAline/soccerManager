<%@ page import="br.edu.luciana.soccerManager.Usuario" %>
<div class="col-sm-12 col-lg-12">
    <div class="row">
        <div class="box-content">
            <div class="form-group col-md-6">
                <label for="nome">
                    <g:message code="soccerManager.nome" default="Nome" />

                </label>
                <g:textField class="form-control" name="nome" value="${usuarioInstance?.nome}"/>
            </div>
            <div class="form-group col-md-3">
                <label for="usuario">
                    <g:message code="usuario.label" default="Usuario" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField class="form-control" name="usuario" required="" value="${usuarioInstance?.usuario}"/>
            </div>

            <div class="form-group col-md-3">
                <label for="senha">
                    <g:message code="usuario.senha" default="Senha" />
                    <span class="required-indicator">*</span>
                </label>
                <g:passwordField name="senha" class="form-control" required="" value="${usuarioInstance?.senha}" />
            </div>
        </div>


    </div>

    <h4>Liberação Perfil</h4>
    <h5>Cadastro</h5>
    <div class="row">
        <div class="box-content">
            <div class="form-group col-md-2">
                <label for="aluno">
                    <g:message code="aluno.label" default="Aluno" />

                </label>
                <g:checkBox name="aluno" value="true" />
            </div>

            <div class="form-group col-md-2">
                <label for="categoria">
                    <g:message code="categoria.label" default="Categoria" />

                </label>
                <g:checkBox name="categoria" value="true" />
            </div>

            <div class="form-group col-md-2">
                <label for="funcionario">
                    <g:message code="funcionario.label" default="Funcionário" />

                </label>
                <g:checkBox name="funcionario" value="true" />
            </div>

            <div class="form-group col-md-2">
                <label for="funcao">
                    <g:message code="funcao.label" default="Função" />

                </label>
                <g:checkBox name="funcao" value="true" />
            </div>

            <div class="form-group col-md-2">
                <label for="cidade">
                    <g:message code="cidade.label" default="Cidade" />

                </label>
                <g:checkBox name="cidade" value="true" />
            </div>

            <div class="form-group col-md-2">
                <label for="estado">
                    <g:message code="estado.label" default="Estado" />

                </label>
                <g:checkBox name="estado" value="true" />
            </div>
        </div>
    </div>

    <div class="row">
        <div class="box-content">
            <div class="form-group col-md-2">
                <label for="pais">
                    <g:message code="pais.label" default="País" />

                </label>
                <g:checkBox name="pais" value="true" />
            </div>
        </div>
    </div>
    <h5>Competições</h5>
    <div class="row">
        <div class="box-content">
            <div class="form-group col-md-2">
                <label for="time">
                    <g:message code="time.label" default="Time" />

                </label>
                <g:checkBox name="time" value="true" />
            </div>

            <div class="form-group col-md-2">
                <label for="jogo">
                    <g:message code="jogo.label" default="Jogo" />

                </label>
                <g:checkBox name="jogo" value="true" />
            </div>

            <div class="form-group col-md-2">
                <label for="calendario">
                    <g:message code="calendario.label" default="Calendário" />

                </label>
                <g:checkBox name="calendario" value="true" />
            </div>

            <div class="form-group col-md-2">
                <label for="local">
                    <g:message code="local.label" default="Local" />

                </label>
                <g:checkBox name="local" value="true" />
            </div>

            <div class="form-group col-md-2">
                <label for="galeriaFotos">
                    <g:message code="jogo.galeriaFoto" default="Galeria de Fotos" />

                </label>
                <g:checkBox name="galeriaFotos" value="true" />
            </div>
        </div>
    </div>

    <h5>Configurações</h5>
    <div class="row">
        <div class="box-content">
            <div class="form-group col-md-2">
                <label for="usuario">
                    <g:message code="usuario.label" default="Usuário" />

                </label>
                <g:checkBox name="usuario" value="" />
            </div>

            <div class="form-group col-md-2">
                <label for="empresa">
                    <g:message code="empresa.label" default="Empresa" />

                </label>
                <g:checkBox name="empresa" value="true" />
            </div>
        </div>
    </div>
</div>


