<%@ taglib prefix="s" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<nav class="navbar navbar-static-top navbar-default margin-0 col-xs-12 padding-0" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle mright-0" data-toggle="collapse" data-target="#menu">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <img src="${pageContext.request.contextPath}/statics/img/logo-compuser.png" width="240" class="pull-left">
        </div>

        <div class="pull-right mtop-10 hidden-xs">
            <a href="${pageContext.request.contextPath}/logout" class="btn btn-default btn-circle pull-right mleft-15 mtop-5">
                <span class="glyphicon glyphicon-off"></span>
            </a>
            <small class="text-bold text-gray pull-right uppercase mtop-15 mleft-10 hidden-sm hidden-xs">
                <s:authentication var="user" property="principal" />
                <s:authorize access="isAuthenticated()">
                     ${user.name}
                </s:authorize>
            </small>

            <s:authentication var="user" property="principal" />
            <s:authorize access="isAuthenticated()">
                <div class="pull-right mleft-20 hidden-md hidden-sm hidden-xs">
                    <img src="<c:url value="${user.picture}"/>" alt="User profile picture" class="img-circle" style="height: 40px; width:40px">
                </div>
            </s:authorize>
        </div>

        <div class="collapse navbar-collapse pull-right" id="menu">
            <ul class="nav navbar-nav">
                <li>
                    <a href="${pageContext.request.contextPath}/request " class="uppercase text-medium">
                        ENCARGOS
                    </a>
                </li>
                <!--
                <li>
                    <a href="${pageContext.request.contextPath}/ " class="uppercase text-medium">
                        TAB2
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/ " class="uppercase text-medium">
                        TAB3
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/" class="uppercase text-medium">
                        TAB4
                    </a>
                </li>
                <li>
                    <a href="#"   class="uppercase text-medium">
                        TAB5
                    </a>
                </li>
                -->
                <s:authorize access="hasRole('ROLE_ADMIN')">
                    <li id="adminMenu" class="menuButton">
                        <a href="/pendings">ADMINISTRADOR</a>
                    </li>
                </s:authorize>
            </ul>
        </div>
    </div>
</nav>
