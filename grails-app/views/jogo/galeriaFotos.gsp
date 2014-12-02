

<%@ page import="br.edu.luciana.soccerManager.Jogo" %>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'jogo.galeriaFoto', default: 'Galeria de Fotos')}" />

<div class="col-sm-10 col-lg-10">
    <ul class="breadcrumb">
        <li>
            <a class="home" href="${createLink(url: '../menu/telaInicio')}"><g:message code="default.home.label"/></a>
        </li>
        <li><g:message code="jogo.galeriaFoto" /></li>
    </ul>
</div>

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

<div class="col-sm-10 col-lg-10">
    <div class="col-sm-12 col-lg-12">
        <div class="row">
            <div class="box col-md-12">
                <div class="box-inner">
                    <div class="box-header well">
                        <h2><i class="glyphicon glyphicon-picture"></i> <g:message code="jogo.galeriaFoto"  /></h2>
                    </div>

                    <div class="box-content">
                        <div class="form-group col-md-12">
                            <label for="exampleInputFile">Adicionar imagens</label>
                            <input class="btn btn-default" type="file" id="exampleInputFile">
                        </div>
                        <g:link controller="jogo" action="galeriaFotos">
                            <button class="btn btn-default">
                                <i class="glyphicon glyphicon-plus icon-white"></i>
                                <g:message code="soccerManager.add"/>
                            </button>
                        </g:link>
                    </div>

                    <div class="box-content">
                        <ul class="thumbnails gallery">
                            <li id="image-1" class="thumbnail">
                                <img alt="SoccerManager Logo" class="grayscale" style="box-shadow:0 2px 2px #666" src="${resource(dir:'images',file: 'escola_1.jpg')}">

                                <div class="col-md-12">
                                    <div class="col-md-6" style="text-align: left"> <i class="glyphicon glyphicon-picture"></i> </div>
                                    <div class="col-md-6" style="text-align: right"> <i class="glyphicon glyphicon-remove red"></i></div>
                                </div>

                            </li>

                            <li id="image-2" class="thumbnail">
                                <img alt="SoccerManager Logo" class="grayscale" style="box-shadow:0 2px 2px #666" src="${resource(dir:'images',file: 'escola_2.jpg')}">

                                <div class="col-md-12">
                                    <div class="col-md-6" style="text-align: left"> <i class="glyphicon glyphicon-picture"></i> </div>
                                    <div class="col-md-6" style="text-align: right"> <i class="glyphicon glyphicon-remove red"></i></div>
                                </div>
                            </li>

                            <li id="image-3" class="thumbnail">
                                <img alt="SoccerManager Logo" class="grayscale" style="box-shadow:0 2px 2px #666" src="${resource(dir:'images',file: 'escola_3.jpg')}">

                                <div class="col-md-12">
                                    <div class="col-md-6" style="text-align: left"> <i class="glyphicon glyphicon-picture"></i> </div>
                                    <div class="col-md-6" style="text-align: right"> <i class="glyphicon glyphicon-remove red"></i></div>
                                </div>

                            </li>

                            <li id="image-4" class="thumbnail">
                                <img alt="SoccerManager Logo" class="grayscale" style="box-shadow:0 2px 2px #666" src="${resource(dir:'images',file: 'escola_4.jpg')}">

                                <div class="col-md-12">
                                    <div class="col-md-6" style="text-align: left"> <i class="glyphicon glyphicon-picture"></i> </div>
                                    <div class="col-md-6" style="text-align: right"> <i class="glyphicon glyphicon-remove red"></i></div>
                                </div>
                            </li>

                            <li id="image-5" class="thumbnail">
                                <img alt="SoccerManager Logo" class="grayscale" style="box-shadow:0 2px 2px #666" src="${resource(dir:'images',file: 'escola_5.JPG')}">

                                <div class="col-md-12">
                                    <div class="col-md-6" style="text-align: left"> <i class="glyphicon glyphicon-picture"></i> </div>
                                    <div class="col-md-6" style="text-align: right"> <i class="glyphicon glyphicon-remove red"></i></div>
                                </div>

                            </li>

                            <li id="image-6" class="thumbnail">
                                <img alt="SoccerManager Logo" class="grayscale" style="box-shadow:0 2px 2px #666" src="${resource(dir:'images',file: 'escola_6.JPG')}">

                                <div class="col-md-12">
                                    <div class="col-md-6" style="text-align: left"> <i class="glyphicon glyphicon-picture"></i> </div>
                                    <div class="col-md-6" style="text-align: right"> <i class="glyphicon glyphicon-remove red"></i></div>
                                </div>
                            </li>

                            <li id="image-7" class="thumbnail">
                                <img alt="SoccerManager Logo" class="grayscale" style="box-shadow:0 2px 2px #666" src="${resource(dir:'images',file: 'escola_7.jpg')}">

                                <div class="col-md-12">
                                    <div class="col-md-6" style="text-align: left"> <i class="glyphicon glyphicon-picture"></i> </div>
                                    <div class="col-md-6" style="text-align: right"> <i class="glyphicon glyphicon-remove red"></i></div>
                                </div>

                            </li>

                            <li id="image-8" class="thumbnail">
                                <img alt="SoccerManager Logo" class="grayscale" style="box-shadow:0 2px 2px #666" src="${resource(dir:'images',file: 'escola_8.JPG')}">

                                <div class="col-md-12">
                                    <div class="col-md-6" style="text-align: left"> <i class="glyphicon glyphicon-picture"></i> </div>
                                    <div class="col-md-6" style="text-align: right"> <i class="glyphicon glyphicon-remove red"></i></div>
                                </div>
                            </li>

                            <li id="image-9" class="thumbnail">
                                <img alt="SoccerManager Logo" class="grayscale" style="box-shadow:0 2px 2px #666" src="${resource(dir:'images',file: 'escola_9.JPG')}">

                                <div class="col-md-12">
                                    <div class="col-md-6" style="text-align: left"> <i class="glyphicon glyphicon-picture"></i> </div>
                                    <div class="col-md-6" style="text-align: right"> <i class="glyphicon glyphicon-remove red"></i></div>
                                </div>

                            </li>

                            <li id="image-10" class="thumbnail">
                                <img alt="SoccerManager Logo" class="grayscale" style="box-shadow:0 2px 2px #666" src="${resource(dir:'images',file: 'escola_10.JPG')}">

                                <div class="col-md-12">
                                    <div class="col-md-6" style="text-align: left"> <i class="glyphicon glyphicon-picture"></i> </div>
                                    <div class="col-md-6" style="text-align: right"> <i class="glyphicon glyphicon-remove red"></i></div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


