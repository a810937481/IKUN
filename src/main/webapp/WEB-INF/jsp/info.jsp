<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2019/6/17
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人资料</title>
    <link rel="stylesheet" href="${ctx}/static/bootstrap/bootstrap.min.css">
    <script src="${ctx}/static/js/jquery-3.3.1.min.js"></script>
    <script src="${ctx}/static/bootstrap/bootstrap.min.js"></script>

    <style>
        body{
            background: url("${ctx}/static/img/info.png") no-repeat center 0;
        }
    </style>

    <script>

        $(document).ready(function () {
            $("#updateSubmit").click(
                function () {
                    var nickname = $("#nickname").val();
                    var phone = $("#phone").val();
                    var email = $("#email").val();
                    var user = {
                        nickname : nickname,
                        phone : phone,
                        email : email
                    };
                    if (phone.length != 11){
                        alert("请输入11位电话号码");
                    }
                    if (nickname != null && phone.length == 11 && email != null){
                        $.ajax({
                            type:"post",
                            url:"${ctx}/updateInfo",
                            data:JSON.stringify(user),
                            datatype:"json",
                            contentType:"application/json;charset=UTF-8",
                            success:function (data) {
                                if (data == "success"){
                                    alert("修改成功，现在返回主页");
                                    window.location.href = "index.jsp";
                                } else {
                                    alert("出了一点小问题，修改失败");
                                }
                            },
                            error:function () {
                                alert("网络错误");
                            }
                        })
                    }
                }
            )
        })

    </script>

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

    <div class="row">
        <div class="col-md-3">
        </div>
        <div class="col-md-6">
            <div class="tabbable" id="tabs-930405">
                <ul class="nav nav-tabs">
                    <li class="nav-item">
                        <a class="nav-link active show" href="#tab1" data-toggle="tab">个人资料</a>
                    </li>
                </ul>
                <br>
                <div class="tab-content">
                    <div class="tab-pane active" id="panel-777505">
                        <form>
                            <div class="form-group row">
                                <label for="nickname" class="col-4 col-form-label">我的昵称</label>
                                <div class="col-8">
                                    <input id="nickname" name="nickname" type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="phone" class="col-4 col-form-label">手机号码</label>
                                <div class="col-8">
                                    <input id="phone" name="phone" type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="email" class="col-4 col-form-label">邮箱地址</label>
                                <div class="col-8">
                                    <input id="email" name="email" type="email" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="offset-4 col-8">
                                    <button id="updateSubmit" name="submit" type="submit" class="btn btn-primary" style="background-color: transparent;border-color: #1c7430">提交修改</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
        </div>
    </div>
</div>
</body>
</html>