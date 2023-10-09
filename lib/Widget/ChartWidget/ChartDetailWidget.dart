import 'package:eboss/Widget/ChartWidget/ChartData.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartDetailWidget extends StatelessWidget {
  final String title;
  final Color color;
  final String groupName;

  ChartDetailWidget({required this.title, required this.color, required this.groupName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        title: ChartTitle(text: title),
        series: <ColumnSeries<ChartData, String>>[
          ColumnSeries(
            color: color,
            dataSource: chartData
                .where((data) => data.groupName == groupName)
                .toList(),
            xValueMapper: (ChartData ch, _) => ch.year,
            yValueMapper: (ChartData ch, _) => ch.value,
            name: groupName,
          ),
        ],
      ),
    );
  }
}
