<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
 
    <title></title>
    <style type="text/css">
      body,html {
            font-family: pingfang sc light;
            
        }
    </style>
</head>
<body>
<!--第一页开始-->
<div class="page" style="padding-top:50px;">
			<div style="float:left;width:100%;height:95%;"><img  src="${p1_background}" style="height:100%;" /></div>
			<div style="width:200px;height:40px;float:left;padding-top:-800px;padding-left:100px;"><img  src="${p1_logo}" style="height:200px;width:200px;"/></div>
			<div style="width:600px;height:0px;float:left;padding-top:-700px;font-weight:800;font-size:36px;padding-left:100px;letter-spacing:2px;"><b>${reportName?default("")}</b><br/><b>团检健康白皮书</b></div>
			<div style="width:500px;height:0px;float:left;padding-top:-100px;padding-left:200px;">体检时间：${reportTime}</div>
</div>
<!---分页标记-->
<span style="page-break-after:always;"></span>
<!--基本概况开始-->
<div class="page" >
	<div>
		<div style="width:100%;height:100%;padding-left:50px;padding-top:50px;">
			    <div style="width: 60px; height: 60px;float:left;padding-top:10px;" >
                    <img src="${p2_router}" style="width:60px;height: 60px;" />
				</div>
			 
				<div style="color:brown;font-weight:bold; padding-left: 20px; float:left;"><div style="font-size:32px;font-weight:400;"><b>${staffTitle?default("")}</b></div><br/><div style="font-size:16px;color:orange;padding-top:-10px;">C O N D I T  I O N</div></div>
				 
		 
				<div style=" padding-top:30px;margin-bottom: 50px;">
                   
                        <div style="width: 36px;height:36px;float:left;"><img src="${p2_people}" style="width: 36px;height:36px;" /></div>
                        <div style="float:left;padding-top:2px;font-size:20px;color:brown;padding-left:15px;"><div style="font-size:20px;font-weight:400;"><b>${staffInfo.subTitle?default("")}</b></div></div>
                
                    <div class="desc" style="font-size:12px; font-weight:300;color:#7b7071;padding-left:40px;padding-top:20px;padding-bottom:20px;">
                       <p>员工总人数${staffInfo.totalStaffCounts?default("")}人，实际到检${staffInfo.haveReservedStaffCounts?default("")}人，到检率${staffInfo.examineeRate?default("")}% </p>
                       <p>到检员工中，男性员工${staffInfo.maleStaffCounts?default("")}人，女性员工${staffInfo.femaleStaffCounts?default("")}人，男女比例${staffInfo.sexRate?default("")}</p>
                       <p>员工年龄范围 ${staffInfo.minAge?default("")}-${staffInfo.maxAge?default("")} 岁 </p>
					   <p>${staffInfo.queryMinAge?default("")}-${staffInfo.queryMaxAge?default("")} 岁年龄组占比 ${staffInfo.queryRate?default("")}%</p>
                       <p>平均年龄约 ${staffInfo.avgAge?default("")} 岁</p> 
                    </div>
						<div style="width: 36px;height:36px;float:left;"><img src="${p2_area}" style="width: 36px;height:36px;" /></div>
						<div style="float:left;padding-top:2px;font-size:20px;color:brown;padding-left:15px;"><div style="font-size:20px;font-weight:400;"><b>${cityInfo.subTitle?default("地域分布")}</b></div></div>
					
                    <div class="desc" style="font-size:12px; font-weight:300;color:#7b7071;width:600px;padding-left:40px;padding-top:20px;padding-bottom:20px;">
						<#if cityDatas??>
							<#list cityDatas as city>
								<div style="width:150px;;float:left; padding-right:5px;">${city.cityName?default("")}</div>
								<div style="width:80px;;float:left; padding-right:5px;">${city.cityRate?default("")}%</div>
								
							</#list>
						</#if>
                    </div>
					
                </div>
				<img src="${p2_team}"style="width:710px;height:440px;padding-top:20px;" />
				
		</div>
	</div>
	
</div>
<!---分页标记-->
<span style="page-break-after:always;"></span>

