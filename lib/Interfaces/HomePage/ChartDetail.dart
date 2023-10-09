import 'package:eboss/Widget/ChartWidget/ChartDetailWidget.dart';
import 'package:flutter/material.dart';
import 'package:eboss/Widget/ChartWidget/ChartData.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ChartDetailWidget(
                title: 'Doanh thu',
                color: Color.fromRGBO(108, 229, 232, 1),
                groupName: "Doanh thu",
              ),
              ChartDetailWidget(
                title: 'Chi Phí',
                color: Color.fromRGBO(65, 184, 213, 1),
                groupName: "Chi Phí",
              ),
              ChartDetailWidget(
                title: 'Lợi nhuận',
                color: Color.fromRGBO(45, 139, 186, 1),
                groupName: "Lợi nhuận",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

