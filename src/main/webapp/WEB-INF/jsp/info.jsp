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
    <title>逍遥游——用户信息修改</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/normalize-info.css" />
    <!--布局
        <link rel="stylesheet" type="text/css" href="css/default.css">
    -->
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/htmleaf-info.css"><!--页面样式-->
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/styles-info.css">
    <script src="${ctx}/static/js/jquery-3.3.1.min.js"></script>

<%--    <link rel="stylesheet" href="${ctx}/static/bootstrap/bootstrap.min.css">
    <script src="${ctx}/static/bootstrap/bootstrap.min.js"></script>--%>

    <style>
        body{
            background: url("${ctx}/static/img/info.png")  center 0;
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
                                    alert("修改成功!");
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
            $("#newPassword").click(
                function () {
                    var nowpassword = $("#nowpassword").val();
                    var newpassword = $("#password").val();
                    console.log(nowpassword);
                    console.log(newpassword);
                    console.log(newpassword == newpassword);
                    if (newpassword == nowpassword) {
                        alert("两次输入的密码一致!");
                    } else {
                        $.ajax({
                            type:"post",
                            url:"${ctx}/updatepassword",
                            data:{"password":nowpassword,"newpassword":newpassword},
                            /*dataType:"json",*/
                            success: function (data) {
                                if (data == "wrong") {
                                    alert("输入了错误的密码！");
                                } else if (data =="success") {
                                    alert("密码修改成功！")
                                    location.reload();
                                }else if (data == "fail") {
                                    alert("密码修改失败！");
                                }
                            },
                            error:function (jqXHR) {
                                alert("error!"+jqXHR.status);
                            }
                        })
                    }
                }
            )
        }
        )

    </script>

</head>
<body>
<div class="htmleaf-container">
    <%@include file="navigation.jsp"%>
    <header class="htmleaf-header">
        <h1>逍遥游Easy Travel <span>用户信息修改</span></h1>
        <div class="htmleaf-links">
            <a class="htmleaf-icon icon-htmleaf-home-outline" href="${ctx}/index" title="回到首页"><span> 回到首页</span></a>
        </div>
    </header>
    <div class="login-wrap">
        <div class="login-html">
            <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">信息修改</label>
            <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">密码修改</label>
            <div class="login-form">
                <div class="sign-up-htm">
                    <div class="group">
                        <label for="nowpassword" class="label">输入现在的密码:</label>
                        <input id="nowpassword" type="password" class="input" datatype="password" name="nowpassword">
                    </div>
                    <div class="group">
                        <label for="password" class="label">输入要改的新密码:</label>
                        <input id="password" type="password" class="input" data-type="password" name="password">
                    </div>
                    <div class="group">
                        <input type="button" class="button" id="newPassword" value="修改密码">
                    </div>
                    <div class="hr"></div>
                </div>
                <div class="sign-in-htm ">
                    <div class="group">
                        <label for="nickname" class="label">昵称</label>
                        <input id="nickname" type="text" class="input" name="nickname" value="${sessionScope.user.nickname}">
                    </div>
                    <div class="group">
                        <label for="phone" class="label">手机号码</label>
                        <input id="phone" type="text" class="input" name="phone" value="${sessionScope.user.phone}">
                    </div>
                    <div class="group">
                        <label for="emai" class="label">电子邮箱</label>
                        <input id="email" type="text" class="input" name="email" value="${sessionScope.user.email}">
                    </div>
                    <div class="group">
                        <input type="button" class="button"  id="updateSubmit" value="提交修改">
                    </div>
                    <div class="hr"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="related">
        <h3>需要帮助?</h3>
        <a href="#">
            <img src="${ctx}/static/related/1.jpg" width="300" alt="请求帮助"/>
            <h3>请求帮助</h3>
        </a>
    </div>
</div>
</body>
</html>