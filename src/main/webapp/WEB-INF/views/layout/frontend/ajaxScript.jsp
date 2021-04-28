<%--
  Created by IntelliJ IDEA.
  User: asuspc
  Date: 4/28/2021
  Time: 5:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script>
    function addToCart(_product_id) {
        $.ajax({
            method:'GET',
            url:'/food/cart/addCart?productId='+_product_id,
            success:function (res) {
                $("#cartItemNav").html(res);
                Toast.fire({
                    icon: 'success',
                    title: 'Add To Cart successfully'
                })
            }
        })
    }

    function  deleteToCart(_product_id) {
        $.ajax({
            method:'GET',
            url:'/food/cart/deleteCartAjax?product_id='+_product_id,
            success:function (res) {
                $("#cartItemNav").html(res);
                Toast.fire({
                    icon: 'success',
                    title: 'remove successfully'
                })
            }
        })
    }
</script>
