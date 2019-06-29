<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/29
  Time: 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>逍遥游——新鲜去处</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/htmleaf-fresh.css">
    <link href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/freshstyle.css">

    <script src="${ctx}/static/js/jquery-3.3.1.min.js"></script>
    <script>
        $(document).ready(function () {
                $.ajax({
                    type: "post",
                    url: "${ctx}/getfresh",
                    success: function () {
                        console.log("success");
                    }
                })
            }
        );

    </script>
    <style>
        body{
            background: whitesmoke;
        }
    </style>
</head>
<body>
<div class="htmleaf-container">
    <%@include file="navigation.jsp"%>

    <header class="htmleaf-header">
        <h1>逍遥游 Easy Travel <span>新鲜去处 Fresh air</span></h1>
        <div class="htmleaf-links">
            <a class="htmleaf-icon icon-htmleaf-home-outline" href="${ctx}/index" title="回到首页"><span> 回到首页</span></a>
            <a class="htmleaf-icon icon-htmleaf-arrow-forward-outline" href="${ctx}/tofresh" title="重新选择"><span> 重新选择</span></a>
        </div>
    </header>
    <div class="full-length">
        <div class="container">
            <!-- Team members structure start -->
            <div class="team-members row">

                <!-- effect-2 html -->
                <div class="single-member effect-2">
                    <div class="member-image">
                        <img src="${ctx}${products.get(0).image}" alt="景点">
                    </div>
                    <div class="member-info">
                        <h3>${products.get(0).product_name}</h3>
                        <h5>${products.get(0).company_name}</h5>
                        <p>${products.get(0).product_info}</p>
                        <div class="social-touch">
                            <a class="fa fa-cc-visa" href="#"></a>
                            <a class="fa fa-heart-o" href="#"></a>
                        </div>
                    </div>
                </div>
                <!-- effect-2 html end -->

                <!-- effect-3 html -->
                <div class="single-member effect-3">
                    <div class="member-image">
                        <img src="${ctx}${products.get(1).image}" alt="景点">
                    </div>
                    <div class="member-info">
                        <h3>${products.get(1).product_name}</h3>
                        <h5>${products.get(1).company_name}</h5>
                        <p>${products.get(1).product_info}</p>
                        <div class="social-touch">
                            <a class="fa fa-cc-visa" href="#"></a>
                            <a class="fa fa-heart-o" href="#"></a>
                        </div>
                    </div>
                </div>
                <!-- effect-3 html end -->

                <!-- effect-4 html -->
                <div class="single-member effect-1">
                    <div class="member-info">
                        <h3>${products.get(2).product_name}</h3>
                        <h5>${products.get(2).company_name}</h5>
                    </div>
                    <div class="member-image">
                        <img src="${ctx}${products.get(2).image}" alt="景点">
                    </div>
                    <div class="more-info">
                        <p>${products.get(2).product_info}</p>
                        <div class="social-touch icon-colored">
                            <a class="fa fa-cc-visa" href="#"></a>
                            <a class="fa fa-heart-o" href="#"></a>
                        </div>
                    </div>
                </div>
                <!-- effect-4 html end -->


            </div>
            <!-- Team members structure start -->
        </div>
    </div>
</div>

</body>
</html>