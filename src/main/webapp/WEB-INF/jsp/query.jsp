<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2019/6/25
  Time: 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询结果</title>
    <link rel="stylesheet" href="${ctx}/static/bootstrap/bootstrap.min.css">
    <script src="${ctx}/static/js/jquery-3.3.1.min.js"></script>
    <script src="${ctx}/static/bootstrap/bootstrap.min.js"></script>

    <style>
        body{
            background: url("${ctx}/static/img/searchbackground.png") no-repeat center 0;
        }
    </style>

    <script>
        <c:if test="${msg}!=null">
        alert(${msg});
        </c:if>
    </script>

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

    <br>

    <div class="row">
        <div class="col-md-3">
        </div>
        <div class="col-md-6">
            <c:forEach items="${products}" var="products">
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" alt="Bootstrap Thumbnail First" src="${ctx}/static/${products.image}" />
                        <div class="card-block">
                            <h5 class="card-title">
                                    ${products.product_name}
                            </h5>
                            <p class="card-text">
                                    ${products.price}
                            </p>
                            <p>
                                <a class="btn btn-primary" href="queryById?id=${products.product_id}">查看详情</a>
                            </p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="col-md-3">
        </div>
    </div>
</div>

</body>
</html>
