<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>逍遥游</title>
    <!--lunbo-->
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/default.css">
    <link rel="stylesheet" href="${ctx}/static/css/main.css">
    <link rel="stylesheet" href="${ctx}/static/css/pogo-slider.min.css">
    <!--搜索框-->
    <script src="${ctx}/static/js/jquery-3.3.1.min.js"></script>
    <script src="${ctx}/static/js/search-js/common.js"></script>
    <link rel="stylesheet" href="${ctx}/static/css/search.css">
    <!--logo-->
    <link rel="stylesheet" href="${ctx}/static/css/logo.css">

    <%--拦截权限后提示--%>
    <script>
        <c:if test="${msg}!=null">
        alert(${msg});
        </c:if>
    </script>

</head>
<body >
<!--[if lt IE 8]>
 <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>-->
<![endif]-->

<div class="container-fluid" >
    <div class="row" >
        <div class="col-md-12"  >
                <%@include file="navigation.jsp"%>
        </div>
    </div>
</div>
<div id="logo">
    <img src="${ctx}/static/img/logo/logo.jpg" height="150" width="200" />
</div>
<div class="htmleaf-container">
    <header class="htmleaf-header">
        <!--搜索框-->
        <div style="width:530px;margin:0 auto;">
            <div class="search_box">
                <span class="left l_bg"></span>
                <span class="right r_bg"></span>
                <div class="search">
                    <form name=search_form onSubmit="return bottomForm(this);" target="_blank" method=post>
                        <div id="pt1" class="select">
                            <a id="s0">城市</a>
                            <div style="display:none;" id="pt2" class="part">
                                <p>
                                    <a id="s1">北京</a>
                                    <a id="s2">上海</a>
                                    <a id="s3">深圳</a>
                                    <a id="s4">广州</a>
                                    <a id="s5">苏州</a>
                                    <a id="s6">杭州</a>
                                    <a id="s7">武汉</a>
                                    <a id="s8">成都</a>
                                    <a id="s9">重庆</a>
                                    <a id="s10">昆明</a>
                                    <a id="s11">南京</a>
                                    <a id="s12">西安</a>
                                </p>
                            </div>
                        </div>
                        <input id="catid" name="catid" type="hidden" value="7">
                        <input id="q" class="enter" name="infos" onFocus="if(this.value==''){this.value='';}else{this.select();}this.style.color='black';"  value="逍遥游...">
                        <input class="sb" name="Input" type="submit" value="">
                    </form>
                </div>
            </div>
        </div>
    </header>
    <div class="container">
        <div class="pogoSlider" id="js-main-slider">
            <div class="pogoSlider-slide" data-transition="slideOverLeft" data-duration="1000"  style="background-image:url(${ctx}/static/img/lunbo-img/上海.jpg);"></div>
            <div class="pogoSlider-slide " data-transition="fold" data-duration="1000"  style="background-image:url(${ctx}/static/img/lunbo-img/武汉东湖.jpg);"></div>
            <div class="pogoSlider-slide " data-transition="shrinkReveal" data-duration="1000"  style="background-image:url(${ctx}/static/img/lunbo-img/三亚.jpg);"></div>
        </div><!-- .pogoSlider -->

        <div class="demos" id="demos" style="margin-left:30px; ">

            <div class="slideDemos clearfix">

                <div class="grid12 small12">

                    <h2 class="sectionHeading">热门景点</h2>

                </div>

                <div class="row fl">

                    <div class="grid12 small3 slideDemos-single">

                        <div class="pogoSlider" id="demo1">

                            <div class="pogoSlider-slide" style="background-image: url(${ctx}/static/img/photo/北京故宫.jpg);">
                                <h3 class="pogoSlider-slide-element">北京故宫</h3>
                            </div>
                            <div class="pogoSlider-slide" style="background-image: url(${ctx}/static/img/photo/北京天安门.jpg);">
                                <h3 class="pogoSlider-slide-element">北京天安门</h3>
                            </div>
                            <div class="pogoSlider-slide" style="background-image: url(${ctx}/static/img/photo/北京颐和园.jpg)">
                                <h3 class="pogoSlider-slide-element">北京颐和园</h3>
                            </div>

                        </div>

                    </div>

                    <div class="grid12 small3 slideDemos-single">

                        <div class="pogoSlider " id="demo2">

                            <div class="pogoSlider-slide" data-transition="blocksReveal" style="background-image: url(${ctx}/static/img/photo/上海陆家嘴.jpg);">
                                <h3 class="pogoSlider-slide-element">上海陆家嘴</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="blocksReveal" style="background-image: url(${ctx}/static/img/photo/上海外滩.jpg);">
                                <h3 class="pogoSlider-slide-element">上海外滩l</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="blocksReveal" style="background-image: url(${ctx}/static/img/photo/上海迪士尼.jpg);">
                                <h3 class="pogoSlider-slide-element">上海迪士尼</h3>
                            </div>

                        </div>

                    </div>

                    <div class="grid12 small3 slideDemos-single">

                        <div class="pogoSlider" id="demo3">

                            <div class="pogoSlider-slide" data-transition="verticalSplitReveal" style="background-image: url(${ctx}/static/img/photo/广州小蛮腰.jpg);">
                                <h3 class="pogoSlider-slide-element">广州小蛮腰</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="verticalSplitReveal" style="background-image: url(${ctx}/static/img/photo/广州大丰门景区.jpg);">
                                <h3 class="pogoSlider-slide-element">广州大丰门景区</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="verticalSplitReveal" style="background-image: url(${ctx}/static/img/photo/广州白云山景区.jpg)">
                                <h3 class="pogoSlider-slide-element">广州白云山景区</h3>
                            </div>

                        </div>

                    </div>

                    <div class="grid12 small3 slideDemos-single">

                        <div class="pogoSlider" id="demo4">

                            <div class="pogoSlider-slide" data-transition="zipReveal" style="background-image: url(${ctx}/static/img/photo/深圳世界之窗.jpg);">
                                <h3 class="pogoSlider-slide-element">深圳世界之窗</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="zipReveal" style="background-image: url(${ctx}/static/img/photo/深圳大小梅沙.jpg);">
                                <h3 class="pogoSlider-slide-element">深圳大小梅沙</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="zipReveal" style="background-image: url(${ctx}/static/img/photo/深圳华侨城.jpg)">
                                <h3 class="pogoSlider-slide-element">深圳华侨城</h3>
                            </div>

                        </div>

                    </div>

                </div><!-- .row -->

                <div class="row fl">

                    <div class="grid12 small3 slideDemos-single">

                        <div class="pogoSlider" id="demo5">

                            <div class="pogoSlider-slide" data-transition="shrinkReveal" style="background-image: url(${ctx}/static/img/photo/南京夫子庙.jpg);">
                                <h3 class="pogoSlider-slide-element">南京夫子庙</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="shrinkReveal" style="background-image: url(${ctx}/static/img/photo/南京中山陵.jpg);">
                                <h3 class="pogoSlider-slide-element">南京中山陵</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="shrinkReveal" style="background-image: url(${ctx}/static/img/photo/南京玄武湖.jpg)">
                                <h3 class="pogoSlider-slide-element">南京玄武湖</h3>
                            </div>

                        </div>

                    </div>

                    <div class="grid12 small3 slideDemos-single" id="demo2">

                        <div class="pogoSlider" id="demo6">

                            <div class="pogoSlider-slide" data-transition="expandReveal" style="background-image: url(${ctx}/static/img/photo/成都熊猫基地.jpg);">
                                <h3 class="pogoSlider-slide-element">成都熊猫基地</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="expandReveal" style="background-image: url(${ctx}/static/img/photo/成都太古.jpg);">
                                <h3 class="pogoSlider-slide-element">成都太古</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="expandReveal" style="background-image: url(${ctx}/static/img/photo/成都青山城.jpg)">
                                <h3 class="pogoSlider-slide-element">成都青山城</h3>
                            </div>

                        </div>

                    </div>

                    <div class="grid12 small3 slideDemos-single">

                        <div class="pogoSlider" id="demo7">

                            <div class="pogoSlider-slide" data-transition="fold" style="background-image: url(${ctx}/static/img/photo/重庆CBD雾景.jpg);">
                                <h3 class="pogoSlider-slide-element">重庆CBD雾景</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="fold" style="background-image: url(${ctx}/static/img/photo/重庆万州大瀑布.jpg);">
                                <h3 class="pogoSlider-slide-element">重庆万州大瀑布</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="fold" style="background-image: url(${ctx}/static/img/photo/重庆洪崖洞.jpg)">
                                <h3 class="pogoSlider-slide-element">重庆洪崖洞</h3>
                            </div>

                        </div>

                    </div>

                    <div class="grid12 small3 slideDemos-single">

                        <div class="pogoSlider" id="demo8">

                            <div class="pogoSlider-slide" data-transition="verticalSlide" style="background-image: url(${ctx}/static/img/photo/三亚.jpg);">
                                <h3 class="pogoSlider-slide-element">三亚</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="verticalSlide" style="background-image: url(${ctx}/static/img/photo/三亚凤凰岛.jpg);">
                                <h3 class="pogoSlider-slide-element">三亚凤凰岛</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="verticalSlide" style="background-image: url(${ctx}/static/img/photo/三亚南海观音.jpg)">
                                <h3 class="pogoSlider-slide-element">三亚南海观音</h3>
                            </div>

                        </div>

                    </div>

                </div><!-- .row -->

                <div class="row fl">

                    <div class="grid12 small3 slideDemos-single">

                        <div class="pogoSlider" id="demo9">

                            <div class="pogoSlider-slide" data-transition="fade" style="background-image: url(${ctx}/static/img/photo/西安.jpg);">
                                <h3 class="pogoSlider-slide-element">西安</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="fade" style="background-image: url(${ctx}/static/img/photo/西安商业街.jpg);">
                                <h3 class="pogoSlider-slide-element">西安商业街</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="fade" style="background-image: url(${ctx}/static/img/photo/西安大雁塔.jpg)">
                                <h3 class="pogoSlider-slide-element">西安大雁塔</h3>
                            </div>

                        </div>

                    </div>

                    <div class="grid12 small3 slideDemos-single">

                        <div class="pogoSlider" id="demo10">

                            <div class="pogoSlider-slide" data-transition="slideRevealLeft" style="background-image: url(${ctx}/static/img/photo/武汉黄鹤楼.jpg);">
                                <h3 class="pogoSlider-slide-element">武汉黄鹤楼</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="slideRevealLeft" style="background-image: url(${ctx}/static/img/photo/武汉东湖.jpg);">
                                <h3 class="pogoSlider-slide-element">武汉东湖</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="slideRevealLeft" style="background-image: url(${ctx}/static/img/photo/武汉长江大桥.jpg)">
                                <h3 class="pogoSlider-slide-element">武汉长江大桥</h3>
                            </div>

                        </div>

                    </div>

                    <div class="grid12 small3 slideDemos-single">

                        <div class="pogoSlider" id="demo11">

                            <div class="pogoSlider-slide" data-transition="slideOverLeft" style="background-image: url(${ctx}/static/img/photo/苏州园林.jpg);">
                                <h3 class="pogoSlider-slide-element">苏州园林</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="slideOverLeft" style="background-image: url(${ctx}/static/img/photo/苏州太湖景区.jpg);">
                                <h3 class="pogoSlider-slide-element">苏州太湖景区</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="slideOverLeft" style="background-image: url(${ctx}/static/img/photo/苏州常熟虞山公园.jpg)">
                                <h3 class="pogoSlider-slide-element">苏州常熟虞山公园</h3>
                            </div>

                        </div>

                    </div>

                    <div class="grid12 small3 slideDemos-single">

                        <div class="pogoSlider" id="demo12">

                            <div class="pogoSlider-slide" data-transition="barRevealDown" style="background-image: url(${ctx}/static/img/photo/昆明滇池.jpg);">
                                <h3 class="pogoSlider-slide-element">昆明滇池</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="barRevealDown" style="background-image: url(${ctx}/static/img/photo/昆明南屏街.jpg);">
                                <h3 class="pogoSlider-slide-element">昆明南屏街</h3>
                            </div>
                            <div class="pogoSlider-slide" data-transition="barRevealDown" style="background-image: url(${ctx}/static/img/photo/昆明西山公园.jpg)">
                                <h3 class="pogoSlider-slide-element">昆明西山公园</h3>
                            </div>

                        </div>

                    </div>

                </div><!-- row -->

            </div><!-- slideDemos -->

        </div><!-- demos -->

    </div><!-- .container -->
    <div class="related">

    </div>
</div>
<script src="${ctx}/static/js/vendor/jquery-1.11.1.min.js"></script>
<script src="${ctx}/static/js/lunbo/jquery.pogo-slider.min.js"></script>
<script src="${ctx}/static/js/lunbo/main.js"></script>

</body>
</html>