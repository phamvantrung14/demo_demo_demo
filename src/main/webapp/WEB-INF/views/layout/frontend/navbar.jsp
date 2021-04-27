<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: asuspc
  Date: 4/27/2021
  Time: 1:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<body data-scroll-animation="true">
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<div class="preloder animated">
    <div class="scoket">
        <img src="/assets/frontend/img/preloader.svg" alt="" />
    </div>
</div>
<div class="body">
    <div class="main-wrapper">

        <nav class="navbar navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">
                        <img src="/assets/frontend/img/nav-logo.png" alt="nav-logo">
                    </a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="index.html"  role="button" aria-haspopup="true" aria-expanded="false">Home</a>

                        </li>
                        <li class="dropdown">
                            <a href="index.html"  role="button" aria-haspopup="true" aria-expanded="false">Menu</a>

                        </li>
                        <li class="dropdown">
                            <a href="menu_all.html" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Category<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <c:forEach var="c" items="${listCate}">
                                <li ><a href="menu_list.html">${c.cate_name}<span class="caret-right"></span></a>
                                    <ul class="dropdown-menu">
                                        <c:forEach var="cd" items="${listCateDetail}">
                                            <c:if test="${c.cate_id == cd.category.cate_id}">
                                                <li><a href="${pageContext.request.contextPath}/food/getProByCate?cateDetail_id=${cd.cate_detail_id}">${cd.cate_detail_name}</a></li>
                                            </c:if>
                                        </c:forEach>
                                    </ul>
                                </li>
                                </c:forEach>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="reservation.html" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Reservation<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="reservation.html">Reservation</a></li>
                                <li><a href="reservation-ot.html">Reservation - Opentable</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

            </div>
        </nav>