<!--企业开始-->
<div  class="page" style="margin-top: 20px;">

    <div style="padding-left: 50px;">

		<div style="width: 60px; height: 60px;float:left;padding-top:10px;" >
			<img src="${p2_router}" style="width:60px;height: 60px;" />
		</div>

		<div style="color:brown;font-weight:bold; padding-left: 20px; float:left;"><div style="font-size:32px;font-weight:400;"><b>${featureTitle?default("")}</b></div><br/><div style="font-size:16px;color:orange;padding-top:-10px;">C H A R A C T E R I S T I C </div></div>
		 
	
    </div>
    <div style="width:550px;padding-left: 50px;padding-top:50px;">
		<#if featureDatas??>
			<#list featureDatas as feature>
				<#if feature_index %8 == 0>
					<div style="width: 36px;height:36px;float:left;"><img src="${f_1}" style="width: 36px;height:36px;" /></div>
				<#elseif feature_index %8 == 1>
					<div style="width: 36px;height:36px;float:left;"><img src="${f_2}" style="width: 36px;height:36px;" /></div>
				<#elseif feature_index %8 == 2>
					<div style="width: 36px;height:36px;float:left;"><img src="${f_3}" style="width: 36px;height:36px;" /></div>
				<#elseif feature_index %8 == 3>
					<div style="width: 36px;height:36px;float:left;"><img src="${f_4}" style="width: 36px;height:36px;" /></div>
				<#elseif feature_index %8 == 4>
					<div style="width: 36px;height:36px;float:left;"><img src="${f_5}" style="width: 36px;height:36px;" /></div>
				<#elseif feature_index %8 == 5>
					<div style="width: 36px;height:36px;float:left;"><img src="${f_6}" style="width: 36px;height:36px;" /></div>
				<#elseif feature_index %8 == 6>
					<div style="width: 36px;height:36px;float:left;"><img src="${f_7}" style="width: 36px;height:36px;" /></div>
				<#elseif feature_index %8 == 7>
					<div style="width: 36px;height:36px;float:left;"><img src="${f_8}" style="width: 36px;height:36px;" /></div>
				</#if>
				<div style="float:left;padding-top:2px;font-size:20px;color:brown;padding-left:10px;width:100%"><div style="font-size:20px;font-weight:400;"><b>${feature.subTitle?default("")}</b></div></div>
				<div style="clear:both"></div>
				<div style="font-size:12px; font-weight:300;color:#7b7071;padding-bottom:30px;width:100%">
					<p>${feature.conclusion}</p>
				</div>
			</#list>
		</#if>
    </div>
	<img src="${p3_team}"style="width:710px;height:440px;padding-top:20px;" />
</div>
<!--企业特点结束-->
<!---分页标记-->

