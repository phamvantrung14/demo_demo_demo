<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="pageTitle" scope="request" value="Home"/>
<%@include file="/WEB-INF/views/layout/frontend/header.jsp" %>
<%@include file="/WEB-INF/views/layout/frontend/navbar.jsp" %>
<section class="page_header">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h2 class="text-uppercase">Shop Listing</h2>
                <p>Tomato is a delicious restaurant website template</p>
            </div>
        </div>
    </div>
</section>
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
<%@include file="/WEB-INF/views/layout/frontend/ajaxScript.jsp" %>
