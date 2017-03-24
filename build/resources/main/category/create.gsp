<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="admin" />
        <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
        <title>Tworzenie kategorii</title>
    </head>
    <body>
        <div class="header-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-sm-9">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <div class="mainmenu pull-left">
                            <ul class="nav navbar-nav collapse navbar-collapse">
                                <li><g:link class="list" action="index">Lista kategorii</g:link></li>
                                <li><g:link class="create" action="create">Utwórz kategorie</g:link></li>
                                </ul>
                            </div>
                        </div>

                </div>
            </div>
        </div>

        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 padding-right">
                        <div class="features_items">
                            <div class="nav" role="navigation">
                                <div id="list-category" class="content scaffold-list" role="main">
                                    <h1>Utwórz kategorię</h1>
                                    <g:if test="${flash.message}">
                                        <div class="message" role="status">${flash.message}</div>
                                    </g:if>
                                    <g:hasErrors bean="${this.category}">
                                        <ul class="errors" role="alert">
                                            <g:eachError bean="${this.category}" var="error">
                                                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                                                </g:eachError>
                                        </ul>
                                    </g:hasErrors>
                                    <g:form action="save">
                                        <fieldset class="form">
                                            <f:all bean="category"/>
                                        </fieldset>
                                        <fieldset class="buttons">
                                            <g:submitButton name="btn btn-primary" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                                        </fieldset>
                                    </g:form>
                                </div>
                            </div>
                        </div>
                    </div></div>
        </section>
    </body>
</html>
