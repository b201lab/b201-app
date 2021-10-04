import 'package:b201_app/components/components.dart';
import 'package:b201_app/screens/dashboard/dashboard_controller.dart';
import 'package:b201_app/screens/home/home_screen.dart';
import 'package:b201_app/screens/kas/kas_screen.dart';
import 'package:b201_app/screens/schedule/schedule_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../navigation/bottom_navigation.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final _inactiveColor = Colors.black;
  // final _activeColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    controller.tabIndex == 0
                        ? 'assets/images/background_vector.png'
                        : 'assets/images/transparent.png',
                  ),
                ),
              ),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              body: SafeArea(
                child: IndexedStack(
                  index: controller.tabIndex,
                  children: [
                    HomeScreen(),
                    ScheduleScreen(),
                    KasScreen(),
                  ],
                ),
              ),
              bottomNavigationBar: BottomNavigation(
                containerHeight: 85,
                backgroundColor: primaryColor,
                selectedIndex: controller.tabIndex,
                showElevation: true,
                itemCornerRadius: 24,
                curve: Curves.easeIn,
                onItemSelected: controller.changeTabIndex,
                items: <BottomNavigationItem>[
                  BottomNavigationItem(
                    icon: Icon(Icons.home),
                    title: Text('Home'),
                    activeColor: primaryColor,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                  BottomNavigationItem(
                    icon: Icon(Icons.receipt_long),
                    title: Text('Schedule'),
                    activeColor: primaryColor,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                  BottomNavigationItem(
                    icon: Icon(Icons.attach_money),
                    title: Text(
                      'Kas ',
                    ),
                    activeColor: primaryColor,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
