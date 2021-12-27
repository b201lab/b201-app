import 'package:b201_app/models/users.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KasEditScreen extends StatelessWidget {
  final onUpdateUser;
  final User user;
  late String newName;
  KasEditScreen({Key? key, required this.user, required this.onUpdateUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text("Edit nama"),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter new name',
              ),
              onChanged: (text) => {newName = text},
            ),
            TextButton(
                onPressed: () {
                  User newUser = User(
                      id: user.id,
                      name: newName,
                      isLunas: user.isLunas,
                      lastPayement: user.lastPayement);
                  onUpdateUser(newUser);
                  Get.toNamed('/home');
                },
                child: Text("Ubah")),
          ],
        ),
      )),
    );
  }
}
