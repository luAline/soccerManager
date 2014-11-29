<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />


<g:hasErrors bean="${usuarioInstance}">
    <ul class="errors" role="alert">
        <g:eachError bean="${usuarioInstance}" var="error">
            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
        </g:eachError>
    </ul>
</g:hasErrors>

<div class="ch-container">
    <div class="row">

        <div class="row">
            <div class="col-md-12 center login-header">
                <h2>Welcome to Charisma</h2>
            </div>
            <!--/span-->
        </div><!--/row-->

        <div class="row">
            <div class="well col-md-5 center login-box">

                <g:if test="${flash.message}">
                    <div class="alert alert-danger">
                        ${flash.message}
                    </div>
                </g:if>

                <g:form action="fazerLogin" method="POST">
                    <fieldset>
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user red"></i></span>
                            <input name="usuario" type="text" class="form-control" value="" required="true">
                        </div>
                        <div class="clearfix"></div><br>

                        <div class="input-group input-group-lg">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock red"></i></span>
                            <input name="senha" type="password" class="form-control" value="" required="true">
                        </div>
                        <div class="clearfix"></div>

                        <div class="input-prepend">
                            <label class="remember" for="remember"><input type="checkbox" id="remember"> Remember me</label>
                        </div>
                        <div class="clearfix"></div>

                        <p class="center col-md-5">
                            <button type="submit" class="btn btn-primary">Login</button>
                        </p>
                    </fieldset>
                </g:form>
            </div>
            <!--/span-->
        </div><!--/row-->
    </div><!--/fluid-row-->

</div><!--/.fluid-container-->