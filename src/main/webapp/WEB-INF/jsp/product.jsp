<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2019/6/26
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>详情页面</title>
    <link rel="stylesheet" href="${ctx}/static/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${ctx}/static/daterangepicker/font-awesome.min.css">
    <link rel="stylesheet" href="${ctx}/static/daterangepicker/daterangepicker-bs3.css">
    <script src="${ctx}/static/js/jquery-3.3.1.min.js"></script>
    <script src="${ctx}/static/bootstrap/js/bootstrap.js"></script>
    <script src="${ctx}/static/daterangepicker/moment.js"></script>
    <script src="${ctx}/static/daterangepicker/daterangepicker.js"></script>
    <script>
        <c:if test="${msg}!=null">
        alert(${msg});
        </c:if>
    </script>

    <script>
        $(document).ready(function() {

            $('#gotime').daterangepicker({

                singleDatePicker: true,

                timePicker: true,

                format: 'MM/DD/YYYY hh:mm A',

                startDate: moment().startOf('minute'),

                endDate: moment().startOf('minute').add(14400,'minute')

            });
        });
    </script>

    <style>
        body{
            background: url("${ctx}/static/img/searchbackground.png") no-repeat center 0;
        }
    </style>

    <style type="text/css">
        @font-face {
            font-family: ST;
            src: url("${ctx}/static/fonts/ST.TTF");
        }
    </style>

</head>
<body>
<div class="container-fluid">
    <div class="row" >
        <div class="col-md-12"  >
            <%@include file="navigation.jsp"%>
        </div>
    </div>

    <header class="htmleaf-header">
        <!--搜索框-->
        <div style="width:530px;margin:0 auto;">
            <form name="query" id="query" action="${ctx}/query" method=post>
                <input id="product_name" name="product_name" type="text" class="form-control" placeholder="Search" style="border-color: #1e7e34;">
                <button type="submit" class="btn btn-secondary" id="querybutton" style="border-color: #1e7e34;background-color: #1e7e34;margin-top: -39px;margin-left: 471px ">搜索</button>
            </form>
        </div>
    </header>

    <div class="row">
        <div class="col-md-3">
        </div>
        <div class="col-md-6">


            <div id="productInfo">
                <form id="product" action="${ctx}/queryById" method="get">
                    <div id="image" style="margin-top: 50px;">
                        <img src="${ctx}/static/${product.image}">
                    </div>
                    <div style="margin-top: -300px;margin-left: 600px;width: 400px;font-family: ST">
                        <h1>景点名称：${product.product_name}</h1>
                        <h2 id="price">一人次单日价格：${product.price}</h2>
                        <h3>景点介绍：${product.product_info}</h3>
                    </div>
                </form>
            </div>

            <hr style="margin-top: 200px">

            <form action="${ctx}/doShop" method="post">
            <div id="dateAndCityPrice">
                <div class="well">
                    <form class="form-horizontal">
                        <fieldset>
                            <div class="control-group">
                                <label class="control-label" for="gotime">选择你的出发时间：</label>
                                <div class="controls">
                                    <div class="input-prepend input-group">
                                        <span class="add-on input-group-addon"><i class="glyphicon glyphicon-calendar fa fa-calendar"></i></span>
                                        <input type="text" style="width: 400px" name="gotime" id="gotime" class="form-control" value="06/26/2019 4:32 PM">
                                    </div>
                                </div>
                            </div>
                        </fieldset>

                        <br>

                        <div class="form-group row">
                            <label for="select" class="col-4 col-form-label">选择你的出发城市：</label>
                            <div class="col-8" id="city">
                                <select id="select" name="select" class="custom-select">
                                    <option value="1">从&nbsp;南京&nbsp;出发需要${product.price*1}元</option>
                                    <option value="2">从&nbsp;杭州&nbsp;出发需要${product.price*2}元</option>
                                    <option value="3">从&nbsp;温州&nbsp;出发需要${product.price*3}元</option>
                                </select>
                            </div>
                        </div>

                        <hr>

                        <input type="text" id="product_id" name="product_id" style="color: transparent;background-color: transparent;border-color: transparent" value="${product.product_id}">

                        <button type="submit" class="btn btn-default btn-lg" style="margin-top: -50px;margin-left: 750px;background-color: transparent;font-family: ST;font-size: 50px">购买</button>

                    </form>
                </div>
            </div>

            </form>
        </div>
        <div class="col-md-3">
        </div>
    </div>

</div>
</body>
</html>
