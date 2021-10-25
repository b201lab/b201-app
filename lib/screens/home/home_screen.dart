import 'package:b201_app/components/components.dart';
import 'package:flutter/material.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 90,
                child: Container(
                  height: 90,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      color: Color(0xFFE5E5E5),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 3,
                          offset: Offset(2, 2),
                        )
                      ]),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/profile.png',
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                          width: 70,
                          height: 70,
                        ),
                      ),
                      SizedBox(width: 15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Selamat Datang,',
                                  style: profileTextStyle,
                                ),
                                Text(
                                  'Rama',
                                  style: profileTextStyle,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Icon(Icons.notifications, size: 24),
                                SizedBox(width: 12),
                                Icon(Icons.settings, size: 24),
                                SizedBox(width: 12),
                                Icon(Icons.how_to_reg, size: 24),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 90,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: DefaultTabController(
                length: 4,
                initialIndex: 0,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TabBar(
                        labelColor: Colors.white,
                        labelPadding: EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        unselectedLabelColor: Colors.black,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BubbleTabIndicator(
                            indicatorHeight: 25.0,
                            indicatorColor: primaryColor,
                            tabBarIndicatorSize: TabBarIndicatorSize.tab),
                        tabs: [
                          Tab(
                            child: Container(
                              height: 25.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      color: primaryColor, width: 1)),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'NEWS',
                                    textScaleFactor: 1,
                                  )),
                            ),
                          ),
                          Tab(
                            child: Container(
                              height: 25.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      color: primaryColor, width: 1)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text('PROJECTS'),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              height: 25.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      color: primaryColor, width: 1)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text('ASLAB'),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              height: 25.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      color: primaryColor, width: 1)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'ABOUT',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(children: <Widget>[
                        Container(
                          child: Center(
                            child: Text('Display Tab 1',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text('Display Tab 2',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text('Display Tab 3',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text('Display Tab 4',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ]),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
