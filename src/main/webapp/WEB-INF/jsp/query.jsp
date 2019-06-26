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
</head>
<body>

<div class="container-fluid">
            <div class="row" >
                <div class="col-md-12"  >
                    <%@include file="navigation.jsp"%>
                </div>
            </div>

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
