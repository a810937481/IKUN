<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/24
  Time: 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script src="${ctx}/static/js/jquery-3.3.1.min.js"></script>
<script src="${ctx}/static/js/jquery.ss.menu.js"></script>
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

<!--ssMenu CSS-->
<link rel="stylesheet" href="${ctx}/static/css/ss-menu.css">

<!--Start Side Sticky Menu-->

<nav class="ss-menu ">
    <ul>
        <li><a href="${ctx}/center"><i class="fa fa-user-o"></i>用户:${sessionScope.user.nickname}</a></li>
        <li><a href="${ctx}/myorder"> <span class="ss-badge">${sessionScope.order_count}</span> <i class="fa fa-bar-chart"></i> 我的订单 </a></li>
        <li><a href="${ctx}/tofresh"><i class="fa fa-heartbeat"></i> 新鲜去处</a></li>
        <li><a href="${ctx}/info"><i class="fa fa-bank"></i> 个人信息</a></li>
        <li><a href="#1"><i class="fa fa-credit-card"></i> 支付方式</a></li>
        <li><a href="${ctx}/query"><i class="fa fa-search"></i> 搜索商品 </a></li>
        <li><a href="#1"><i class="fa fa-car"></i> 提交工单 </a></li>
        <li><a href="#1"><i class="fa fa-briefcase"></i> 关于我们</a></li>
        <li><a href="${ctx}/quit"><i class="fa fa-location-arrow"></i> 退出登录</a></li>
    </ul>
</nav>
<!--End Side Sticky Menu-->
<script>

        $(".ss-menu").ssMenu({
            theme: "teal",
        });

</script>
<script>
    $(function(){
        var ssMenu = $(".ss-menu");
        var theme = $(".theme-picker").find("span");

        $(theme).click(function(y){

            y = $(this).attr("class");

            $(ssMenu).removeClass().addClass("ss-menu " +y); //Aaah what a nice


        });

        $(".set-default").click(function(){
            $(ssMenu).removeClass().addClass("ss-menu default");

        });

    });

</script>
