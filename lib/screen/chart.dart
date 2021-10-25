import 'dart:async';

import 'package:crypto_ui/theme.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class ChartLinee extends StatefulWidget {
  const ChartLinee({Key? key}) : super(key: key);

  @override
  _ChartLineeState createState() => _ChartLineeState();
}

final RoundedLoadingButtonController _btnController1 =
    RoundedLoadingButtonController();

void _doSomething(RoundedLoadingButtonController controller) async {
  Timer(Duration(seconds: 7), () {
    controller.success();
  });
}

@override
void initState() {
  //Super.initState();
  _btnController1.stateStream.listen((value) {
    print(value);
  });
}

@override
class _ChartLineeState extends State<ChartLinee> {
  int selectedIndex = 0;

  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 35),
    _SalesData('May', 28),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010242),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff010242),
            Color(0xff041D7E),
          ],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Image.asset(
              'assets/Bitcoin.png',
              width: 55,
            ),
            Center(
              child: Text(
                "Bitcoin",
                style:
                    regularTextStyle.copyWith(fontSize: 18, color: whiteColor),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "\$298.981,32",
                style: boltwhiteTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " +24%",
                    style: boltwhiteTextStyle.copyWith(
                      fontSize: 16,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                //Initialize the spark charts widget
                child: SfSparkLineChart.custom(
                  //Enable the trackball
                  trackball: SparkChartTrackball(
                      activationMode: SparkChartActivationMode.tap),
                  //Enable marker
                  marker: SparkChartMarker(
                      displayMode: SparkChartMarkerDisplayMode.all),
                  //Enable data label
                  labelDisplayMode: SparkChartLabelDisplayMode.all,
                  xValueMapper: (int index) => data[index].year,
                  yValueMapper: (int index) => data[index].sales,
                  dataCount: 5,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Row(
                children: [
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.orange,
                    textColor: Colors.white,
                    child: Icon(
                      Icons.bar_chart,
                      size: 24,
                    ),
                    padding: EdgeInsets.all(16),
                    shape: CircleBorder(),
                  ),
                  Container(
                    height: 50.0,
                    width: 140,
                    child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xffFF00CC), Color(0xff333399)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/p1.png',
                                  width: 45,
                                ),
                                Text(
                                  "  Send",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 50.0,
                    width: 140,
                    child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xffEE0979), Color(0xffFF6A00)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/p2.png',
                                  width: 44,
                                ),
                                Text(
                                  "  Receive",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Color(0xff041D7E),
          selectedItemBorderColor: Colors.transparent,
          selectedItemBackgroundColor: Colors.green,
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Colors.white,
          showSelectedItemShadow: false,
          barHeight: 70,
        ),
        selectedIndex: selectedIndex,
        onSelectTab: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.account_balance_wallet,
            label: 'Wallet',
            selectedBackgroundColor: Color(0xff00F5A0),
          ),
          FFNavigationBarItem(
            iconData: Icons.add_chart,
            label: 'Market',
            selectedBackgroundColor: Color(0xff00F5A0),
          ),
          FFNavigationBarItem(
            iconData: Icons.account_box,
            label: 'Profile',
            selectedBackgroundColor: Color(0xff00F5A0),
          ),
        ],
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
