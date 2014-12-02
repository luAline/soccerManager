
<%@ page import="br.edu.luciana.soccerManager.Jogo" %>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'jogo.label', default: 'Jogo')}" />

<div class="col-sm-10 col-lg-10">
    <ul class="breadcrumb">
        <li>
            <a class="home" href="${createLink(url: '../menu/telaInicio')}"><g:message code="default.home.label"/></a>
        </li>
        <li><g:message code="default.list.label" args="[entityName]" /></li>
    </ul>
</div>

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

<div class="col-sm-10 col-lg-10">
    <div class="row">
        <div class="box col-md-12">
            <g:link controller="jogo" action="create">
                <button class="btn btn-info">
                    <i class="glyphicon glyphicon-plus icon-white"></i>
                    <g:message code="default.new.label" args="[entityName]" />
                </button>
            </g:link>
        </div>
    </div>

    <div class="row">
        <div class="box col-md-12">
            <div class="box-inner">
                <div class="box-header well">
                    <h2><i class="glyphicon glyphicon-picture"></i> <g:message code="default.list.label" args="[entityName]" /></h2>
                </div>
                <div class="box-content">
                    <table class="table table-bordered table-striped table-condensed" id="index">
                        <thead>
                        <tr>
                            <th><g:message code="soccerManager.acao"/></th>
                            <th><g:message code="soccerManager.descricao"/> </th>
                            <th><g:message code="jogo.adversario"/> </th>
                            <th><g:message code="local.label"/> </th>
                            <th><g:message code="data.jogo"/> </th>
                            <th><g:message code="time.label"/> </th>
                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${jogoInstanceList}" status="i" var="jogoInstance">
                            <tr>
                                <td>
                                    <g:link action="show" id="${jogoInstance.id}"><i class="glyphicon glyphicon-search blue"></i></g:link>
                                    <g:link action="edit" id="${jogoInstance.id}"><i class="glyphicon glyphicon-pencil green"></i></g:link>
                                </td>
                                <td>${jogoInstance?.descricao}</td>
                                <td>${jogoInstance?.adversario}</td>
                                <td>${jogoInstance?.local}</td>
                                <td>${jogoInstance?.dataJogoString}</td>
                                <td>${jogoInstance?.time}</td>
                            </tr>
                        </g:each>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    jQuery(document).ready(function($){
        $('#index').dataTable( {
            "pagingType": "full_numbers"
        });

    });
</script>