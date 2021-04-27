<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="pageTitle" scope="request" value="Home"/>
<%@include file="/WEB-INF/views/layout/frontend/header.jsp" %>
<%@include file="/WEB-INF/views/layout/frontend/navbar.jsp" %>

<section class="shop-content">
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="shop-grid">
                    <select>
                        <option>Default Sorting</option>
                        <option>Cakes</option>
                        <option>Breads</option>
                        <option>Fries</option>
                        <option>Pizza</option>
                    </select>
                    <div class="sg-list">
                        <a href="./shop_left_sidebar.html"><i class="fa fa-th-large"></i></a>
                        <a href="./shop_right_sidebar.html"><i class="fa fa-reorder"></i></a>
                    </div>
                    <span>Showing 1-9 of 80 Results</span>
                </div>
                <div class="shop-products">
                    <div class="row">
                        <c:forEach items="${listPro}" var="pro">
                        <div class="col-md-4 col-sm-6">
                            <div class="product-info">
                                <div class="product-img">
                                    <img src="${pro.image}" alt="${pro.image}" style="width: 100%">
                                </div>
                                <h4><a href="${pageContext.request.contextPath}/food/productDetail?proId=${pro.product_id}">${pro.product_name}</a></h4>
                                <div class="product-price">$ ${pro.price}</div>
                                <div class="shop-meta text-center">
                                    <span class="fa fa-star active"></span><a href="${pageContext.request.contextPath}/food/productDetail?proId=${pro.product_id}" class=" text-center">See details</a><span class="fa fa-star active"></span>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>



<%@include file="/WEB-INF/views/layout/frontend/footer.jsp" %>