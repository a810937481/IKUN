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
    <title>逍遥游/登录and注册</title>
    <link rel="stylesheet" href="${ctx}/static/bootstrap/css/bootstrap.css">
    <script src="${ctx}/static/js/jquery-3.3.1.min.js"></script>
    <script src="${ctx}/static/bootstrap/js/bootstrap.js"></script>

    <style>
        body{
            background: url("${ctx}/static/img/planB.png") no-repeat center 0;
        }

        .nav{
            font-size: 15px;
        }

        .navbar-brand{
            font-size: 20px;
            color: #000000;
        }

        .nav-link{
            color: #000000;
        }

        .dropdown-item{
            font-size: 15px;
        }

    </style>

    <style type="text/css">
        .nav>li :hover{
            color: #ececf6;
        }

        @font-face {
            font-family: ST;
            src: url("${ctx}/static/fonts/ST.TTF");
        }
    </style>

    <script>

        $(document).ready(function () {
                $("#loginbutton").click(
                    function () {
                        var username = $("#username").val();
                        var password = $("#password").val();
                        var user={
                            username:username,
                            password:password
                        };
                        if (username.length < 7) {
                            alert("用户名最少是七位");
                        }
                        if (password.length < 7) {
                            alert("密码最少是七位");
                        }
                        if (username.length >= 7 && password.length >= 7) {
                            $.ajax({
                                type: "post",
                                url:"${ctx}/login",
                                data:JSON.stringify(user),
                                datatype:"json",
                                contentType:"application/json;charset=UTF-8",
                                success:function (data) {
                                    console.log(data);
                                    if ("success" == data) {
                                        window.location.href = "${ctx}/center";
                                    } else if ("fail" == data) {
                                        alert("账号不存在或密码错误");
                                    } else {
                                        alert("账号已被封禁，请寻找管理员");
                                    }
                                },
                                error:function () {
                                    alert("网络错误");
                                }
                            })
                        }
                    }
                )
            }
        )

    </script>

    <script>

        function registerCheck(form) {
            var newUsernameValue = document.getElementById("newUsername").value;
            var newPasswordValue = document.getElementById("newPassword").value;
            var rNewPasswordValue = document.getElementById("rNewPassword").value;
            var phoneNumber = document.getElementById("phoneNumber").value;
            if (newUsernameValue.length <= 6 )
            {
                alert("用户名长度大于6个字符！");
                return false;
            }

            if (newPasswordValue.length <= 6){
                alert("密码长度大于6个字符！");
                return false;
            }

            if (newPasswordValue != rNewPasswordValue){
                alert("两次输入密码不一致！");
                return false;
            }

            if (phoneNumber.length != 11){
                alert("手机号码输入长度错误！");
                return false;
            }

        }

    </script>

    <script language="JavaScript">

        $(document).ready(function () {
            $("#newUsername").blur(function () {
                var newUsername = $("#newUsername").val();
                var newUsernameLength = document.getElementById("newUsername").value.length;
                var user={
                    username:newUsername
                };
                if (newUsernameLength > 6){
                    $.ajax({
                        url:"${ctx}/usercheck",
                        type:"post",
                        data:JSON.stringify(user),
                        datatype:"json",
                        contentType:"application/json;charset=UTF-8",
                        success:function (data) {
                            //console.log(data);
                            if (data == "true"){
                                $("#checkNewUsername").html("用户名重复！");
                            } else {
                                $("#checkNewUsername").html("用户名");
                            }
                        },
                    })
                }
            });
        });

    </script>

    <script>
        $(function () {
            $("#newUsername").blur(function () {
                var label=$("#checkNewUsername");
                var newUsernameLength = document.getElementById("newUsername").value.length;
                if(newUsernameLength <= 6){
                    label.html("用户名！长度>6");
                } else{
                    label.html("用户名");
                }
            })

            $("#newPassword").blur(function () {
                var label=$("#checkNewPassword");
                var newPasswordLength = document.getElementById("newPassword").value.length;
                if (newPasswordLength <= 6 ){
                    label.html("密&nbsp;&nbsp;&nbsp;码！长度>6");
                } else {
                    label.html("密&nbsp;&nbsp;&nbsp;码");
                }
            })

            $("#rNewPassword").blur(function () {
                var label=$("#checkRNewPassword");
                var newPassword = document.getElementById("newPassword").value;
                var rNewPassword = document.getElementById("rNewPassword").value;
                if (newPassword == rNewPassword){
                    label.html("确认密码");
                } else {
                    label.html("密码不一致");
                }
            })

            $("#phoneNumber").blur(function () {
                var label=$("#checkPhoneNumber");
                var phoneNumberLength = document.getElementById("phoneNumber").value.length;
                if (phoneNumberLength != 11 ){
                    label.html("手机号码！出错");
                } else {
                    label.html("手机号码");
                }
            })

        })
    </script>

    <c:if test="${!empty msg}">
        <script>
            alert("${msg}");
        </script>
    </c:if>