<span style="page-break-after:always;"></span>
<!--异常指标开始-->
<div  class="page" style="padding-left:50px;padding-top:50px;" >
	
	<div style="padding-bottom:20px;">
		<div style="width: 300px;float:left;height:200px;">
			<div style="width: 60px;height: 60px;float:left"><img src="${p6_1}"  /></div>
			<div style="width: 180px;padding-left:60px;color:#77B7B6;font-size:30px;"><b>${index.title?default("")}</b></div>
		<div style="padding-left:20px;padding-top:10px;color:#CDE8E3;font-size:14px;padding-left:60px;">ABNORMALITIES</div>
		</div>
		<div  style="width: 300px;float:left;">
			<div style="width: 40px;height: 40px;float:left"><img src="${p6_4}"  /></div>
			 <div style="float:left;padding-top:2px;font-size:20px;color:#77B7B6;padding-left:10px;"><div style="font-size:20px;font-weight:400;"><b>${index.staffTitle?default("")}</b></div></div>
			 <div style="font-size:12px; font-weight:300;color:#7b7071;padding-bottom:30px;">
						<p>${index.staffConclusion?default("")}</p>
					</div>
		</div>
	</div>

	<div width="100%" style="background:#FAFDFC;padding-bottom:20px;padding-top:20px;">
			 <div style="width: 36px;height:36px;float:left;"><img src="${p6_2}" style="width: 36px;height:36px;" /></div>
		  <div style="float:left;padding-top:2px;font-size:20px;color:#77B7B6;padding-left:10px;"><div style="font-size:20px;font-weight:400;"><b>${index.topTitle?default("")}</b></div></div>
		 <!-- 遍历 -->
		<#if topIndex??>
			<#list topIndex as top>
				<!-- 判断  -->
				<div style="width:100%;padding-top:20px;">
					<div style="width:20%;float:left;padding-left:20px;">
						<#if top.sex == "1">
							<div style="float:left;width: 20px;height:20px;padding-top:-5px;"><img src="${p6_3}" style="width: 36px;height:36px;" /></div>
						<#elseif top.sex == "2">
							<div style="float:left;width: 20px;height:20px;padding-top:-5px;"><img src="${p6_5}" style="width: 36px;height:36px;" /></div>
						<#else>
							<div style="float:left;width: 20px;height:20px;padding-top:-5px;"></div>
						</#if>
							<div style="font-size:10px;color:#867C7D;padding-top:-4px;float:left;padding-right:10px;padding-left:5px;">${top.name?default("")}</div>
					</div>
					<#if top_index == 9>
						<div style="background:#D8ECE8;width:${top.width}px;height:8px;float:left;"></div><div style="float:left;font-size:10px;color:#77B7B6;padding-top:-4px;padding-left:10px;">${top.rate?default("")}%</div>
					</#if>
					<#if top_index == 8>
						<div style="background:#CDE8E3;width:${top.width}px;height:8px;float:left;"></div><div style="float:left;font-size:10px;color:#77B7B6;padding-top:-4px;padding-left:10px;">${top.rate?default("")}%</div>
					</#if>
					<#if top_index == 7>
						<div style="background:#CDE8E3;width:${top.width}px;height:8px;float:left;"></div><div style="float:left;font-size:10px;color:#77B7B6;padding-top:-4px;padding-left:10px;">${top.rate?default("")}%</div>
					</#if>
					<#if top_index == 6>
						<div style="background:#CDE8E3;width:${top.width}px;height:8px;float:left;"></div><div style="float:left;font-size:10px;color:#77B7B6;padding-top:-4px;padding-left:10px;">${top.rate?default("")}%</div>
					</#if>
					<#if top_index == 5>
						<div style="background:#9DD4D4;width:${top.width}px;height:8px;float:left;"></div><div style="float:left;font-size:10px;color:#77B7B6;padding-top:-4px;padding-left:10px;">${top.rate?default("")}%</div>
					</#if>
					<#if top_index == 4>
						<div style="background:#9DD4D4;width:${top.width}px;height:8px; float:left;"></div><div style="float:left;font-size:10px;color:#77B7B6;padding-top:-4px;padding-left:10px;">${top.rate?default("")}%</div>
					</#if>
					<#if top_index == 3>
						<div style="background:#9DD4D4;width:${top.width}px;height:8px; float:left;"></div><div style="float:left;font-size:10px;color:#77B7B6;padding-top:-4px;padding-left:10px;">${top.rate?default("")}%</div>
					</#if>
					<#if top_index == 2>
						<div style="background:#77B7B6;width:${top.width}px;height:8px; float:left;"></div><div style="float:left;font-size:10px;color:#77B7B6;padding-top:-4px;padding-left:10px;">${top.rate?default("")}%</div>
					</#if>
					<#if top_index == 1>
						<div style="background:#77B7B6;width:${top.width}px;height:8px; float:left;"></div><div style="float:left;font-size:10px;color:#77B7B6;padding-top:-4px;padding-left:10px;">${top.rate?default("")}%</div>
					</#if>
					<#if top_index = 0>
						<div style="background:#77B7B6;width:${top.width}px;height:8px; float:left;"></div><div style="float:left;font-size:10px;color:#77B7B6;padding-top:-4px;padding-left:10px;">${top.rate?default("")}%</div>
					</#if>
				</div>
				
			</#list>
		</#if>
	</div>

	  <div style="color:#77B7B6;font-size:16px;padding-bottom: 50px;padding-top:20px;">${index.topConclusion?default("")}</div>
	  <div style="width: 36px;height:36px;float:left;"><img src="${p5_1}" style="width: 36px;height:36px;" /></div>
	  <div style="float:left;padding-top:2px;font-size:20px;color:#77B7B6;padding-left:10px;"><div style="font-size:20px;font-weight:400;"><b>${index.indexAnalysisTitle?default("")}</b></div></div>
	  <div style="font-size:12px; font-weight:300;color:#7b7071;padding-bottom:30px;">
        <p>${index.indexAnalysisConclusion?default("")}</p>
	  </div>
		<#if (femaleData?? && maleData?? && ((femaleData?size > 0) || (maleData?size > 0)))>
			<div style="background:#FAFDFC;padding-bottom:20px;padding-top:50px;width:100%;">
			   <div style="padding-top:20px;text-align:center;color: #77B7B6;padding-left:130px;padding-bottom:40px;"><b>男性和女性体检人群检出率差异较大的异常指标</b></div>
				<div style="float:left;width:300px;padding-left:180px;">
					  <div style="width: 50px;height: 50px;"><img src="${p5_male}" style="width: 60px;height: 60px;" /></div>
					<div style="padding-left:-40px;">
						<div style="text-align:center;color: #77B7B6;font-size:12px;padding-top:20px;padding-bottom:10px;"><b>与女性相比异常倍数</b></div>
						<div style="width: 10px;height:10px;float:right;padding-right:30px;"><img src="${p5_arrow}" style="width: 10px;height:10px;float:left;"/></div>
						  <#if femaleData??>
							  <#list femaleData as fm>
								<div >
									<div style="width:100px;color: #7b7071;font-size:12px;padding-top:10px;float:left;padding-right:20px;">${fm.indexName?default("")}</div>
									<div style="width:40px;color: #7b7071;font-size:12px;padding-top:10px;float:left;">${fm.times?default("")}倍</div>
								</div>
							 </#list>
						  </#if>
					</div>
					 
				</div>
				<div style="float:left;width:300px;padding-left:100px;">
					 <div style="width: 50px;height: 50px;"><img src="${p5_female}" style="width: 60px;height: 60px;" /></div>
					<div style="padding-left:-40px;">
						<div style="text-align:center;color: #77B7B6;font-size:12px;padding-top:20px;padding-bottom:10px;"><b>与男性相比异常倍数</b></div>
						<div style="width: 10px;height:10px;float:right;padding-right:70px;"><img src="${p5_arrow}" style="width: 10px;height:10px;float:left;"/></div>
						<#if maleData??>
							 <#list maleData as ma>
								<div >
									<div style="width:100px;color: #7b7071;font-size:12px;padding-top:10px;float:left;padding-right:20px;">${ma.indexName?default("")}</div>
									<div style="width:40px;color: #7b7071;font-size:12px;padding-top:10px;float:left;">${ma.times?default("0")}倍</div>
								</div>
							 </#list>
						 </#if>
					</div>
					 
				</div>
			  
			</div> 
		</#if>
