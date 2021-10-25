import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class AbsentScreen extends StatefulWidget {
  const AbsentScreen({ Key? key }) : super(key: key);

  @override
  _AbsentScreenState createState() => _AbsentScreenState();
}

class _AbsentScreenState extends State<AbsentScreen> {
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
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Absensi Rapat',
                style: TextStyle(
                  fontSize: 25
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.yellow,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.center,
                    colors: [
                      Color(0xffFAFFC3),
                      Colors.white
                    ]
                  )
                ),
                padding: EdgeInsets.all(12),
                height: 80,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Hadir',
                            style: TextStyle(
                              color: Color(0xff2D7392)
                            ),
                          ),
                          Text(
                            '0',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          )
                        ],
                      )
                    ),
                    VerticalDivider(
                      thickness: 2,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Izin',
                            style: TextStyle(
                              color: Color(0xff10E465)
                            ),
                          ),
                          Text(
                            '0',
                            style: TextStyle(
                              fontSize: 30
                            ),
                          )
                        ],
                      )
                    ),
                    VerticalDivider(
                      thickness: 2,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Alfa',
                            style: TextStyle(
                              color: Color(0xffFF0000)
                            ),
                          ),
                          Text(
                            '0',
                            style: TextStyle(
                              fontSize: 30
                            ),
                          )
                        ],
                      )
                    ),
                    VerticalDivider(
                      thickness: 2,
                    ),
                    Container(
                      height: 60,
                      child: Column(
                        children: [
                          Text(
                            'Total Pertemuan',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xffCC6666)
                            ),
                          ),
                          Text(
                            '0',
                            style: TextStyle(
                              fontSize: 30
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      height: 120.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 1,
                            blurRadius: 6
                          )
                        ]
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffFAFFC3),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.elliptical(20.0, 20.0),
                                    bottomRight: Radius.elliptical(150.0, 150.0)
                                  )
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10.0, top: 5.0, right: 20.0, bottom: 10.0),
                                  child: Text(
                                    '1', 
                                    style: TextStyle(fontSize: 18.0,),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 105.0, top: 5.0, bottom: 10.0),
                                  child: Text(
                                    '7 September 2021 - 19.00', 
                                    style: TextStyle(fontSize: 16.0,),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 60.0, top: 10.0),
                                  child: Text(
                                    'Alfa', 
                                    style: TextStyle(fontSize: 28.0,),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  margin: EdgeInsets.only(left: 100, top: 10),
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 0.5,
                                        blurRadius: 1
                                      )
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10.0, top: 5.0, right: 10.0, bottom: 10.0),
                                    child: Text(
                                      'Hadir', 
                                      style: TextStyle(fontSize: 18.0,),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  margin: EdgeInsets.only(left: 10, top: 10),
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 0.5,
                                        blurRadius: 1
                                      )
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10.0, top: 5.0, right: 10.0, bottom: 10.0),
                                    child: Text(
                                      'Izin', 
                                      style: TextStyle(fontSize: 18.0,),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ),
                  ],
                )
              )
            ],
          ),
        ),
      )
    );
  }
}