<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="admin" />
        <title>Rejestracja</title>
    </head>
    <body>
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 padding-right">
                        <div class="features_items">
                            <div class="nav" role="navigation">
                                <div id="list-category" class="content scaffold-list" role="main">
                                    <h1>Rejestracja</h1>
                                    <g:if test="${flash.message}">
                                        <div class="message" role="status">${flash.message}</div>
                                    </g:if>
                                    <g:hasErrors bean="${this.user}">
                                        <ul class="errors" role="alert">
                                            <g:eachError bean="${this.user}" var="error">
                                                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                                                </g:eachError>
                                        </ul>
                                    </g:hasErrors>
                                    <g:uploadForm action="save" class="form-horizontal">
                                        <fieldset class="form">
                                            <f:field bean="user" property="username"  />
                                            <f:field bean="user" property="password"  />
                                            <f:field bean="user" property="firstName"  />
                                            <f:field bean="user" property="lastName"  />
                                            <f:field bean="user" property="street"  />
                                            <f:field bean="user" property="city"  />
                                            <f:field bean="user" property="zipCode"  />
                                            <f:field bean="user" property="image"  />
                                        </fieldset>
                                        <fieldset class="buttons">
                                            <g:submitButton name="create"  class="btn btn-primary pull-right" value="${message(code: 'default.button.create.label', default: 'Create')}" /><br/><br/>
                                        </fieldset>
                                        <br/><br/>
                                    </g:uploadForm>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
    </body>
</html>
