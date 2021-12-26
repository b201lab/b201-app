import 'package:b201_app/components/components.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ArticleDetail extends StatefulWidget {
  final String title;
  final String content;
  final List<String> assets;

  const ArticleDetail({
    Key? key,
    required this.title,
    required this.content,
    required this.assets,
  }) : super(key: key);

  @override
  _ArticleDetailState createState() => _ArticleDetailState();
}

class _ArticleDetailState extends State<ArticleDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.only(left: 20),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset('assets/icons/back_icon.png'),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GFCarousel(
                height: 200,
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
                  setState(() => index);
                },
              ),
              SizedBox(height: 20),
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
