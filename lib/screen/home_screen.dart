import 'package:crypto_ui/screen/chart.dart';
import 'package:crypto_ui/theme.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              height: 20,
            ),
            Center(
              child: Text(
                "Balance Portfolio",
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
                    "past week",
                    style: regularTextStyle.copyWith(
                        fontSize: 16, color: whiteColor),
                  ),
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
              height: 20,
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
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChartLinee()));
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xffE65C00),
                          Color(0xffF9D423),
                        ],
                      )),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Bitcoin.png',
                          width: 55,
                        ),
                        Text(
                          "   \$61,132.12",
                          style: mediaumTextStyle.copyWith(
                              fontSize: 22, color: whiteColor),
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/up.png',
                          width: 18,
                        ),
                        Text(
                          "    +8.13%",
                          style: boltwhiteTextStyle.copyWith(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xff2B32B2),
                        Color(0xff1488CC),
                      ],
                    )),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/Dogecoin.png',
                        width: 55,
                      ),
                      Text(
                        "   \$61,132.12",
                        style: mediaumTextStyle.copyWith(
                            fontSize: 22, color: whiteColor),
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/up.png',
                        width: 18,
                      ),
                      Text(
                        "    +8.13%",
                        style: boltwhiteTextStyle.copyWith(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xff753A88),
                        Color(0xffCC2B5E),
                      ],
                    )),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/eth.png',
                        width: 55,
                      ),
                      Text(
                        "   \$61,132.12",
                        style: mediaumTextStyle.copyWith(
                            fontSize: 22, color: whiteColor),
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/up.png',
                        width: 18,
                      ),
                      Text(
                        "    +8.13%",
                        style: boltwhiteTextStyle.copyWith(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xff2193B0),
                        Color(0xff6DD5ED),
                      ],
                    )),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/Monero.png',
                        width: 55,
                      ),
                      Text(
                        "   \$61,132.12",
                        style: mediaumTextStyle.copyWith(
                            fontSize: 22, color: whiteColor),
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/dw.png',
                        width: 18,
                      ),
                      Text(
                        "    +8.13%",
                        style: boltwhiteTextStyle.copyWith(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
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
