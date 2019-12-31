package pdf.kit.component.chart;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.CategoryAxis;
import org.jfree.chart.axis.NumberAxis;
import org.jfree.chart.block.BlockBorder;
import org.jfree.chart.labels.*;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.plot.XYPlot;
import org.jfree.chart.renderer.category.BarRenderer;
import org.jfree.chart.renderer.category.LineAndShapeRenderer;
import org.jfree.chart.renderer.xy.XYItemRenderer;
import org.jfree.chart.renderer.xy.XYLineAndShapeRenderer;
import org.jfree.data.category.CategoryDataset;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.ui.ApplicationFrame;
import org.jfree.ui.RectangleEdge;
import org.jfree.ui.TextAnchor;
import pdf.kit.util.FontUtil;

import java.awt.*;
import java.awt.geom.Arc2D;
import java.awt.geom.Area;
import java.awt.geom.RoundRectangle2D;
import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.NumberFormat;

/**
 * @author zhuangl
 * @version 1.0
 * @date 2019/12/16 9:58
 */
public class BarChart {


    public String draw(String charTitle, int picId) throws IOException {
        return drawBarChar(charTitle,createDataset(),picId);
    }
    private static DefaultCategoryDataset  createDataset()
    {
        final String fiat = "参检人数";
        final String audi = "检出人数";
        final String a1 = "20-29岁";
        final String a2 = "30-39岁";
        final String a3 = "40-49岁";
        final String a4 = "50-59岁";
        final DefaultCategoryDataset   dataset =
                new DefaultCategoryDataset  ( );

        dataset.addValue( 1000.0 , fiat , a1 );
        dataset.addValue( 4000.0 , fiat , a2 );
        dataset.addValue( 1300.0 , fiat , a3 );
        dataset.addValue( 1004.0 , fiat , a4 );

        dataset.addValue( 800.0 , audi , a1 );
        dataset.addValue( 610 , audi , a2 );
        dataset.addValue( 130.0 , audi , a3 );
        dataset.addValue( 400.0 , audi , a4 );


        return dataset;
    }


    /**
     * @description 画出折线图
     * @return 图片地址
     */
    public  String drawBarChar(String chartTitle, DefaultCategoryDataset  dataSet, int picId)
            throws IOException {
        JFreeChart barChart= ChartFactory.createBarChart(
                chartTitle,
                "",
                "",
                dataSet,
                PlotOrientation.VERTICAL,
                true, true, false
        );
        String path=this.getClass().getClassLoader().getResource("").getPath();
        String filePath=path+"/images/"+picId+"/"+"barName.png";
        File lineChart = new File(filePath);
        if(!lineChart.getParentFile().exists()){
            lineChart.getParentFile().mkdirs();
        }
        //初始化表格样式
        initDefaultPlot(barChart,dataSet);

        ChartUtilities.saveChartAsJPEG(lineChart ,barChart, 700 ,385);

        return lineChart.getAbsolutePath();

    }


    private void  initDefaultPlot(JFreeChart chart, DefaultCategoryDataset dataSet){
        //设置公共颜色
        chart.getTitle().setFont(new Font("宋体", Font.BOLD, 22)); // 设置标题字体
        chart.getTitle().setPaint(new Color(136,162,74)); // 设置标题字体
        chart.getTitle().setMargin(10,0,10,0);
        chart.setBackgroundPaint(new Color(252,253,250));// 设置背景色
        chart.getRenderingHints().put(RenderingHints.KEY_TEXT_ANTIALIASING,RenderingHints.VALUE_TEXT_ANTIALIAS_OFF);
        chart.getLegend().setPosition(RectangleEdge.RIGHT);//图示在图表中的显示位置，文字居右显示
        chart.getLegend().setItemFont(new Font("宋体", Font.PLAIN, 13));//图示文字
        chart.getLegend().setItemPaint(new Color(123,112,113));
        chart.getLegend().setBorder(BlockBorder.NONE);
//        chart.setAntiAlias(false);//必须设置文本抗锯齿为false,防止乱码
        CategoryPlot plot = chart.getCategoryPlot();
        plot.setNoDataMessage("无对应的数据。");
        plot.setNoDataMessageFont(FontUtil.getFont(Font.PLAIN, 15));//字体的大小
        plot.setNoDataMessagePaint(Color.RED);//字体颜色
        //设置自定义颜色
        initPlot(chart,dataSet);

    }

