import 'package:b201_app/screens/dashboard/dashboard_controller.dart';
import 'package:b201_app/screens/home/home_controller.dart';
import 'package:b201_app/screens/kas/kas_controller.dart';
import 'package:b201_app/screens/schedule/schedule_controller.dart';
import 'package:get/get.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ScheduleController>(() => ScheduleController());
    Get.lazyPut<KasController>(() => KasController());
  }
}
