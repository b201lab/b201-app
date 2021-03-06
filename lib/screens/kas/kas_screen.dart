import 'package:b201_app/models/users.dart';
import 'package:b201_app/widgets/kas_list_card.dart';
import 'package:flutter/material.dart';

const bool isAdmin = true;

class KasScreen extends StatefulWidget {
  const KasScreen({Key? key}) : super(key: key);
  @override
  State<KasScreen> createState() => _KasScreenState();
}

class _KasScreenState extends State<KasScreen> {
  List<User> _users = users;

  // void onKasChange(user) {
  //   setState(() {
  //     List<User> newUsers;

  //     _users = newUsers;
  //   });
  // }
  void updateUsers(User newUser) {
    setState(() {
      _users[_users.indexWhere((user) => user.id == newUser.id)] = newUser;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: isAdmin
          ? Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Daftar Pembayaran Kas",
                      style: TextStyle(fontSize: 20),
                    ),
                    margin: EdgeInsets.only(bottom: 20),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        for (User user in _users)
                          KasListCard(user: user, onUpdateUser: updateUsers),
                      ],
                    ),
                  )
                ],
              ),
            )
          : Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 16),
                    child: Text(
                      "Tagihan",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  Container(
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
                          padding: EdgeInsets.all(24),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 12),
                                child: Text(
                                  "Total tagihan",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 12),
                                child: Text(
                                  "10.000",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 12),
                                child: Text("Terakhir bayar bulan Agustus",
                                    style: TextStyle(fontSize: 12)),
                              )
                            ],
                          ),
                        ),
                      )
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 16),
                    child: Text(
                      "Riwayat",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  Container(
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
                          padding: EdgeInsets.all(24),
                          child: Column(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(bottom: 12),
                                  child: Row(
                                    children: [
                                      Text("17 Agustus 2021"),
                                      Text(
                                        "Rp. 10.000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      )
                                    ],
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                  )),
                              Container(
                                  margin: EdgeInsets.only(bottom: 12),
                                  child: Row(
                                    children: [
                                      Text("18 Agustus 2021"),
                                      Text(
                                        "Rp. 10.000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      )
                                    ],
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                  )),
                              Container(
                                  margin: EdgeInsets.only(bottom: 12),
                                  child: Row(
                                    children: [
                                      Text("19 Agustus 2021"),
                                      Text(
                                        "Rp. 10.000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      )
                                    ],
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                  )),
                              Container(
                                  margin: EdgeInsets.only(bottom: 12),
                                  child: Row(
                                    children: [
                                      Text("20 Agustus 2021"),
                                      Text(
                                        "Rp. 10.000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      )
                                    ],
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                  )),
                            ],
                          ),
                        ),
                      )
                    ]),
                  ),
                ],
              ),
            ),
    );
  }
}
