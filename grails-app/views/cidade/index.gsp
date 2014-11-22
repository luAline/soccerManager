
<%@ page import="br.edu.luciana.soccerManager.Cidade" %>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'cidade.label', default: 'Cidade')}" />

<div class="col-sm-10 col-lg-10">
    <ul class="breadcrumb">
        <li>
            <a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
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
            <g:link controller="cidade" action="create">
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
                            <th><g:message code="soccerManager.nome"/></th>
                            <th><g:message code="estado.label"/></th>
                            <th><g:message code="pais.label"/></th>
                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${cidadeInstanceList}" status="i" var="cidadeInstance">
                            <tr>
                                <td>
                                    <g:link action="show" id="${cidadeInstance.id}"><i class="glyphicon glyphicon-search blue"></i></g:link>
                                    <g:link action="edit" id="${cidadeInstance.id}"><i class="glyphicon glyphicon-pencil green"></i></g:link>
                                </td>
                                <td>${cidadeInstance?.nome}</td>
                                <td>${cidadeInstance?.estado?.nome}</td>
                                <td>${cidadeInstance?.estado?.pais?.nome}</td>
                            </tr>
                        </g:each>
                        </tbody>
                    </table>
                    <div class="pagination">
                        <g:paginate total="${cidadeInstanceCount ?: 0}" />
                    </div>

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