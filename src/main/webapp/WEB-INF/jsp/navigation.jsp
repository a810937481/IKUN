<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/24
  Time: 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link rel="stylesheet" href="${ctx}/static/bootstrap/css/bootstrap.css">
<script src="${ctx}/static/js/jquery-3.3.1.min.js"></script>
<script src="${ctx}/static/bootstrap/js/bootstrap.js"></script>
<link rel="stylesheet" href="${ctx}/static/css/mainDirect.css">
<link rel="stylesheet" href="${ctx}/static/css/mainborder.css">

<div class="row">
    <div class="col-md-6">
    </div>
    <div class="col-md-6" id="mianDirect">
        <div id="nav">
            <ul>
                <c:choose>
                    <c:when test="${empty sessionScope.user}">
                    <li><a href="${ctx}/loginAndRegister">你好，请登录</a></li>
                    <li><a href="${ctx}/loginAndRegister">免费注册</a>${sessionScope.user}</li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="${ctx}/info">${sessionScope.user.nickname}</a></li>
                    </c:otherwise>
                </c:choose>
                <li><a>客服中心</a></li>
                <li><a>我的逍遥游</a>
                    <ul>
                        <li><a href="${ctx}/myorder">我的订单</a></li>
                        <li><a>我的钱包</a></li>
                        <li><a>我的优惠卷</a></li>
                        <li><a>我的收藏</a></li>
                    </ul>
                </li>
                <li><a>我的信息</a>
                    <ul>
                        <li><a href="${ctx}/info">个人资料</a></li>
                        <c:if test="${!empty sessionScope.user}">
                        <li><a href="${ctx}/quit">退出登录</a></li>
                        </c:if>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>

<div id="main-border" >
</div>
