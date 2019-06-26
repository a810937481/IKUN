<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/25
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的订单</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<div class="container-fluid">

    <%@include file="navigation.jsp"%>

    <div class="row">
        <div class="col-md-12">
            <div class="alert alert-success" role="alert">
                订单详情
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <form class="form-horizontal" style="border: 5px solid lightblue;text-align: center">
                <fieldset>
                    <div id="legend">
                        <legend>订单查询</legend>
                    </div>
                    <div class="control-group">
                        <!-- Select Basic -->
                        <label class="control-label">根据订单类别查询:</label>
                        <div class="controls">
                            <select class="input-xlarge">
                                <option>旅游订单</option>
                                <option>酒店订单</option>
                                <option>火车票订单</option>
                                <option>机票订单</option></select>
                        </div>

                    </div>

                    <div class="control-group">

                        <!-- Text input-->
                        <label class="control-label" for="input01">搜索关键字:</label>
                        <div class="controls">
                            <input class="input-xlarge" type="text" placeholder="在此键入关键字">
                            <p class="help-block"></p>
                        </div>
                        <button type="submit" class="btn btn-secondary">搜索</button>
                    </div>

                </fieldset>
            </form>

        </div>
        <div class="col-md-8">
            <table class="table">
                <tr>
                    <th>
                        订单号
                    </th>
                    <th>
                        产品名称
                    </th>
                    <th>
                        订单时间
                    </th>
                    <th>
                        订单状态
                    </th>
                </tr>
                <c:forEach var="orders" items="${orders}">
                    <c:choose>
                    <c:when test="orders.state==2">
                <tr>
                    <td>
                        ${orders.number}
                    </td>
                    <td>
                        ${orderInfo.product_name}
                    </td>
                    <td>
                        ${orders.create_time}
                    </td>
                    <td>
                        完成&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a class="btn btn-info">查看</a>
                        <a class="btn btn-dark">删除</a>
                    </td>
                </tr>
                    </c:when>
                        <c:when test="orders.state==1">
                            <tr class="table-active">
                                <td>
                                        ${orders.number}
                                </td>
                                <td>
                                        ${orderInfo.product_name}
                                </td>
                                <td>
                                        ${orders.create_time}
                                </td>
                                <td>
                                    已支付等待发货&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a class="btn btn-info">查看</a>
                                    <a class="btn btn-dark">删除</a>
                                </td>
                            </tr>
                        </c:when>
                        <c:when test="orders.state==0">
                            <tr class="table-warning">
                                <td>
                                        ${orders.number}
                                </td>
                                <td>
                                        ${orderInfo.product_name}
                                </td>
                                <td>
                                        ${orders.create_time}
                                </td>
                                <td>
                                    未支付&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a class="btn btn-info">查看</a>
                                    <a class="btn btn-dark">删除</a>
                                </td>
                            </tr>
                        </c:when>
                        <c:otherwise>
                            <tr class="table-danger">
                                <td>
                                        ${orders.number}
                                </td>
                                <td>
                                        ${orderInfo.product_name}
                                </td>
                                <td>
                                        ${orders.create_time}
                                </td>
                                <td>
                                    退款或取消&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a class="btn btn-info">查看</a>
                                    <a class="btn btn-dark">删除</a>
                                </td>
                            </tr>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>