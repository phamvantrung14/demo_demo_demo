<%--
  Created by IntelliJ IDEA.
  User: asuspc
  Date: 4/27/2021
  Time: 2:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="pageTitle" scope="request" value="Home"/>
<%@include file="/WEB-INF/views/layout/frontend/header.jsp" %>
<%@include file="/WEB-INF/views/layout/frontend/navbar.jsp" %>

<section class="page_header">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h2 class="text-uppercase">Recipies</h2>
                <p>Tomato is a delicious restaurant website template</p>
            </div>
        </div>
    </div>
</section>

<section class="recipie-single single-recipe">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="single-recipe-image">
                    <img class="img-responsive" src="${product.image}" alt="">
                </div>

            </div>
            <div class="col-md-6">
                <h3>${product.product_name}</h3>
                ${product.descriptions}
                <div class="ingredients">
                    <h4 class="title">Price: ${product.price}$</h4>
                </div>

            </div>
        </div>
    </div>
</section>

<section class="featured-recipie">
    <div class="container">
        <hr>
        <h3>Featured Recipe</h3>
        <div class="row">
            <div class="featured-recipies">
                <div class="fp-content">
                    <a href="recipe_detail-image.html"><img src="img/recipie/1/1.jpg" class="img-responsive" alt="" /></a>
                    <h4><a href="recipe_detail-image.html">Food Name</a></h4>
                    <div class="rc-ratings">
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star active"></span>
                        <span class="fa fa-star active"></span>
                        <span class="fa fa-star active"></span>
                        <span class="fa fa-star active"></span>
                    </div>
                </div>
                <div class="fp-content">
                    <a href="recipe_detail-image.html"><img src="img/recipie/1/2.jpg" class="img-responsive" alt="" /></a>
                    <h4><a href="recipe_detail-image.html">Food Name</a></h4>
                    <div class="rc-ratings">
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star active"></span>
                        <span class="fa fa-star active"></span>
                        <span class="fa fa-star active"></span>
                        <span class="fa fa-star active"></span>
                    </div>
                </div>
                <div class="fp-content">
                    <a href="recipe_detail-image.html"><img src="img/recipie/1/3.jpg" class="img-responsive" alt="" /></a>
                    <h4><a href="recipe_detail-image.html">Food Name</a></h4>
                    <div class="rc-ratings">
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star active"></span>
                        <span class="fa fa-star active"></span>
                        <span class="fa fa-star active"></span>
                        <span class="fa fa-star active"></span>
                    </div>
                </div>
                <div class="fp-content">
                    <a href="recipe_detail-image.html"><img src="img/recipie/1/4.jpg" class="img-responsive" alt="" /></a>
                    <h4><a href="recipe_detail-image.html">Food Name</a></h4>
                    <div class="rc-ratings">
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star active"></span>
                        <span class="fa fa-star active"></span>
                        <span class="fa fa-star active"></span>
                        <span class="fa fa-star active"></span>
                    </div>
                </div>
                <div class="fp-content">
                    <a href="recipe_detail-image.html"><img src="img/recipie/1/2.jpg" class="img-responsive" alt="" /></a>
                    <h4><a href="recipe_detail-image.html">Food Name</a></h4>
                    <div class="rc-ratings">
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star active"></span>
                        <span class="fa fa-star active"></span>
                        <span class="fa fa-star active"></span>
                        <span class="fa fa-star active"></span>
                    </div>
                </div>
                <div class="fp-content">
                    <a href="recipe_detail-image.html"><img src="img/recipie/1/3.jpg" class="img-responsive" alt="" /></a>
                    <h4><a href="recipe_detail-image.html">Food Name</a></h4>
                    <div class="rc-ratings">
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star active"></span>
                        <span class="fa fa-star active"></span>
                        <span class="fa fa-star active"></span>
                        <span class="fa fa-star active"></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>





<%@include file="/WEB-INF/views/layout/frontend/footer.jsp" %>
</body>
</html>
