<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<c:set var="pageTitle" scope="request" value="Home"/>
<%@include file="/WEB-INF/views/layout/frontend/header.jsp" %>
<%@include file="/WEB-INF/views/layout/frontend/navbar.jsp" %>
<section class="page_header">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h2 class="text-uppercase">Cart</h2>
                <p>Checkout or add some items to your cart</p>
            </div>
        </div>
    </div>
</section>
<section class="shop-content">
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <f:form method="GET" action="${pageContext.request.contextPath}/food/cart/updateQuantity">
                <table class="cart-table table table-bordered">
                    <thead>
                    <tr>
                        <th>&nbsp;</th>
                        <th>&nbsp;</th>
                        <th>Product</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${listCart}" var="cart">
                        <tr>
                            <td>
<%--                                <a href="${pageContext.request.contextPath}/food/cart/deleteCart?product_id=${cart.product.product_id}" class="remove"><i class="fa fa-times"></i></a>--%>
                                <a href="" onclick="deleteToCart(${cart.product.product_id})" class="remove"><i class="fa fa-times"></i></a>
                            </td>
                            <td>
                                <a href="shop_single_full.html"><img src="${cart.product.image}" alt="${cart.product.image}" height="90" width="90"></a>
                            </td>
                            <td>
                                <a href="shop_single_full.html">${cart.product.product_name}</a>
                            </td>
                            <td>
                                <span class="amount">£${cart.product.price}</span>
                            </td>
                            <td>
                                <div class="quantity"><input type="number" style="width: 50px" value="${cart.quantity}" name="quantity"/></div>
                            </td>
                            <td>
                                <span class="amount">£<fmt:formatNumber>${(cart.product.price*((100-cart.product.discount)/100))*cart.quantity}</fmt:formatNumber></span>
                            </td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <td colspan="6" class="actions">
                            <div class="col-md-6">
                            </div>
                            <div class="col-md-6">
                                <div class="cart-btn">
                                    <c:if test="${listCart.size()>0}">
                                        <button class="btn btn-default" type="submit">Update Cart</button>
                                        <button class="btn btn-success" type="submit" onclick="window.open('shop_checkout.html', '_self')">Checkout</button>
                                    </c:if>

                                </div>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
                </f:form>
                <div class="cart_totals">
                    <div class="col-md-6 push-md-6 no-padding">
                        <h4 class="text-left">Cart Totals</h4>
                        <br>
                        <table class="table table-bordered col-md-6">
                            <tbody>
                            <tr>
                                <th>Cart Subtotal</th>
                                <td><span class="amount">£${tongtien}</span></td>
                            </tr>
                            <tr>
                                <th>Shipping and Handling</th>
                                <td>
                                    Free Shipping
                                </td>
                            </tr>
                            <tr>
                                <th>Order Total</th>
                                <td><strong><span class="amount">£${tongtien}</span></strong> </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<%@include file="/WEB-INF/views/layout/frontend/footer.jsp" %>
<script>
    function deleteToCart(_product_id) {

        $.ajax({
            method:'GET',
            url:'/food/cart/deleteCart?product_id='+_product_id,
            success:function (res) {
                alert("thanh cong");
                $("body").html(res);
            }
        })
    }
</script>
</body>
</html>