</div>
<span style="page-break-after:always;"></span>
<!--医生说开始-->
<div class="page" style="padding-left:50px;">
	<div style="width:100%;height:200px;">
		<img src="${doctor}" />
	</div>
	<div style="width:200px;height:100px;background: #fff;opacity:0.5;text-align:center;padding-top:10px;">
		<div style="color:#88A24A;font-size:40px;"><b>${analyses.title}</b></div>
		<div style="color:#88A24A;font-size:10px;">THE DOCTOR SAID</div>
	</div>
	<#if analysisDatas??>
		<#list analysisDatas as analysis>
			
			<div style="padding-bottom:30px;">
				<div style="color:#88A24A;font-size:20px;padding-bottom:20px;padding-left:10px;"><b>结论${analysis.conclusionRank?default("")}、${analysis.conclusion?default("")}</b></div>
				<div style="width: 36px;height:36px;float:left;"><img src="${p8_1}" style="width: 36px;height:36px;" /></div>
				<div style="float:left;padding-top:2px;font-size:20px;color:#88A24A;padding-left:10px;"><div style="font-size:20px;font-weight:400;"><b>数据分析</b></div></div>
				<div style="padding-top: 10px;">
						<#if analysis.barUrl??>
							<img src="${analysis.barUrl?default(" ")}" alt="散点图" width="600" height="300" />
						</#if>
			
				</div>
				<div style="color:#7B7071;font-size: 14px;padding-top: 10px;padding-bottom:10px;">${analysis.conclusionDesc?default("")}</div>
				<div style="color:#88A24A;font-size:20px;padding-top: 10px;padding-bottom:10px;"><b>${analysis.subTitle?default("")}</b></div>
				<div style="color: #91BB52;font-size: 16px;padding-top: 10px;padding-bottom:10px;">${analysis.explainTitle?default("")}</div>
				<div style="color: #7B7071;font-size: 14px;padding-top: 10px;padding-bottom:10px;">${analysis.explainDesc?default("")}</div>
				<div style="color: #91BB52;font-size: 16px;padding-top: 10px;padding-bottom:10px;">${analysis.attentionTitle?default("")}</div>
				<div style="color:#7B7071;font-size: 14px;padding-top: 10px;padding-bottom:20px;">  
				<#if analysis.attentions??>
					<#list analysis.attentions as att>
						${att}<br/>
					</#list>
				</#if>
				</div>
			</div>
		
		</#list>
	</#if>




