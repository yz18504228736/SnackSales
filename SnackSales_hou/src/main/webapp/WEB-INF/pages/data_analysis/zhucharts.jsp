<%@ page pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="pageHeader">
    <!-- 引入 echarts.js -->
    <script src="../js/echarts.js"></script>
</div>
<div class="pageContent">
    <div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));
        var dataAxis=new Array();
        var data=new Array();
        <c:forEach items="${typeNumList}" var="typeNum">
        dataAxis.push('${typeNum.typeName}');
//        var dataAxis = ['点', '击', '柱', '子', '或', '者', '两', '指', '在', '触', '屏', '上', '滑', '动', '能', '够', '自', '动', '缩', '放'];
        data.push(${typeNum.sellNum});
//        var data = [220, 182, 191, 234, 290, 330, 310, 123, 442, 321, 90, 149, 210, 122, 133, 334, 198, 123, 125, 220];
        </c:forEach>
        var yMax = ${max};
        var dataShadow = [];

        for (var i = 0; i < data.length; i++) {
            dataShadow.push(yMax);
        }
        // 指定图表的配置项和数据
        var option = {
            title: {
                text: '销量分析',
                subtext: ''
            },
            xAxis: {
                data: dataAxis,
                axisLabel: {
                    inside: true,
                    textStyle: {
                        color: '#fff'
                    }
                },
                axisTick: {
                    show: false
                },
                axisLine: {
                    show: false
                },
                z: 10
            },
            yAxis: {
                axisLine: {
                    show: false
                },
                axisTick: {
                    show: false
                },
                axisLabel: {
                    textStyle: {
                        color: '#999'
                    }
                }
            },
            dataZoom: [
                {
                    type: 'inside'
                }
            ],
            series: [
                { // For shadow
                    type: 'bar',
                    itemStyle: {
                        normal: {color: 'rgba(0,0,0,0.05)'}
                    },
                    barGap:'-100%',
                    barCategoryGap:'40%',
                    data: dataShadow,
                    animation: false
                },
                {
                    type: 'bar',
                    itemStyle: {
                        normal: {
                            color: new echarts.graphic.LinearGradient(
                                0, 0, 0, 1,
                                [
                                    {offset: 0, color: '#83bff6'},
                                    {offset: 0.5, color: '#188df0'},
                                    {offset: 1, color: '#188df0'}
                                ]
                            )
                        },
                        emphasis: {
                            color: new echarts.graphic.LinearGradient(
                                0, 0, 0, 1,
                                [
                                    {offset: 0, color: '#2378f7'},
                                    {offset: 0.7, color: '#2378f7'},
                                    {offset: 1, color: '#83bff6'}
                                ]
                            )
                        }
                    },
                    data: data
                }
            ]
        };

        // Enable data zoom when user click bar.
        var zoomSize = 6;
        myChart.on('click', function (params) {
            console.log(dataAxis[Math.max(params.dataIndex - zoomSize / 2, 0)]);
            myChart.dispatchAction({
                type: 'dataZoom',
                startValue: dataAxis[Math.max(params.dataIndex - zoomSize / 2, 0)],
                endValue: dataAxis[Math.min(params.dataIndex + zoomSize / 2, data.length - 1)]
            });
        });

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
</div>
