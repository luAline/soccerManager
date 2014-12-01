
<%@ page import="br.edu.luciana.soccerManager.Calendario" %>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'calendario.evento', default: 'Evento')}" />

<div class="col-sm-10 col-lg-10">
    <ul class="breadcrumb">
        <li>
            <a class="home" href="${createLink(url: '../menu/telaInicio')}"><g:message code="default.home.label"/></a>
        </li>
        <li><g:link action="calendario"><g:message code="calendario.label" /></g:link></li>
        <li><g:message code="default.show.label" args="[entityName]" /></li>
    </ul>
</div>

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

<div class="col-sm-10 col-lg-10">
    <div class="row">
        <div class="box col-md-12">
            <g:link controller="calendario" action="calendario">
                <button class="btn btn-default">
                    <i class="glyphicon glyphicon-list icon-white"></i>
                    <g:message code="calendario.label" />
                </button>
            </g:link>
            <g:link controller="calendario" action="create">
                <button class="btn btn-info">
                    <i class="glyphicon glyphicon-plus icon-white"></i>
                    <g:message code="default.new.label" args="[entityName]" />
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
                            <div class="form-group col-md-6">
                                <label for="titulo">
                                    <g:message code="calendario.titulo" default="Titulo" />

                                </label>
                                <g:textField name="titulo" class="form-control" readonly="true" value="${calendarioInstance?.titulo}"/>
                            </div>

                            <div class="form-group col-md-6">
                                <label for="descricao">
                                    <g:message code="soccerManager.descricao" default="Descricao" />

                                </label>
                                <g:textField name="descricao" class="form-control" readonly="true" value="${calendarioInstance?.descricao}"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="box-content">
                            <div class="form-group col-md-6">
                                <label for="local">
                                    <g:message code="local" default="Local" />

                                </label>
                                <g:textField name="local" class="form-control" readonly="true" value="${calendarioInstance?.local}"/>
                            </div>

                            <div class="form-group col-md-3">
                                <label for="dataInicial">
                                    <g:message code="data.inicial" default="Data Inicial" />

                                </label>
                                <g:textField name="dataInicial" class="form-control" readonly="true" value="${calendarioInstance?.dataInicialString}"/>
                            </div>

                            <div class="form-group col-md-3">
                                <label for="dataFinal">
                                    <g:message code="data.final" default="Data Final" />

                                </label>
                                <g:textField name="dataFinal" class="form-control" readonly="true" value="${calendarioInstance?.dataFinalString}"/>
                            </div>
                        </div>
                    </div>

                    <div class="box-content">
                        <div class="form-group">
                            <g:form url="[resource:calendarioInstance, action:'delete']" method="DELETE">
                                <g:form url="[resource:calendarioInstance, action:'edit']">
                                    <g:actionSubmit class="edit btn btn-success col-lg-1" action="edit" id="${calendarioInstance.id}" resource="${calendarioInstance}" value="${message(code: 'default.button.edit.label', default: 'Edit')}"/>
                                </g:form>

                                <g:form url="[resource:calendarioInstance, action:'delete']" method="DELETE">
                                    <g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                </g:form>
                            </g:form>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