</div>



<!-- 建议一，展示图片 -->
<span style="page-break-after:always;"></span>

<div class="page" style="padding-left:50px;padding-top:20px;">
	<div style="padding-bottom:20px;">
		<div style="width: 240px;float:left;height:150px;">
			<div style="width: 36px;height: 36px;float:left"><img src="${p9_1}"  /></div>
			<div style="width: 180px;padding-left:60px;color:#D68894;font-size:30px;padding-top:-10px;"><b>${adviceDatas.title}</b></div>
		<div style="padding-left:20px;padding-top:10px;color:#EEC6D0;font-size:14px;padding-left:60px;">SUGGESTION</div>
		</div>
		<div  style="width: 400px;float:left;padding-top:50px;padding-bottom:50px;">	
				<div style="width: 36px;height: 36px;float:left"><img src="${p9_2}"  /></div>
				<div style="float:left;padding-top:-6px;font-size:20px;color:#D68894;padding-left:20px;"><div style="font-size:20px;font-weight:400;letter-spacing:2px;"><b>${adviceDatas.defaultAdvice?default("")}</b></div></div>
			</div>
	</div>
	<div style="width:100%;"><img src="${adviceImage}" style="width:100%;" /></div>
</div>

<!-- 建议列表，展示图片 -->
<span style="page-break-after:always;"></span>

<div class="page" style="padding-left:50px;padding-top:20px;">
	<div style="padding-bottom:20px;">
		<div style="width: 240px;float:left;height:150px;">
			<div style="width: 36px;height: 36px;float:left"><img src="${p9_1}"  /></div>
			<div style="width: 180px;padding-left:60px;color:#D68894;font-size:30px;padding-top:-10px;"><b>${adviceDatas.title}</b></div>
		<div style="padding-left:20px;padding-top:10px;color:#EEC6D0;font-size:14px;padding-left:60px;">SUGGESTION</div>
		</div>
	
	
		<#if adviceDatas.advices??>
			<#list adviceDatas.advices as advices>
				<div  style="width: 400px;float:left;padding-top:50px;padding-bottom:50px;">	
					<div style="width: 36px;height: 36px;float:left"><img src="${p9_2}"  /></div>
					<div style="float:left;padding-top:-6px;font-size:20px;color:#D68894;padding-left:20px;"><div style="font-size:20px;font-weight:400;letter-spacing:2px;"><b>${advices.advice}</b></div></div>
				</div>
				<div width="100%">
					<table cellpadding="0" cellspacing="0" width="100%" cellpadding="10" >
						<tr>
							<th style="text-align: center;vertical-align: middle!important;background-color:#EAA6B7;color:#FFFFFF;font-size:12px;padding:10px;width:20%;">发病率</th>
							<th style="text-align: center;vertical-align: middle!important;background-color:#EEC6D0;color:#FFFFFF;font-size:12px;padding:10px;width:20%;">疾病名称</th>
							<th style="text-align: center;vertical-align: middle!important;background-color:#EAA6B7;color:#FFFFFF;font-size:12px;padding:10px;width:30%;">复查建议</th>
							<th style="text-align: center;vertical-align: middle!important;background-color:#EEC6D0;color:#FFFFFF;font-size:12px;padding:10px;width:30%;">就诊建议</th>
						</tr>
					<!-- 遍历 -->
					<#if advices.adviceDatas??>
						<#list advices.adviceDatas as ad>
							<!-- 判断  -->
							<#if ad_index % 2 == 0>
							<tr style="background:#F3D4DE;color:#495460;font-size:10px;">
							<#else>
							<tr style="background:#FCECF1;color:#495460;font-size:10px;">
							</#if>
								<!--显示条数  -->
								<td style="padding:8px;text-align: center;vertical-align: middle!important;">${ad.rank}</td>
								<td style="padding:8px;text-align: center;vertical-align: middle!important;">${ad.diseaseName}</td>
								<td style="padding:4px;text-align: center;vertical-align: middle!important;">${ad.reviewAdvice}</td>
								<td style="padding:4px;text-align: center;vertical-align: middle!important;">${ad.doctorAdvice}</td>
							</tr>
						</#list>
					</#if>
					</table>
				</div>
			</#list>
		</#if>
	</div>
</div>

</body>
</html>