    protected void initPlot(JFreeChart chart, DefaultCategoryDataset dataSet) {

        CategoryPlot plot = chart.getCategoryPlot();
        //设置节点的值显示
        plot.getRenderer().setSeriesPaint(0, new Color(136,162,74));
        plot.getRenderer().setSeriesPaint(1, new Color(200,219,127));
        plot.getRenderer(0).setItemLabelFont(new Font("宋体", Font.PLAIN, 14));
        plot.getRenderer(0).setSeriesOutlinePaint(0, new Color(136,162,74));
        plot.getRenderer(0).setSeriesOutlinePaint(1, new Color(200,219,127));
        plot.getRenderer(0).setSeriesOutlinePaint(2, new Color(225,220,158));
        plot.getRangeAxis().setUpperMargin(0.2);
        plot.getRangeAxis().setLowerMargin(0.1);
        plot.getRenderer(0).setBaseItemLabelGenerator(new StandardCategoryItemLabelGenerator());
        plot.getRenderer(0).setBaseItemLabelsVisible(true);

        DefaultCategoryDataset lineData = new DefaultCategoryDataset();
        String title ="检出率100%";
        final String a1 = "20-29岁";
        final String a2 = "30-39岁";
        final String a3 = "40-49岁";
        final String a4 = "50-59岁";
        lineData.addValue(0.10,title,a1);
        lineData.addValue(0.4,title,a2);
        lineData.addValue(11.0,title,a3);
        lineData.addValue(100.0,title,a4);

        BarRenderer render = (BarRenderer) plot.getRenderer(0);
        render.setMaximumBarWidth(0.04);

        NumberAxis axis1 = new NumberAxis("Second Axis");
        // -- 修改第2个Y轴的显示效果
        axis1.setAxisLinePaint(Color.BLUE);
        axis1.setLabelPaint(Color.BLUE);
        axis1.setTickLabelPaint(Color.BLUE);
        axis1.setUpperMargin(0.1);
        axis1.setVisible(false);
        plot.setRangeAxis(1, axis1);
        DecimalFormat df = new DecimalFormat("0.00%");
        axis1.setNumberFormatOverride(df); // 数据轴数据标签的显示格式

        plot.mapDatasetToRangeAxis(1, 1);
        plot.setDataset(1,lineData);
        LineAndShapeRenderer lineandshaperenderer = new LineAndShapeRenderer();
        lineandshaperenderer.setToolTipGenerator(new StandardCategoryToolTipGenerator());
        lineandshaperenderer.setSeriesPaint(0 , new Color(136,162,74));
        lineandshaperenderer.setItemLabelFont(new Font("宋体", Font.PLAIN, 14));// 设置数字的字体大小
        lineandshaperenderer.setItemLabelPaint(new Color(123,112,113));
        lineandshaperenderer.setItemLabelsVisible(true);
        lineandshaperenderer.setItemLabelAnchorOffset(2D);

        NumberAxis numberAxis = (NumberAxis) plot.getRangeAxis();
        plot.setRangeAxis(numberAxis);
        lineandshaperenderer.setBaseItemLabelGenerator(new StandardCategoryItemLabelGenerator());
        lineandshaperenderer.setBaseItemLabelsVisible(true);
        plot.setRenderer(1, lineandshaperenderer);
        plot.getRenderer(0).setItemLabelPaint(new Color(123,112,113));

        plot.setRangeGridlinePaint(new Color(237,241,224));
        plot.setOutlinePaint(new Color(237,241,224));

        /*网格实线*/
        plot.setDomainGridlineStroke(new BasicStroke());
        plot.setRangeGridlineStroke(new BasicStroke());


        CategoryAxis domainAxis = plot.getDomainAxis();
        domainAxis.setTickLabelFont(new Font("宋体",Font.PLAIN,13));
        domainAxis.setTickLabelPaint(new Color(136,162,74));
        NumberAxis numAxis = (NumberAxis)plot.getRangeAxis();
        numAxis.setUpperMargin(0.2);
        numAxis.setVisible(false);//Y轴不可见
    }
}
