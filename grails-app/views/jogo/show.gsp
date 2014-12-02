
<%@ page import="br.edu.luciana.soccerManager.Jogo" %>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'jogo.label', default: 'Jogo')}" />

<div class="col-sm-10 col-lg-10">
    <ul class="breadcrumb">
        <li>
            <a class="home" href="${createLink(url: '../menu/telaInicio')}"><g:message code="default.home.label"/></a>
        </li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        <li><g:message code="default.show.label" args="[entityName]" /></li>
    </ul>
</div>

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

<div class="col-sm-10 col-lg-10">
    <div class="row">
        <div class="box col-md-12">
            <g:link controller="jogo" action="index">
                <button class="btn btn-default">
                    <i class="glyphicon glyphicon-list icon-white"></i>
                    <g:message code="default.list.label" args="[entityName]" />
                </button>
            </g:link>
            <g:link controller="jogo" action="create">
                <button class="btn btn-info">
                    <i class="glyphicon glyphicon-plus icon-white"></i>
                    <g:message code="default.new.label" args="[entityName]" />
                </button>
            </g:link>
            <g:link controller="jogo" action="jogoSumula" id="${jogoInstance?.id}">
                <button class="btn btn-default">
                    <i class="glyphicon glyphicon-plus icon-white"></i>
                    <g:message code="jogo.sumula" args="[entityName]" />
                </button>
            </g:link>

        </div>
    </div>

    <div class="col-sm-12 col-lg-12">
        <div class="row">
            <div class="box col-md-12">
                <div class="box-inner">
                    <div class="box-header well">
                        <h2><i class="glyphicon glyphicon-picture"></i> <g:message code="default.show.label" args="[entityName]" /></h2>
                    </div>
                    <div class="row">
                        <div class="box-content">
                            <div class="form-group col-md-7">
                                <label for="descricao">
                                    <g:message code="soccerManager.descricao" default="Descricao" />

                                </label>
                                <g:textField name="descricao" class="form-control" readonly="true" value="${jogoInstance?.descricao}"/>
                            </div>
                            <div class="form-group col-md-5">
                                <label for="adversario">
                                    <g:message code="jogo.adversario" default="Adversario" />

                                </label>
                                <g:textField name="adversario" class="form-control" readonly="true" value="${jogoInstance?.adversario}"/>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="box-content">
                            <div class="form-group col-md-6">
                                <label for="time">
                                    <g:message code="time.label" default="Time" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField name="time" class="form-control" readonly="true" value="${jogoInstance?.time}"/>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="dataJogo">
                                    <g:message code="data.jogo" default="Data Jogo" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField name="dataJogo" readonly="true" class="form-control" value="${formatDate(format: 'dd/MM/yyyy', date: jogoInstance?.dataJogo)}"/>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="categoria">
                                    <g:message code="categoria.label" default="Categoria" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField name="categoria" class="form-control" readonly="true" value="${jogoInstance?.categoria}"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="box-content">
                            <div class="form-group col-md-12">
                                <label for="local">
                                    <g:message code="local.label" default="Local" />
                                    <span class="required-indicator">*</span>
                                </label>
                                <g:textField name="local" class="form-control" readonly="true" value="${jogoInstance?.local}"/>
                            </div>
                        </div>
                    </div>

                    <div class="box-content">
                        <div class="form-group">
                            <g:form url="[resource:jogoInstance, action:'edit']">
                                <g:actionSubmit class="edit btn btn-success col-lg-1" action="edit" id="${jogoInstance.id}" resource="${jogoInstance}" value="${message(code: 'default.button.edit.label', default: 'Edit')}"/>
                            </g:form>

                            <g:form url="[resource:jogoInstance, action:'delete']" method="DELETE">
                                <g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                            </g:form>
                        </div>
                    </div>
                    <div class="box-content">
                        <!-- quando for no SHOW -->
                        <div class="box-content">
                            <table class="table table-bordered table-striped table-condensed">
                                <thead>
                                <tr>
                                    <th><g:message code="soccerManager.acao"/> </th>
                                    <th><g:message code="time.numCamisa"/></th>
                                    <th><g:message code="aluno.label"/></th>
                                    <th><g:message code="jogo.cartao"/></th>
                                    <th><g:message code="jogo.falta"/></th>
                                    <th><g:message code="jogo.gol"/></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                     <td>
                                         <i class="glyphicon glyphicon-pencil green"></i>
                                         <i class="glyphicon glyphicon-trash red"></i>
                                     </td>
                                     <td>nº camisa</td>
                                     <td>aluno</td>
                                     <td>cartao</td>
                                     <td>falta</td>
                                     <td>gol</td>
                                </tr>

                                <tr>
                                    <td>
                                        <i class="glyphicon glyphicon-pencil green"></i>
                                        <i class="glyphicon glyphicon-trash red"></i>
                                    </td>
                                    <td>nº camisa</td>
                                    <td>aluno</td>
                                    <td>cartao</td>
                                    <td>falta</td>
                                    <td>gol</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

