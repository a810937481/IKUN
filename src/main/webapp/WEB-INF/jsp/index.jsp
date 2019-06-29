<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/29
  Time: 0:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>逍遥游——更轻松的出行方式</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/base.css" />
    <script>document.documentElement.className="js";var supportsCssVars=function(){var e,t=document.createElement("style");return t.innerHTML="root: { --tmp-var: bold; }",document.head.appendChild(t),e=!!(window.CSS&&window.CSS.supports&&window.CSS.supports("font-weight","var(--tmp-var)")),t.parentNode.removeChild(t),e};supportsCssVars()||alert("Please view this demo in a modern browser that supports CSS Variables.");</script>
</head>
<body>
<body class="loading">
<main>
    <div class="frame">
        <div class="frame__title-wrap">
            <h1 class="frame__title">请选择您的操作:</h1>
            <div class="frame__links">
                <c:choose>
                    <c:when test="${empty sessionScope.user}">
                <a href="${ctx}/loginAndRegister">登录/注册</a>
                    </c:when>
                    <c:otherwise>
                        <a href="${ctx}/center">回到用户中心</a>
                    </c:otherwise>
                </c:choose>
                <a href="${ctx}/tofresh">查看更多</a>
                <a href="" target="_blank">关于我们</a>
            </div>
        </div>
        <h3 class="frame__subtitle">逍遥游 EASY TRAVEL</h3>
        <div class="frame__indicator"></div>
    </div>
    <div class="strip-outer">
        <div class="strip-inner">
            <div class="draggable"></div>
            <div class="strip">
                <div class="strip__item">
                    <div class="img-outer img-outer--size-s"><div class="img-inner" style="background-image:url('${ctx}/static/img/index/1.jpg');"></div></div>
                    <span class="strip__item-number"><a class="strip__item-link"><span>南京——中山陵</span></a><span class="strip__item-plus"></span></span>
                </div>
                <div class="strip__item">
                    <div class="img-outer img-outer--size-m"><div class="img-inner" style="background-image:url('${ctx}/static/img/index/2.jpg');"></div></div>
                    <span class="strip__item-number"><a class="strip__item-link"><span>西安</span></a><span class="strip__item-plus"></span></span>
                </div>
                <div class="strip__item">
                    <div class="img-outer img-outer--size-xl"><div class="img-inner" style="background-image:url('${ctx}/static/img/index/3.jpg');"></div></div>
                    <span class="strip__item-number"><a class="strip__item-link"><span>南京——夫子庙</span></a><span class="strip__item-plus"></span></span>
                </div>
                <div class="strip__item">
                    <div class="img-outer img-outer--size-l"><div class="img-inner" style="background-image:url('${ctx}/static/img/index/4.jpg');"></div></div>
                    <span class="strip__item-number"><a class="strip__item-link"><span>北京——颐和园</span></a><span class="strip__item-plus"></span></span>
                </div>
                <div class="strip__item">
                    <div class="img-outer img-outer--size-s"><div class="img-inner" style="background-image:url('${ctx}/static/img/index/5.jpg');"></div></div>
                    <span class="strip__item-number"><a class="strip__item-link"><span>北京——天安门</span></a><span class="strip__item-plus"></span></span>
                </div>
                <div class="strip__item">
                    <div class="img-outer img-outer--size-m"><div class="img-inner" style="background-image:url('${ctx}/static/img/index/6.jpg');"></div></div>
                    <span class="strip__item-number"><a class="strip__item-link"><span>北京——故宫</span></a><span class="strip__item-plus"></span></span>
                </div>
                <div class="strip__item">
                    <div class="img-outer img-outer--size-s"><div class="img-inner" style="background-image:url('${ctx}/static/img/index/7.jpg');"></div></div>
                    <span class="strip__item-number"><a class="strip__item-link"><span>苏州——苏州园林</span></a><span class="strip__item-plus"></span></span>
                </div>
                <div class="strip__item">
                    <div class="img-outer img-outer--size-l"><div class="img-inner" style="background-image:url('${ctx}/static/img/index/8.jpg');"></div></div>
                    <span class="strip__item-number"><a class="strip__item-link"><span>苏州——太湖景区</span></a><span class="strip__item-plus"></span></span>
                </div>
                <div class="strip__item">
                    <div class="img-outer img-outer--size-s"><div class="img-inner" style="background-image:url('${ctx}/static/img/index/9.jpg');"></div></div>
                    <span class="strip__item-number"><a class="strip__item-link"><span>苏州——常熟虞山公园</span></a><span class="strip__item-plus"></span></span>
                </div>
                <div class="strip__item">
                    <div class="img-outer"><div class="img-inner" style="background-image:url('${ctx}/static/img/index/10.jpg');"></div></div>
                    <span class="strip__item-number"><a class="strip__item-link"><span>上海——外滩</span></a><span class="strip__item-plus"></span></span>
                </div>
                <div class="strip__item">
                    <div class="img-outer img-outer--size-s"><div class="img-inner" style="background-image:url('${ctx}/static/img/index/11.jpg');"></div></div>
                    <span class="strip__item-number"><a class="strip__item-link"><span>上海——迪士尼乐园</span></a><span class="strip__item-plus"></span></span>
                </div>
                <div class="strip__item">
                    <div class="img-outer img-outer--size-xl"><div class="img-inner" style="background-image:url('${ctx}/static/img/index/12.jpg');"></div></div>
                    <span class="strip__item-number"><a class="strip__item-link"><span>上海——陆家嘴</span></a><span class="strip__item-plus"></span></span>
                </div>
                <div class="strip__item">
                    <div class="img-outer img-outer--size-s"><div class="img-inner" style="background-image:url('${ctx}/static/img/index/13.jpg');"></div></div>
                    <span class="strip__item-number"><a class="strip__item-link"><span>重庆——洪崖洞</span></a><span class="strip__item-plus"></span></span>
                </div>
                <div class="strip__item">
                    <div class="img-outer img-outer--size-l"><div class="img-inner" style="background-image:url('${ctx}/static/img/index/14.jpg');"></div></div>
                    <span class="strip__item-number"><a class="strip__item-link"><span>重庆——万州大瀑布</span></a><span class="strip__item-plus"></span></span>
                </div>
                <div class="strip__item">
                    <div class="img-outer img-outer--size-s"><div class="img-inner" style="background-image:url('${ctx}/static/img/index/15.jpg');"></div></div>
                    <span class="strip__item-number"><a class="strip__item-link"><span>西安——大雁塔</span></a><span class="strip__item-plus"></span></span>
                </div>
                <div class="strip__item">
                    <div class="img-outer img-outer--size-l"><div class="img-inner" style="background-image:url('${ctx}/static/img/index/16.jpg');"></div></div>
                    <span class="strip__item-number"><a class="strip__item-link"><span>昆明——滇池</span></a><span class="strip__item-plus"></span></span>
                </div>
                <div class="strip__item">
                    <div class="img-outer img-outer--size-m"><div class="img-inner" style="background-image:url('${ctx}/static/img/index/17.jpg');"></div></div>
                    <span class="strip__item-number"><a class="strip__item-link"><span>昆明——南屏街</span></a><span class="strip__item-plus"></span></span>
                </div>
                <div class="strip__item">
                    <div class="img-outer"><div class="img-inner" style="background-image:url('${ctx}/static/img/index/18.jpg');"></div></div>
                    <span class="strip__item-number"><a class="strip__item-link"><span>成都——太古里</span></a><span class="strip__item-plus"></span></span>
                </div>
                <div class="strip__item">
                    <div class="img-outer img-outer--size-s"><div class="img-inner" style="background-image:url('${ctx}/static/img/index/19.jpg');"></div></div>
                    <span class="strip__item-number"><a class="strip__item-link"><span>成都——熊猫基地</span></a><span class="strip__item-plus"></span></span>
                </div>
            </div><!--/strip-->
        </div><!--/strip-inner-->
        <div class="strip-cover">
            <h2 class="strip-cover__title">逍遥游</h2>
            <span class="strip-cover__subtitle">2019</span>
        </div>
    </div><!--/strip-outer-->
    <div class="content">
        <article class="content__item">
            <div class="img-outer img-outer--content">
                <div class="img-inner img-inner--content" style="background-image: url(${ctx}/static/img/index/1.jpg);"></div>
            </div>
            <div class="content__item-copy">
                <h2 class="content__item-title">南京——中山陵</h2>
                <p class="content__item-text">中山陵位于南京市玄武区紫金山南麓钟山风景区内，是中国近代伟大的民主革命先行者孙中山先生的陵寝，及其附属纪念建筑群，面积8万余平方米。</p>
            </div>
        </article>
        <article class="content__item">
            <div class="img-outer img-outer--content">
                <div class="img-inner img-inner--content" style="background-image: url(${ctx}/static/img/index/2.jpg);"></div>
            </div>
            <div class="content__item-copy">
                <h2 class="content__item-title">西安</h2>
                <p class="content__item-text">西安是中华文明和中华民族重要发祥地之一，历史上先后有十多个王朝在此建都。丰镐都城、秦阿房宫、兵马俑，汉未央宫、长乐宫，隋大兴城，唐大明宫、兴庆宫等勾勒出“长安情结”。</p>
            </div>
        </article>
        <article class="content__item">
            <div class="img-outer img-outer--content">
                <div class="img-inner img-inner--content" style="background-image: url(${ctx}/static/img/index/3.jpg);"></div>
            </div>
            <div class="content__item-copy">
                <h2 class="content__item-title">南京——夫子庙</h2>
                <p class="content__item-text">南京夫子庙位于南京市秦淮区秦淮河北岸贡院街、江南贡院以西，地处夫子庙秦淮风光带核心区，即南京孔庙、南京文庙、文宣王庙，为供奉祭祀孔子之地，是中国第一所国家最高学府，也是中国四大文庙，为中国古代文化枢纽之地、金陵历史人文荟萃之地，不仅是明清时期南京的文教中心，同时也是居东南各省之冠的文教建筑群。</p>
            </div>
        </article>
        <article class="content__item">
            <div class="img-outer img-outer--content">
                <div class="img-inner img-inner--content" style="background-image: url(${ctx}/static/img/index/4.jpg);"></div>
            </div>
            <div class="content__item-copy">
                <h2 class="content__item-title">北京——颐和园</h2>
                <p class="content__item-text">颐和园，中国清朝时期皇家园林，前身为清漪园，坐落在北京西郊，距城区15公里，占地约290公顷，与圆明园毗邻。它是以昆明湖、万寿山为基址，以杭州西湖为蓝本，汲取江南园林的设计手法而建成的一座大型山水园林，也是保存最完整的一座皇家行宫御苑，被誉为“皇家园林博物馆”，也是国家重点旅游景点。</p>
            </div>
        </article>
        <article class="content__item">
            <div class="img-outer img-outer--content">
                <div class="img-inner img-inner--content" style="background-image: url(${ctx}/static/img/index/5.jpg);"></div>
            </div>
            <div class="content__item-copy">
                <h2 class="content__item-title">北京——天安门</h2>
                <p class="content__item-text">天安门广场，位于北京市中心，地处北京市东城区东长安街，北起天安门，南至正阳门，东起中国国家博物馆，西至人民大会堂，南北长880米，东西宽500米，面积达44万平方米，可容纳100万人举行盛大集会，是世界上最大的城市广场。广场地面全部由经过特殊工艺技术处理的浅色花岗岩条石铺成，中央矗立着人民英雄纪念碑和庄严肃穆的毛主席纪念堂，天安门两边是劳动人民文化宫和中山公园，与天安门浑然一体，共同构成天安门广场。1986年，天安门广场被评为“北京十六景”之一，景观名“天安丽日”。</p>
            </div>
        </article>
        <article class="content__item">
            <div class="img-outer img-outer--content">
                <div class="img-inner img-inner--content" style="background-image: url(${ctx}/static/img/index/6.jpg);"></div>
            </div>
            <div class="content__item-copy">
                <h2 class="content__item-title">北京——故宫</h2>
                <p class="content__item-text">北京故宫是中国明清两代的皇家宫殿，旧称为紫禁城，位于北京中轴线的中心，是中国古代宫廷建筑之精华。北京故宫以三大殿为中心，占地面积72万平方米，建筑面积约15万平方米，有大小宫殿七十多座，房屋九千余间。是世界上现存规模最大、保存最为完整的木质结构古建筑之一。</p>
            </div>
        </article>
        <article class="content__item">
            <div class="img-outer img-outer--content">
                <div class="img-inner img-inner--content" style="background-image: url(${ctx}/static/img/index/7.jpg);"></div>
            </div>
            <div class="content__item-copy">
                <h2 class="content__item-title">苏州——苏州园林</h2>
                <p class="content__item-text">苏州古典园林，简称苏州园林，是世界文化遗产、国家AAAAA级旅游景区，中国十大风景名胜之一。苏州古典园林素有“园林之城”之称，享有“江南园林甲天下，苏州园林甲江南”之美誉，誉为“咫尺之内再造乾坤”。苏州古典园林始于春秋时期吴国建都姑苏时，形成于五代，成熟于宋代，兴旺鼎盛于明清时期。到清末苏州已有各色园林170多处，现保存完整的有60多处，对外开放的有19处，主要有沧浪亭、狮子林、拙政园、留园、网师园、怡园等园林。</p>
            </div>
        </article>
        <article class="content__item">
            <div class="img-outer img-outer--content">
                <div class="img-inner img-inner--content" style="background-image: url(${ctx}/static/img/index/8.jpg);"></div>
            </div>
            <div class="content__item-copy">
                <h2 class="content__item-title">苏州——太湖景区</h2>
                <p class="content__item-text">太湖风景名胜区位于长江三角洲中部，是以太湖、沿湖山丘、岛屿的山水景观为特色，具有悠久文化历史的天然湖泊风景区。</p>
            </div>
        </article>
        <article class="content__item">
            <div class="img-outer img-outer--content">
                <div class="img-inner img-inner--content" style="background-image: url(${ctx}/static/img/index/9.jpg);"></div>
            </div>
            <div class="content__item-copy">
                <h2 class="content__item-title">苏州——常熟虞山公园</h2>
                <p class="content__item-text">虞山公园位于沙家浜畔、阳澄湖边。其东南端伸入历史文化名城——江苏省常熟市，西南方与尚湖相依，湖光山色，相映生辉，素有“七溪流水皆通海，十里青山半入城”的美称。有宝岩生态观光园，剑门，维摩山庄等旅游景点。1989年3月经国家计委和林业部批准为首批国家级森林公园。</p>
            </div>
        </article>
        <article class="content__item">
            <div class="img-outer img-outer--content">
                <div class="img-inner img-inner--content" style="background-image: url(${ctx}/static/img/index/10.jpg);"></div>
            </div>
            <div class="content__item-copy">
                <h2 class="content__item-title">上海——外滩</h2>
                <p class="content__item-text">外滩（英文：The Bund；上海话拼音：nga thae），位于上海市黄浦区的黄浦江畔，即外黄浦滩，为中国历史文化街区。1844年（清道光廿四年）起，外滩这一带被划为英国租界，成为上海十里洋场的真实写照，也是旧上海租界区以及整个上海近代城市开始的起点。</p>
            </div>
        </article>
        <article class="content__item">
            <div class="img-outer img-outer--content">
                <div class="img-inner img-inner--content" style="background-image: url(${ctx}/static/img/index/11.jpg);"></div>
            </div>
            <div class="content__item-copy">
                <h2 class="content__item-title">上海——迪士尼乐园</h2>
                <p class="content__item-text">上海迪士尼乐园，是中国内地首座迪士尼主题乐园，位于上海市浦东新区川沙新镇，于2016年6月16日正式开园。它是中国第二个、中国内地第一个、亚洲第三个、世界第六个迪士尼主题公园。上海迪士尼乐园拥有七大主题园区：米奇大街、奇想花园、探险岛、宝藏湾、明日世界、梦幻世界、玩具总动员；两座主题酒店：上海迪士尼乐园酒店、玩具总动员酒店；一座地铁站：迪士尼站；并有多个全球首发游乐项目</p>
            </div>
        </article>
        <article class="content__item">
            <div class="img-outer img-outer--content">
                <div class="img-inner img-inner--content" style="background-image: url(${ctx}/static/img/index/12.jpg);"></div>
            </div>
            <div class="content__item-copy">
                <h2 class="content__item-title">上海——陆家嘴</h2>
                <p class="content__item-text">陆家嘴位于上海市浦东新区的黄浦江畔，隔江面对外滩。是众多跨国银行的大中华区及东亚总部所在地，中国最具影响力的金融中心之一。明永乐年间，黄浦江水系形成，江水自南向北与吴淞江相汇后，折向东流，东岸形成一块嘴状的冲积沙滩。明代翰林院学士陆深，生卒于此，故称这块滩地叫陆家嘴。</p>
            </div>
        </article>
        <article class="content__item">
            <div class="img-outer img-outer--content">
                <div class="img-inner img-inner--content" style="background-image: url(${ctx}/static/img/index/13.jpg);"></div>
            </div>
            <div class="content__item-copy">
                <h2 class="content__item-title">重庆——洪崖洞</h2>
                <p class="content__item-text">洪崖洞，原名洪崖门，是古重庆城门之一，位于重庆市渝中区解放碑沧白路，地处长江、嘉陵江两江交汇的滨江地带，是兼具观光旅游、休闲度假等功能的旅游区。以其巴渝传统建筑和民俗风貌特色而被评为国家AAAA级旅游景区。2006年，由重庆市人民政府总投资3.85亿元兴建而成。</p>
            </div>
        </article>
        <article class="content__item">
            <div class="img-outer img-outer--content">
                <div class="img-inner img-inner--content" style="background-image: url(${ctx}/static/img/index/14.jpg);"></div>
            </div>
            <div class="content__item-copy">
                <h2 class="content__item-title">重庆——万州大瀑布</h2>
                <p class="content__item-text">万州大瀑布，宽151米，高64.5米，面积9739.5平方米，是亚洲第一大瀑布，也是亚洲第一宽“瀑布”。万州大瀑布，国家4A级旅游景区，比黄果树瀑布尚宽19米，被称为“亚洲第一瀑布”。它位于万州区甘宁镇，距城区30公里，景区面积60.13平方公里。</p>
            </div>
        </article>
        <article class="content__item">
            <div class="img-outer img-outer--content">
                <div class="img-inner img-inner--content" style="background-image: url(${ctx}/static/img/index/15.jpg);"></div>
            </div>
            <div class="content__item-copy">
                <h2 class="content__item-title">西安——大雁塔</h2>
                <p class="content__item-text">大雁塔位于唐长安城晋昌坊（今陕西省西安市南）的大慈恩寺内，又名“慈恩寺塔”。唐永徽三年（652年），玄奘为保存由天竺经丝绸之路带回长安的经卷佛像主持修建了大雁塔，最初五层，后加盖至九层，再后层数和高度又有数次变更，最后固定为今天所看到的七层塔身，通高64.517米，底层边长25.5米。</p>
            </div>
        </article>
        <article class="content__item">
            <div class="img-outer img-outer--content">
                <div class="img-inner img-inner--content" style="background-image: url(${ctx}/static/img/index/16.jpg);"></div>
            </div>
            <div class="content__item-copy">
                <h2 class="content__item-title">昆明——滇池</h2>
                <p class="content__item-text">滇池，亦称昆明湖、昆明池、滇南泽、滇海。在昆明市西南，有盘龙江等河流注入，湖面海拔1886米，面积330平方千米，云南省最大的淡水湖，有高原明珠之称。平均水深5米，最深8米。湖水在西南海口洩出，称螳螂川，为长江上游干流金沙江支流普渡河上源。</p>
            </div>
        </article>
        <article class="content__item">
            <div class="img-outer img-outer--content">
                <div class="img-inner img-inner--content" style="background-image: url(${ctx}/static/img/index/17.jpg);"></div>
            </div>
            <div class="content__item-copy">
                <h2 class="content__item-title">昆明——南屏街</h2>
                <p class="content__item-text">南屏街是昆明历史上的老街区，也是昆明市古老的商业街，其中南屏街是昆明旧时的金融、商业和娱乐中心，维持城市中心区的吸引力，设立步行街，鼓励商业、文化和娱乐发展。</p>
            </div>
        </article>
        <article class="content__item">
            <div class="img-outer img-outer--content">
                <div class="img-inner img-inner--content" style="background-image: url(${ctx}/static/img/index/18.jpg);"></div>
            </div>
            <div class="content__item-copy">
                <h2 class="content__item-title">成都——太古里</h2>
                <p class="content__item-text">成都远洋太古里（Sino-Ocean Taikoo Li Chengdu）坐落成都中心地带，是太古地产（Swire Properties）和远洋集团（Sino-Ocean Group）携手发展的开放式、低密度的街区形态购物中心。成都远洋太古里位于春熙路地铁站，尽享优越交通和人流优势，比邻的千年古刹大慈寺更为其增添独特的历史和文化韵味。</p>
            </div>
        </article>
        <article class="content__item">
            <div class="img-outer img-outer--content">
                <div class="img-inner img-inner--content" style="background-image: url(${ctx}/static/img/index/19.jpg);"></div>
            </div>
            <div class="content__item-copy">
                <h2 class="content__item-title">成都——熊猫基地</h2>
                <p class="content__item-text">成都大熊猫繁育研究基地，是中国政府实施大熊猫等濒危野生动物迁地保护工程的主要研究基地之一，国家AAAA级旅游景区。</p>
            </div>
        </article>
        <button class="content__close" aria-label="Close content"><svg width="12" height="26" viewBox="0 0 12 26"><path d="M5.293 25H5v-.293l-5-5L.707 19 5 23.293V0h1v23.657L10.657 19l.707.707-5.657 5.657-.025-.025-.025.025L5.293 25z"/></svg></svg></button>
    </div>
</main>
<div class="cursor">
    <div class="cursor__inner cursor__inner--circle">
        <div class="cursor__side cursor__side--left"></div>
        <div class="cursor__side cursor__side--right"></div>
    </div>
</div>
<script src="${ctx}/static/js/imagesloaded.pkgd.min.js"></script>
<script src="${ctx}/static/js/TweenMax.min.js"></script>
<script src="${ctx}/static/js/draggabilly.pkgd.min.js"></script>
<script src="${ctx}/static/js/demo.js"></script>
<script>
    // Preload all the images in the page
    imagesLoaded(document.querySelectorAll('.img-inner'), {background: true}, () => document.body.classList.remove('loading'));
</script>

<script src="${ctx}/static/js/jquery-3.3.1.min.js" type="text/javascript"></script>
</body>
</html>
