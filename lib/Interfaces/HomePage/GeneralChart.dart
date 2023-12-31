import 'package:eboss/Interfaces/HomePage/Dashboard.dart';
import 'package:eboss/Widget/General/CustomButton.dart';
import 'package:eboss/Widget/General/license.dart';
import 'package:flutter/material.dart';
import 'package:eboss/Widget/ChartWidget/ChartData.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GeneralChart extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLegendBox(Color.fromRGBO(108, 229, 232, 1), "Doanh thu"),
              SizedBox(
                width: 30,
              ),
              _buildLegendBox(Color.fromRGBO(65, 184, 213, 1), "Chi Phí"),
              SizedBox(
                width: 30,
              ),
              _buildLegendBox(Color.fromRGBO(45, 139, 186, 1), "Lợi nhuận"),
            ],
          ),
          SizedBox(height: 20),
          Container(
            height: MediaQuery.of(context).size.height * 0.5, // chiều cao biểu đổ
            child: SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              primaryYAxis: NumericAxis(),
              series: <ColumnSeries<ChartData, String>>[
                ColumnSeries(
                  color: Color.fromRGBO(108, 229, 232, 1),
                  dataSource: chartData
                      .where((data) => data.groupName == "Doanh thu")
                      .toList(),
                  xValueMapper: (ChartData ch, _) => ch.year,
                  yValueMapper: (ChartData ch, _) => ch.value,
                  name: "Doanh thu",
                ),
                ColumnSeries(
                  color: Color.fromRGBO(65, 184, 213, 1),
                  dataSource: chartData
                      .where((data) => data.groupName == "Chi Phí")
                      .toList(),
                  xValueMapper: (ChartData ch, _) => ch.year,
                  yValueMapper: (ChartData ch, _) => ch.value,
                  name: "Chi Phí",
                ),
                ColumnSeries(
                  color: Color.fromRGBO(45, 139, 186, 1),
                  dataSource: chartData
                      .where((data) => data.groupName == "Lợi nhuận")
                      .toList(),
                  xValueMapper: (ChartData ch, _) => ch.year,
                  yValueMapper: (ChartData ch, _) => ch.value,
                  name: "Lợi nhuận",
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * (9 / 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    color: Color.fromRGBO(29, 65, 127, 1),
                    height: 32,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'DUYỆT',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(29, 65, 127, 1),
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Color.fromRGBO(29, 65, 127, 1),
                    height: 32,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Column(
              children: [
                CustomButton(
                  label: "Duyệt đơn xin nghỉ phép",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Dashboard(),
                        ));
                  },
                  backgroundColor: Color.fromRGBO(29, 65, 127, 1),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  label: "Duyệt ĐNTU - TT",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Dashboard(),
                        ));
                  },
                  backgroundColor: Color.fromRGBO(29, 65, 127, 1),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  label: "Duyệt quyết toán tạm ứng",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Dashboard(),
                        ));
                  },
                  backgroundColor: Color.fromRGBO(29, 65, 127, 1),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          License(textColor: Colors.black),
        ],
      ),
    ));
  }
}

Widget _buildLegendBox(Color color, String text) {
  return Row(
    children: [
      Container(
        width: 10,
        height: 10,
        color: color,
      ),
      SizedBox(
        height: 5,
        width: 10,
      ),
      Text(text, style: TextStyle(fontSize: 12))
    ],
  );
}
