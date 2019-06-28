<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/28
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>逍遥游——我的订单</title>
    <link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/htmleaf-demo.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/ss-menu.css">
    <style type="text/css">
        #dataTable table tr:hover td { background-color: palegoldenrod; }
    </style>
</head>
<body>
<div class="htmleaf-container">
    <header class="htmleaf-header">
        <h1>逍遥游 Easy Travel<span>我的订单 My Order</span></h1>
        <div class="htmleaf-links">
            <a class="htmleaf-icon icon-htmleaf-home-outline" href="新首页" title="回到首页" target="_blank"><span> 回到首页</span></a>
        </div>
    </header>
    <div style="margin:auto; width:80%;padding:2em 0;" class="">
        <h3>您的所有订单信息:</h3>
        <div id="dataTable" class="table table-striped table-bordered" cellspacing="10" width="60%">
        </div>
    </div>
    <div class="related">
        <h3>需要帮助?</h3>
        <a href="">
            <img src="related/1.jpg" width="300" alt="智表-浏览器端仿EXCEL表格jQuery插件"/>
            <h3>请求帮助</h3>
        </a>
    </div>
</div>

<script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
<script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="${ctx}/static/js/raydreams.js"></script>
<%--<script src="js/data.js"></script>--%>
<script type="text/javascript">

    // the data table itself
    var dataTable = null;

    jQuery(document).ready(function () {
        doLoad();

        dataTable = jQuery("#dataTable").raytable({
            datasource: { data: [], keyfield: 'order_id' },
            columns: [
                { field: "number", title: "订单号"},
                { field: "product_name", title: "产品名称" },
                { field: "createTime", title: "创建时间",sort:true ,format: parseDate},
                { field: "price", title: "价格", sort: true },
                { field: "company_name", title: "服务商"  },
                { title: "删除", icons: [{ glyph: "glyphicon-trash", handler: iconAction, data: "order_id" }] }
            ],
            pagesize: 10,
            maxPageButtons: 5,
            /*	            	rowNumbers: true,*/
        });

        jQuery(".glyphicon").css('cursor', 'pointer');

        // load some default
        //doLoad(jQuery("#dataTable"));

    });

    // load some data
    function doLoad(sender) {
        $.ajax({
                url:'${ctx}/test',
                type:'post',
                dataType:'json',
                success:function (data) {
                    var myData=[];
                    for (var key in data){
                        myData.push(data[key]);
                    }
                    dataTable.data(myData, 'order_id');
                    alert("成功获取！");
                }
            }
        )
    }

    // icon clicked event handler
    function iconAction(event)
    {
        // jquery to get the record ID back out
        var data = jQuery(event.target).data('ray-data');
        //$(event.target).closest('tr').remove();
        $.ajax({
            type:"get",
            url:"${ctx}/delorder",
            data:"id="+data,
            //dataType:"json",
            success:function (data) {
                if (data == "success") {
                    $(event.target).closest('tr').remove();
                    alert("删除成功！");
                }
                else if (data == "fail") {
                    alert("删除失败！")
                    window.location.href("/totest");//重新刷新这个页面
                }
            },
            error:function (jqXHR) {
                alert("error!"+jqXHR.status);
            }
    })
        //alert('glyph icon data is ' + data);
        //alert('You clicked the icon with data = ' + event.data.id + ' on row ' + event.data.rowIdx );
    }

/*    // row clicked handler
    function rowAction(event)
    {
        // jquery to get the record ID back out
        //var id = jQuery(event.target).data('ray-key');
        alert('You clicked row ' + event.data.rowIdx + ' with object ID ' + event.data.id );
    }*/

    // boolean handler to determine if the cell content is rendered
    function isManager(item)
    {
        return (item.grade > 4);
    }

    	    	// custom format handler
                function parseDate(item)
                {
                    // source is ISO 8601
                    var d = new Date(item.createTime);
                    return d.toDateString();
                }

</script>
</body>
</html>
