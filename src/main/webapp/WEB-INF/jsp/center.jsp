<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/29
  Time: 0:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>逍遥游——用户中心</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/normalize.css" /><!--CSS RESET-->
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/htmleaf-demo.css"><!--页面样式-->
    <!--ssMenu CSS-->
    <link rel="stylesheet" href="${ctx}/static/css/demo.css"><!--页面文本输入处样式-->
</head>
<body>
<%--导入导航栏--%>
<%@include file="navigation.jsp"%>

<div class="htmleaf-container">
    <header class="htmleaf-header">
        <h1>逍遥游Easy Travel <span>Try Something Different 发现与众不同</span></h1>
        <div class="htmleaf-links">
            <a class="htmleaf-icon icon-htmleaf-home-outline" href="${ctx}/index" title="旅游景点"><span> 旅游景点</span></a>
            <a class="htmleaf-icon icon-htmleaf-arrow-forward-outline" href="新鲜去处的推荐" title="来点惊喜" target="_blank"><span> 来点惊喜</span></a>
        </div>
    </header>
    <main class="ss-main">
        <article>
            <section class="theme-picker">
                <h2> 用户条例与帮助 </h2>
                <p> 以下是本站的用户条例与帮助 </p>
                <h2> 用户帮助  Helper</h2>
                <p> 1. 我们只提供最好的</p>
                <pre class="prettyprint lang-html">
网站的首页可拖动,
查看我们当季主打的商品,
我们只提供最好的。
</pre>
                <p> 2. 本站可自助下单. </p>
                <pre class="prettyprint lang-html">
本站可自助下单
如果有什么可提交工单与我们联系
</pre>
                <h2> 用户条例  </h2>
                <p>  本站视为您已阅读</p>
                <p>用户的权利与须知</p>
                <pre class="prettyprint lang-html">
1、用户享有网站用户的各种权利，可享受网站提供的各项服务。
2、用户在网站进行的所有活动应遵守本网站的管理条例，遵守中华人民共和国法律、法规，并自行承担因从事网站活动直接或间接引起的一切法律责任。
3、用户要注意保管好账号、邮箱及密码，用户如发现账号遭他人非法使用，应立即通知网站管理者。因黑客行为或用户保管疏忽导致账号、密码遭他人非法使用，网站不承担任何责任。
4、用户认为自己在网站的权益受到侵害，有权根据网站相关规定进行投诉申诉。　　
5、用户需遵守网络道德，注意网络礼仪，做到文明上网。
</pre>
                <p> 本站附则</p>
                <pre class="prettyprint lang-js">
1、网站根据需要可能会对本条例进行局部修正或增补，不再另行通知。
2、本条例解释权归逍遥游网所有。
</pre>
        </article>
    </main>
    <div class="related">
        <h3>需要帮助或者反馈</h3>
        <a href="">
            <img src="${ctx}/static/related/1.jpg" width="300" alt="请求帮助"/>
            <h3>请求帮助</h3>
        </a>
        <a href="">
            <img src="${ctx}/static/related/2.jpg" width="300" alt="反馈信息"/>
            <h3>反馈信息</h3>
        </a>
    </div>
</div>


</body>
</html>