</head>
<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <nav id="first" class="navbar navbar-default navbar-fixed-top bg-custom" style="margin-left: 0px">
                <ul class="nav">
                    <li class="nav-item">
                        <a class="navbar-brand" href="${ctx}/index" style="font-family: 华文行楷;font-size: 30px">逍遥游</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#" style="font-family: 华文行楷;font-size: 25px">登录/注册</a>
                    </li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                    <li class="nav-item dropdown ml-md-auto ">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" style="font-family: 华文行楷;font-size: 25px">关于我们</a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#" style="font-family: 华文行楷;font-size: 25px">联系我们</a> <a class="dropdown-item" href="#" style="font-family: 华文行楷;font-size: 25px">提出建议</a>
                            <div class="dropdown-divider">
                            </div> <a class="dropdown-item" href="#" style="font-family: 华文行楷;font-size: 25px">制作者名单</a>
                        </div>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h1 class="text-center" style="margin-top: 250px;color: #000000;font-size:100px;font-family: 华文行楷;">
                逍&nbsp;遥&nbsp;游<small style="font-family: ST">Easy Travel</small>
                <p style="font-family: ST;font-size: 50px">A Simple Travel Website</p>
            </h1>
            <hr>
            <button type="button" class="btn btn-default" style="margin-left: 690px;background-color: transparent;color: #000000;border-color: #000000;font-size: 40px;font-family: 华文行楷" data-toggle="modal" data-target="#login">登录</button>
            &nbsp;
            <button type="button" class="btn btn-default" style="margin-left: 270px;background-color: transparent;color: #000000;border-color: #000000;font-size: 40px;font-family: 华文行楷" data-toggle="modal" data-target="#register">注册</button>

            <!-- 登录模态框 -->
            <div class="modal fade" id="login">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">

                        <!-- 模态框头部 -->
                        <div class="modal-header">
                            <h4 class="modal-title">登录</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- 模态框主体 -->
                        <form action="${ctx}/login" method="post">
                            <div class="modal-body">

                                <div class="form-group row">
                                    <label for="username" class="col-4 col-form-label">用户名</label>
                                    <div class="col-8">
                                        <input id="username" name="username" type="text" required="required" class="form-control">
                                    </div>
                                    <br>
                                    <br>
                                    <label for="password" class="col-4 col-form-label">密&nbsp;&nbsp;&nbsp;码</label>
                                    <div class="col-8">
                                        <input id="password" name="password" type="password" required="required" class="form-control">
                                    </div>
                                </div>

                            </div>

                            <!-- 模态框底部 -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" id="loginbutton">登录</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>

            <!-- 注册模态框 -->
            <div class="modal fade" id="register">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">

                        <!-- 模态框头部 -->
                        <div class="modal-header">
                            <h4 class="modal-title">注册</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- 模态框主体 -->
                        <form action="${ctx}/register" method="post">
                            <div class="modal-body">

                                <div class="form-group row">
                                    <label for="newUsername" class="col-4 col-form-label" id="checkNewUsername">用户名</label>
                                    <div class="col-8">
                                        <input id="newUsername" name="newUsername" type="text" required="required" class="form-control">
                                    </div>
                                    <br>
                                    <br>
                                    <label for="newPassword" class="col-4 col-form-label" id="checkNewPassword">密&nbsp;&nbsp;&nbsp;码</label>
                                    <div class="col-8">
                                        <input id="newPassword" name="newPassword" type="password" required="required" class="form-control">
                                    </div>
                                    <br>
                                    <br>
                                    <label for="rNewPassword" class="col-4 col-form-label" id="checkRNewPassword">确认密码</label>
                                    <div class="col-8">
                                        <input id="rNewPassword" name="rNewPassword" type="password" required="required" class="form-control">
                                    </div>
                                    <br>
                                    <br>
                                    <label for="phoneNumber" class="col-4 col-form-label" id="checkPhoneNumber">手机号码</label>
                                    <div class="col-8">
                                        <input id="phoneNumber" name="phoneNumber" type="text" required="required" class="form-control">
                                    </div>
                                    <br>

                                    <br>
                                    <label for="email" class="col-4 col-form-label">邮箱地址</label>
                                    <div class="col-8">
                                        <input id="email" name="email" type="email" required="required" class="form-control">
                                    </div>
                                </div>

                            </div>

                            <!-- 模态框底部 -->
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-secondary" onclick="return registerCheck(this.form)">注册</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
