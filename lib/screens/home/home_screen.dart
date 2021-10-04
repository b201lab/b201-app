import 'package:b201_app/components/components.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 130,
            child: Row(
              children: [
                Container(
                  height: double.infinity,
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Container(
                      height: 90,
                      padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
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
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                      Icon(Icons.notifications, size: 28),
                                      SizedBox(width: 10),
                                      Icon(Icons.settings, size: 28),
                                      SizedBox(width: 10),
                                      Icon(Icons.how_to_reg, size: 28),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            flex: 1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/profile.png',
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Expanded(
            flex: 3,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                InfoItem1(
                  title: 'NEWS',
                  asset: 'assets/images/news.png',
                ),
                SizedBox(width: 10),
                InfoItem1(
                  title: 'NEWS',
                  asset: 'assets/images/news.png',
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Expanded(
            flex: 2,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                InfoItem2(
                  title: 'About the Lab',
                  asset: 'assets/images/info1.png',
                ),
                SizedBox(width: 10),
                InfoItem2(
                  title: 'Cangs?',
                  asset: 'assets/images/info2.png',
                ),
                SizedBox(width: 10),
                InfoItem2(
                  title: 'Projects',
                  asset: 'assets/images/info3.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InfoItem1 extends StatelessWidget {
  const InfoItem1({Key? key, required this.title, required this.asset})
      : super(key: key);
  final String title;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.3),
            BlendMode.srcOver,
          ),
          image: AssetImage(asset),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 20),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            title,
            style: homeListTextStyle1,
          ),
        ),
      ),
    );
  }
}

class InfoItem2 extends StatelessWidget {
  const InfoItem2({Key? key, required this.title, required this.asset})
      : super(key: key);
  final String title;
  final String asset;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.3),
            BlendMode.srcOver,
          ),
          image: AssetImage(asset),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, bottom: 17, right: 20),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            title,
            style: homeListTextStyle2,
          ),
        ),
      ),
    );
  }
}
