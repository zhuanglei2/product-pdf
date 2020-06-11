package pdf.kit;

import com.google.common.collect.Lists;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.exception.ExceptionUtils;
import pdf.kit.component.PDFHeaderFooter;
import pdf.kit.component.PDFKit;
import pdf.kit.component.chart.BarChart;
import pdf.kit.component.chart.ScatterPlotChart;
import pdf.kit.component.chart.model.XYLine;
import pdf.kit.component.chart.impl.DefaultLineChart;

import java.io.IOException;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by fgm on 2017/4/17.
 * 360报告
 *
 */
@Slf4j
public class ReportKit360 {


    public  String createPDF(String templatePath,Object data, String fileName){
        //pdf保存路径
        try {
            //设置自定义PDF页眉页脚工具类
            PDFHeaderFooter headerFooter=new PDFHeaderFooter();
            PDFKit kit=new PDFKit();
            kit.setHeaderFooterBuilder(headerFooter);
            //设置输出路径
            kit.setSaveFilePath("E:\\"+fileName);

            String saveFilePath=kit.exportToFile(fileName,data);
            return  saveFilePath;
        } catch (Exception e) {
            log.error("PDF生成失败{}", ExceptionUtils.getFullStackTrace(e));
            return null;
        }

    }

    public static void main(String[] args) throws IOException {

        ReportKit360 kit=new ReportKit360();
        TemplateBO templateBO=new TemplateBO();
        templateBO.setTemplateName("Hello iText! Hello freemarker! Hello jFreeChart!");
        templateBO.setFreeMarkerUrl("http://www.zheng-hang.com/chm/freemarker2_3_24/ref_directive_if.html");
        templateBO.setITEXTUrl("http://developers.itextpdf.com/examples-itext5");
        templateBO.setJFreeChartUrl("http://www.yiibai.com/jfreechart/jfreechart_referenced_apis.html");
        templateBO.setImageUrl("http://mss.vip.sankuai.com/v1/mss_74e5b6ab17f44f799a524fa86b6faebf/360report/logo_1.png");



        BarChart barChart1 = new BarChart();
        String barUrl = barChart1.draw("不同年龄段乳腺增生检出率和检出人数",1);
//        String invertBarUrl = barChart2.draw("TOP10异常指标检出率",1);
        templateBO.setBarUrl(barUrl);
//        templateBO.setInvertBarUrl(invertBarUrl);
        String templatePath="/Users/fgm/workspaces/fix/pdf-kit/src/test/resources/templates";
        String path= kit.createPDF(templatePath,templateBO,"hello.pdf");
        System.out.println(path);



    }


