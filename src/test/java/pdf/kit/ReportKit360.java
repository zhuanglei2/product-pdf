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
import java.util.ArrayList;
import java.util.List;

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






}
