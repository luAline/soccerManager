<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:message code="soccerManager.label"/></title>

		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'bolaIcone.jpg')}" type="image/x-icon">


        <!-- CSS -->
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'charisma-app.css')}" type="text/css">

        <link rel="stylesheet" href="${resource(dir: 'css', file: 'animate.min.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'app.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css.map')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-cerulean.min.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'charisma-app.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'chosen.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'chosen.min.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'elfinder.min.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'elfinder.theme.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'errors.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'forms.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'fullcalendar.css')}" type="text/css"/>
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'fullcalendar.min.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'fullcalendar.print.css')}" media="print">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'globals.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'ie.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.noty.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery-ui-1.8.21.custom.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery-ui.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'noty_theme_default.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'orbit.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'responsive-tables.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'typography.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'ui.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'uploadify.css')}" type="text/css">

        <!-- JS

        <script src="${resource(dir: 'js', file: 'jquery-migrate.min.js')}" type="text/javascript"></script>
        -->
        <script src="${resource(dir: 'js', file: 'jquery.min.js')}" type="text/javascript"></script>

        <script src="${resource(dir: 'js', file: 'jquery-1.11.1.min.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'bootstrap.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'charisma.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'jquery.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'jquery-migrate.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'tooltip.js')}" type="text/javascript"></script>

        <script src="${resource(dir: 'js', file: 'affix.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'app.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'application.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'button.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'carousel.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'chosen.jquery.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'chosen.jquery.min.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'collapse.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'dropdown.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'forms.jquery.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'init-chart.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'jquery.colorbox.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'jquery.colorbox-min.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'jquery.customforms.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'jquery.dataTables.min.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'jquery.noty.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'jquery.orbit-1.3.0.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'jquery-ui.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'moment.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'moment.min.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'fullcalendar.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'fullcalendar.min.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'popover.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'responsive-tables.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'transition.js')}" type="text/javascript"></script>
        <script src="${resource(dir: 'js', file: 'lang-all.js')}" type="text/javascript"></script>


            <g:layoutHead/>
            <g:javascript src=""/>
            <r:layoutResources />
	</head>
	<body>

        <g:if test="${session.usuario}">

        <div class="navbar navbar-default" role="navigation">

            <div class="navbar-inner">
                <button type="button" class="navbar-toggle pull-left animated flip">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand home" href="${createLink(url: '../menu/telaInicio')}">
                    <img alt="SoccerManager Logo" src="${resource(dir:'images',file: 'bolaLogo.png')}" class="hidden-xs">
                    <span style="font-size: 13px"><g:message code="soccerManager.label"/> </span>
                </a>

                <!-- user dropdown starts -->
                <div class="btn-group pull-right">
                    <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                        <i class="glyphicon glyphicon-user"></i><span class="hidden-sm hidden-xs"> ${session.usuario?.nome}</span>
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                        <li><g:link controller="usuario" action="fazerLogout">Logout</g:link></li>
                    </ul>
                </div>
            </div>
        </div>

        </g:if>



        <div class="ch-container">
            <div class="row">

                <g:if test="${session.usuario}">


                <div class="col-sm-2 col-lg-2">
                    <div class="sidebar-nav">
                        <div class="nav-canvas">
                            <div class="nav-sm nav nav-stacked">

                            </div>
                            <ul class="nav nav-pills nav-stacked main-menu">
                                <li class="nav-header" style="text-align: center"><g:link url="[action: 'telaInicio', controller: 'menu']"> <g:message code="soccerManager.menu"/></g:link> </li>

                                <li class="nav-header hidden-md"><g:message code="soccerManager.cadastro"/> </li>
                                <li><g:link url="[action:'index',controller:'aluno']"><i class="glyphicon glyphicon-certificate"></i> <g:message code="aluno.label"/></g:link></li>
                                <li><g:link url="[action:'index',controller:'categoria']"><i class="glyphicon glyphicon-star"></i> <g:message code="categoria.label"/></g:link></li>
                                <li><g:link url="[action:'index',controller:'funcionario']"><i class="glyphicon glyphicon-book"></i> <g:message code="funcionario.label"/></g:link></li>
                                <li><g:link url="[action:'index',controller:'funcao']"><i class="glyphicon glyphicon-tags"></i> <g:message code="funcao.label"/></g:link></li>
                                <li><g:link url="[action:'index',controller:'cidade']"><i class="glyphicon glyphicon-random"></i> <g:message code="cidade.label"/></g:link></li>
                                <li><g:link url="[action:'index',controller:'estado']"><i class="glyphicon glyphicon-flag"></i> <g:message code="estado.label"/></g:link></li>
                                <li><g:link url="[action:'index',controller:'pais']"><i class="glyphicon glyphicon-globe"></i> <g:message code="pais.label"/></g:link></li>


                                <li class="nav-header hidden-md"><g:message code="soccerManager.competicao"/> </li>
                                <li><g:link url="[action:'index',controller:'time']"><i class="glyphicon glyphicon-star"></i> <g:message code="time.label"/></g:link></li>
                                <li><g:link url="[action:'index',controller:'jogo']"><i class="glyphicon glyphicon-star"></i> <g:message code="jogo.label"/></g:link></li>
                                <li><g:link url="[action:'calendario',controller:'calendario']"><i class="glyphicon glyphicon-calendar"></i> <g:message code="calendario.label"/></g:link></li>
                                <li><g:link url="[action:'index',controller:'local']"><i class="glyphicon glyphicon-new-window"></i> <g:message code="local.label"/></g:link></li>
                                <li><g:link url="[action:'galeriaFotos',controller:'jogo']"><i class="glyphicon glyphicon-picture"></i> <g:message code="jogo.galeriaFoto"/></g:link></li>

                                <li class="nav-header hidden-md"><g:message code="soccerManager.configuracao"/> </li>
                                <li><g:link url="[action:'index',controller:'usuario']"><i class="glyphicon glyphicon-user"></i> <g:message code="usuario.label"/></g:link></li>
                                <li><g:link url="[action:'index',controller:'empresa']"><i class="glyphicon glyphicon-home"></i> <g:message code="empresa.label"/></g:link></li>
                            </ul>
                        </div>
                    </div>
                </div>

                </g:if>

                <g:layoutBody/>
                <r:layoutResources/>

                <hr>
                <footer class="row">
                    <p class="col-md-9 col-sm-9 col-xs-12 copyright">&copy; Soccer Manager</p>

                    <p class="col-md-3 col-sm-3 col-xs-12 powered-by">Trabalho Educacional, apresentação para conclusão de curso.</a></p>
                </footer>
            </div>
        </div>



	</body>
</html>


