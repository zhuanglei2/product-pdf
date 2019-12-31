<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="Content-Style-Type" content="text/css"/>
    <title></title>
    <style type="text/css">
        body {
            font-family: pingfang sc light;
        }
        .center{
            text-align: center;
            width: 100%;
        }
    </style>
</head>
<body>
<!--第一页开始-->
<div class="page" >

    <div class="center"><p>基本概况</p></div>
    <div><p>参检员工信息</p></div>
    <div>
        <p>员工总人数290人,实际到检人数268,到检率79%</p>
        <p>到检员工中,男性员工88人,女性员工139人,男女比例0.63:1</p>
        <p>员工年龄范围25-60岁</p>
        <p>30-39岁年龄组占比63.45%</p>
        <p>平均年龄35.98岁</p>
    </div>
    <div>
        <p>地域分布：大部分位于上海</p>
        <p>上海 92.58% 广东 0.71%</p>
        <p>陕西 4.24% 北京 0.35%</p>
        <p>浙江 1.06% 湖北 0.35%</p>
        <p>山东 0.71%</p>
    </div>
    <div>
        <p>企业特点</p>
        <p>XXXXX病</p>
        <p>XXXXX病</p>
        <p>XXXXX病</p>
    </div>
    <div>
        图片
    </div>
    <div>
        <p>年度异常指标</p>
        <p>员工整体健康状况</p>
        <p>TOP异常指标检出率</p>
        <p>与女性相比异常率倍数   与男性相比异常率倍数</p>
    </div>
    <div>
        图片
    </div>

    <div>
        <p>医生说</p>
        <p>结论一</p>
        <div>
            <#if barUrl??>
                <img src="${barUrl?default(" ")}" alt="散点图" width="600" height="400"/>
            </#if>

        </div>

        <p>医学解析标题</p>
        <p>医学解析</p>
        <p>结论二</p>
        <div>
            <#if barUrl??>
                <img src="${barUrl?default(" ")}" alt="散点图" width="600" height="400"/>
            </#if>

        </div>
        <p>医学解析标题</p>
        <p>医学解析</p>
        <p>结论三</p>
        <div>
            <#if barUrl??>
                <img src="${barUrl?default(" ")}" alt="散点图" width="600" height="400"/>
            </#if>

        </div>
        <p>医学解析标题</p>
        <p>医学解析</p>
    </div>
    <div>
        图片
    </div>
    <div>
        <p>健康体检建议</p>

    </div>
    <div>
        图片
    </div>

</div>
<!--第一页结束-->
<!---分页标记-->
<span style="page-break-after:always;"></span>
<!--第二页开始-->
<div class="page">
    <div>第二页开始了</div>
    <div>列表值:</div>
    <div>
    <#--<#list scores as item>-->
        <#--<div><p>${item}</p></div>-->
    <#--</#list>-->
    </div>

</div>


<!--第二页结束-->
</body>
</html>