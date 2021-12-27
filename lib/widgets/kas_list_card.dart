import 'package:b201_app/models/users.dart';
import 'package:b201_app/screens/kas/kas_edit_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KasListCard extends StatefulWidget {
  // final bool statusLunas;
  final User user;
  final onUpdateUser;
  const KasListCard({Key? key, required this.user, required this.onUpdateUser})
      : super(key: key);

  @override
  _KasListCardState createState() => _KasListCardState();
}

class _KasListCardState extends State<KasListCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Row(children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Color(0x44000000),
                      blurRadius: 5,
                      offset: Offset(0, 2),
                      spreadRadius: 0)
                ],
                color: Color(0xFFFFFAFA)),
            padding: EdgeInsets.all(18),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 16),
                          child: Row(
                            children: [
                              Text("Terakhir Bayar 17 Agustus 2021"),
                              Row(
                                children: [
                                  Container(
                                    width: 10,
                                    height: 10,
                                    margin: EdgeInsets.only(right: 8),
                                    decoration: BoxDecoration(
                                        color: (widget.user.isLunas)
                                            ? Colors.green
                                            : Colors.red,
                                        shape: BoxShape.circle),
                                  ),
                                  (widget.user.isLunas)
                                      ? Text("Lunas")
                                      : Text("Belum Lunas")
                                ],
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              widget.user.name,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            TextButton(
                              onPressed: () {
                                print("going to this hti");
                                Get.to(KasEditScreen(
                                  user: widget.user,
                                  onUpdateUser: widget.onUpdateUser,
                                ));
                              },
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Ubah",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x44000000),
                                          blurRadius: 5,
                                          offset: Offset(0, 2),
                                          spreadRadius: 0)
                                    ],
                                    color: Color(0xFFFFFFFF)),
                              ),
                              style: ButtonStyle(
                                  splashFactory: NoSplash.splashFactory),
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        )
                      ],
                    )),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
