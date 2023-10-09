import 'package:eboss/Interfaces/HomePage/ChartDetail.dart';
import 'package:eboss/Interfaces/HomePage/GeneralChart.dart';
import 'package:eboss/Widget/ChartWidget/ChartData.dart';
import 'package:eboss/Widget/General/CustomButton.dart';
import 'package:eboss/Widget/General/license.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Color.fromRGBO(29, 65, 127, 1),
              ),
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 8),
                    Text('Tổng quan hệ thống'),
                  ],
                ),
                actions: [
                  IconButton(
                    icon: Icon(Icons.notifications),
                    onPressed: () {},
                  ),
                  SizedBox(width: 5),
                  IconButton(
                    icon: Icon(Icons.logout),
                    onPressed: () {},
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
            // AppBar

            SizedBox(
              height: 20,
            ),
            // TabBar
            Container(
              color: Colors.transparent,
              // width: MediaQuery.of(context).size.width / 1.5,
              child: TabBar(
                labelColor: Color.fromRGBO(29, 65, 127, 1),
                unselectedLabelColor: Colors.grey,
                indicatorColor: Color.fromRGBO(29, 65, 127, 1),
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 2,
                tabs: [
                  Tab(text: "Tổng quan"),
                  Tab(text: "Chi tiết"),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [GeneralChart(), ChartDetail()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
