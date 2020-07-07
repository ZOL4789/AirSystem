<%--
  Created by IntelliJ IDEA.
  User: ZOL
  Date: 2020/7/1
  Time: 18:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AirSystem-首页</title>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="../content/jquery.datetimepicker.css" rel="stylesheet" />
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="../scripts/jquery.datetimepicker.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            //初始化时间控件
            $("#dateTime").datetimepicker({
                format: 'Y-m-d',        //设置时间显示格式
                autoclose: true,        //设置选择时间后自动消失为true(这个没用)
                minView: 2,             //设置显示方式为2（这个没用）
                language: 'zh-CN',      //设置字符串方式为中文解码
                minDate: new Date(),    //设置可选日期为当前日期之后的日期
            });
            alert(${userName});
            //默认出发时间为当前日期
            var date = new Date();
            $("#dateTime").val(date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate());
            //设置搜索的点击事件
            $("#btnSearch").on("click", function () {
                alert("fasdf");
            });

        })
    </script>
</head>
<body>
<div class="container-fluid">
    <nav class="navbar navbar-inverse" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <button id="switchNav" class="navbar-toggle" data-toggle="collapse"
                        data-target="#example-navbar-collapse">
                    <span class="sr-only">切换导航</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">AirSystem</a>
            </div>
            <div class="collapse navbar-collapse" id="example-navbar-collapse">
                <ul class="nav navbar-nav navbar-right" id="navshow">
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="col-lg-2">
            <div>
                <input type="button" id="btnQuery" value="航班查询" class="btn btn-primary btn-block" disabled="true"/>
                <br />
                <p>选择出发地、目的地和出发时间以进行航班班次查询。</p>
            </div>
            <div>
                <input type="button" id="btnBuy" value="机票购买" class="btn btn-primary btn-block"/>
                <br />
                <p>使用该功能需要登录。</p>
            </div>
            <div>
                <input type="button" id="btnNotice" value="公告" class="btn btn-primary btn-block" disabled="true" />
                <br />
                <p>本站 WEB 服务来源于：http://www.webxml.com.cn/</p>
            </div>
        </div>
        <div class="col-lg-10">
            <div class="panel panel-primary">
                <div class="panel-title">
                    <div style="text-align: center; font-size: 24px">首页</div>
                </div>
                <div class="panel-body" style="margin-top: 100px; margin-bottom: 250px">
                    <div class="col-lg-3">
                        <div class="input-group">
                            <span id="lblStartCity"  class="input-group-addon">出发地：</span>
                            <select id="selStartCity" class="form-control">
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="input-group">
                            <span id="lblLastCity" class="input-group-addon" >目的地：</span>
                            <select id="selLastCity" class="form-control">
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="input-group">
                            <span id="lblStartDate" class="input-group-addon">出发时间：</span>
                            <input type="text" id="dateTime" class="form-control" placeholder="请选择时间" aria-describedby="basic-addon1"></input>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <input type="button" id="btnSearch" value="搜索" class="btn btn-primary btn-block"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="footer" class="container">
        <nav class="navbar navbar-default navbar-fixed-bottom">
            <div class="navbar-inner navbar-content-center">
                <p class="text-muted credit" style="padding: 20px; text-align: center">
                    &#169;2020&nbsp;AirSystem&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    (无)-经营性-2015-0023
                </p>
            </div>
        </nav>
    </div>
</div>
</body>
</html>
