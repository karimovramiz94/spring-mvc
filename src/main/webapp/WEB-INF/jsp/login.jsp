<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
    <title>Login</title>
</head>

<body>
<section>
    <div class="jumbotron">
        <div class="container">
            <h1>Products</h1>
            <p>Please sign in</p>
        </div>
    </div>
</section>

<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Please sign in</h3>
                </div>

                <div class="panel-body">

                    <c:if test="${param.error != null}">
                        <div class="alert alert-danger">
                            <spring:message code="AbstractUserDetailsAuthenticationProvider.badCredentials"/><br />
                        </div>
                    </c:if>

                    <form action="<c:url value='/login'/>" method="post">
                        <fieldset>
                            <div class="form-group">
                                <input class="form-control" placeholder="User Name"
                                       name="username" type="text">
                            </div>

                            <div class="form-group">
                                <input class="form-control" placeholder="Password"
                                       name="password" type="password">
                            </div>

                            <!-- CSRF token (403 olmasın deyə vacibdir) -->
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

                            <input class="btn btn-lg btn-success btn-block"
                                   type="submit" value="Login">
                        </fieldset>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>