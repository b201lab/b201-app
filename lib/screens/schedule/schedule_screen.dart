import 'package:b201_app/screens/schedule/absent_screen.dart';
import 'package:b201_app/screens/schedule/calendar.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Column(
        children: [
          Calendar(),
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return AbsentScreen();
            }));
          }, 
          icon: Icon(Icons.add))
        ],
      ),
    );
  }
}