    /**
     * 当初业务层封装的绘制PDF的数据封装，模版采用resources/../simple.ftl,业务测试数据生成的pdf为resources/../模版的pdf
     */
//    public String createAndSavePdf(String fileName, String reportPdfPath, TeamExamReportRecordDo recordDo, TeamExamReportConfigDo config,
//                                   TeamExamStaffInfosRespDto staff, TeamExamIndexRespDto index, TeamExamFeatureRespDto feature, TeamExamAnalysisRespDto analyses, TeamExamAdviceRespDto advice) {
//        TeamExamReportKit kit = new TeamExamReportKit();
//        Map<String, Object> data = new HashMap<String, Object>();
//        SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
//        String reportName = recordDo.getReportName();
//        String reportTime = sdf.format(recordDo.getStartTime())+" - "+sdf.format(recordDo.getEndTime());
//
//        data.put("reportName",reportName);//团检报告名称
//        data.put("reportTime",reportTime);//团检时间
//        data.put("p1_background",uploadTeamExamPath+config.getBackgroundImagePath());
//        data.put("p1_logo",uploadTeamExamPath+config.getCompanyLogoPath());
//        String imgTempPath = uploadTeamExamPath+teamExamTemplatePath;
//        data.put("p2_router",imgTempPath+"p2_router.png");
//        data.put("p2_people",imgTempPath+"p2_people.png");
//        data.put("p2_area",imgTempPath+"p2_area.png");
//        data.put("p2_team",imgTempPath+"p2_team.png");
//        data.put("f_1",imgTempPath+"f_1.png");
//        data.put("f_2",imgTempPath+"f_2.png");
//        data.put("f_3",imgTempPath+"f_3.png");
//        data.put("f_4",imgTempPath+"f_4.png");
//        data.put("f_5",imgTempPath+"f_5.png");
//        data.put("f_6",imgTempPath+"f_6.png");
//        data.put("f_7",imgTempPath+"f_7.png");
//        data.put("f_8",imgTempPath+"f_8.png");
//        data.put("p3_team",imgTempPath+"p3_team.png");
//        data.put("p5_1",imgTempPath+"p5_1.png");
//        data.put("p5_arrow",imgTempPath+"p5_arrow.png");
//        data.put("p5_female",imgTempPath+"p5_female.png");
//        data.put("p5_male",imgTempPath+"p5_male.png");
//        data.put("p6_1",imgTempPath+"p6_1.png");
//        data.put("p6_2",imgTempPath+"p6_2.png");
//        data.put("p6_3",imgTempPath+"p6_3.png");
//        data.put("p6_4",imgTempPath+"p6_4.png");
//        data.put("p6_5",imgTempPath+"p6_5.png");
//        data.put("doctor",imgTempPath+"doctor.png");
//        data.put("p8_1",imgTempPath+"p8_1.png");
//        data.put("p9_1",imgTempPath+"p9_1.png");
//        data.put("p9_2",imgTempPath+"p9_2.png");
//        data.put("adviceImage",imgTempPath+"advice.png");
//        data.put("p5_arrow",imgTempPath+"p5_arrow.png");
//
//        /*员工概要数据封装开始*/
//        data.put("staffTitle",staff.getTitle());
//        data.put("staffInfo",staff.getStaffInfos());
//        data.put("cityInfo",staff.getCityInfo());
//        data.put("cityDatas",staff.getCityInfo().getCitys());
//        /*员工概要数据封装完毕*/
//
//        /*企业特点数据封装开始*/
//        data.put("featureTitle",feature.getTitle());
//        data.put("featureDatas",feature.getFeatures());
//        /*企业特点数据封装完毕*/
//
//        /*异常指标数据封装开始*/
//        /*比例尺长度*/
//        int width = 400;
//
//        if(!CollectionUtils.isEmpty(index.getTopIndexs())){
//            for (int i = 0; i < index.getTopIndexs().size(); i++) {
//                TopIndex topIndex = index.getTopIndexs().get(i);
//                topIndex.setWidth(new BigDecimal(topIndex.getRate()).divide(new BigDecimal(100),2,BigDecimal.ROUND_HALF_UP).multiply(new BigDecimal(width)).toString());
//            }
//        }
//        data.put("topIndex",index.getTopIndexs());
//        data.put("index",index);
//        data.put("femaleData",index.getFemaleData());
//        data.put("maleData",index.getMaleData());
//        /*异常指标数据封装结束*/
//
//        data.put("analyses",analyses);
//        if(!CollectionUtils.isEmpty(analyses.getAnalyses())){
//            for (int i = 0; i < analyses.getAnalyses().size(); i++) {
//                TeamExamAnalysisRespDto.Analysis analysis = analyses.getAnalyses().get(i);
//                analysis.setConclusionRank(int2chineseNum(i+1));
//            }
//        }
//        data.put("analysisDatas",analyses.getAnalyses());
//        /*医生说数据封装结束*/
//
//        /*体检建议数据封装开始*/
//        if(!CollectionUtils.isEmpty(advice.getAdvices())){
//            for (int j = 0; j < advice.getAdvices().size(); j++) {
//                TeamExamAdviceRespDto.Advice tmpAdvice = advice.getAdvices().get(j);
//                if(!CollectionUtils.isEmpty(tmpAdvice.getAdviceDatas())){
//                    for (int k = 0;k<tmpAdvice.getAdviceDatas().size();k++){
//                        TeamExamAdviceRespDto.AdviceData adviceData= tmpAdvice.getAdviceDatas().get(k);
//                        adviceData.setRank("NO."+String.format("%02d",k+1));
//                    }
//                }
//            }
//        }
//        data.put("adviceDatas",advice);
//        /*体检建议数据封装开始*/
//
//        String templatePath=uploadTeamExamPath+config.getReportTemplatePath();
//        String fontsPath = uploadTeamExamPath+teamExamFontsPath;
//
//        String path= kit.createPDF(reportPdfPath,fontsPath,templatePath,data,fileName);
//        log.info("PDF文件路径path:{}",path);
//        return path;
//    }



}
