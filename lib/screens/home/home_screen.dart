import 'package:b201_app/components/components.dart';
import 'package:getwidget/getwidget.dart';
import 'package:b201_app/models/article_list.dart';
import 'package:b201_app/screens/home/add_article.dart';
import 'package:b201_app/screens/home/article_detail.dart';
import 'package:flutter/material.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 5),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AddArticle()));
          },
          child: Icon(Icons.add),
          backgroundColor: primaryColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
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
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TabBarView(children: <Widget>[
                            // News tab views
                            ListView.builder(
                              itemCount: articleList.length,
                              itemBuilder: (context, index) {
                                if (articleList[index].category == 'news') {
                                  return TabContent(
                                    assets: articleList[index].imageAsset,
                                    title:
                                        articleList[index].title.toUpperCase(),
                                    content: articleList[index].content,
                                  );
                                } else {
                                  return SizedBox(height: 0);
                                }
                              },
                            ),
                            // Projects tab views
                            ListView.builder(
                              itemCount: articleList.length,
                              itemBuilder: (context, index) {
                                if (articleList[index].category == 'projects') {
                                  return TabContent(
                                    assets: articleList[index].imageAsset,
                                    title:
                                        articleList[index].title.toUpperCase(),
                                    content: articleList[index].content,
                                  );
                                } else {
                                  return SizedBox(height: 0);
                                }
                              },
                            ),
                            ListView.builder(
                              itemCount: articleList.length,
                              itemBuilder: (context, index) {
                                if (articleList[index].category == 'aslab') {
                                  return TabContent(
                                    assets: articleList[index].imageAsset,
                                    title:
                                        articleList[index].title.toUpperCase(),
                                    content: articleList[index].content,
                                  );
                                } else {
                                  return SizedBox(height: 0);
                                }
                              },
                            ),
                            ListView.builder(
                              itemCount: articleList.length,
                              itemBuilder: (context, index) {
                                if (articleList[index].category == 'about') {
                                  return TabContent(
                                    assets: articleList[index].imageAsset,
                                    title:
                                        articleList[index].title.toUpperCase(),
                                    content: articleList[index].content,
                                  );
                                } else {
                                  return SizedBox(height: 0);
                                }
                              },
                            ),
                          ]),
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class TabContent extends StatefulWidget {
  const TabContent({
    Key? key,
    required this.assets,
    required this.title,
    required this.content,
  }) : super(key: key);

  final List<String> assets;
  final String title;
  final String content;

  @override
  _TabContentState createState() => _TabContentState();
}

class _TabContentState extends State<TabContent> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArticleDetail(
              title: widget.title,
              content: widget.content,
              assets: widget.assets,
            ),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.only(bottom: 15),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GFCarousel(
                height: 140,
                viewportFraction: 1.0,
                autoPlay: true,
                pagination: true,
                activeIndicator: primaryColor,
                passiveIndicator: Colors.white,
                pagerSize: 10.0,
                items: widget.assets.map(
                  (imageAsset) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(imageAsset),
                        ),
                      ),
                    );
                  },
                ).toList(),
                onPageChanged: (index) {
                  setState(() {
                    index;
                  });
                },
              ),
              SizedBox(height: 15),
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                widget.content,
                textAlign: TextAlign.justify,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
