
<%@ page import="br.edu.luciana.soccerManager.Cidade" %>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'cidade.label', default: 'Cidade')}" />

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
            <g:link controller="cidade" action="index">
                <button class="btn btn-default">
                    <i class="glyphicon glyphicon-list icon-white"></i>
                    <g:message code="default.list.label" args="[entityName]" />
                </button>
            </g:link>
            <g:link controller="cidade" action="create">
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
                    <div class="box-content">
                        <div class="form-group col-md-6">
                            <label for="nome">
                                <g:message code="soccerManager.nome" default="Nome" />
                                <span class="required-indicator">*</span>
                            </label>
                            <g:textField class="form-control" name="nome" readonly="true" required="" value="${cidadeInstance?.nome}"/>

                        </div>
                        <div class="form-group col-md-3">
                            <label for="estado">
                                <g:message code="estado.label" default="Estado" />
                                <span class="required-indicator">*</span>
                            </label>
                            <g:textField class="form-control" name="estado" readonly="true" required="" value="${cidadeInstance?.estado}"/>
                        </div>

                        <div class="form-group col-md-3">
                            <label for="pais">
                                <g:message code="pais.label" default="País" />
                                <span class="required-indicator">*</span>
                            </label>
                            <g:textField class="form-control" name="pais" readonly="true" required="" value="${cidadeInstance?.estado?.pais}"/>
                        </div>
                    </div>

                    <div class="box-content">
                        <div class="form-group">
                            <g:form url="[resource:cidadeInstance, action:'edit']">
                                <g:actionSubmit class="edit btn btn-success col-lg-1" action="edit" id="${cidadeInstance.id}" resource="${cidadeInstance}" value="${message(code: 'default.button.edit.label', default: 'Edit')}"/>
                            </g:form>

                            <g:form url="[resource:cidadeInstance, action:'delete']" method="DELETE">
                                <g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                            </g:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
