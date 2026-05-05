import 'package:get/get.dart';

class AppShellController extends GetxController {
  /// 0 = Dashboard, 1 = Receive, 2 = Settings
  final tabIndex = 0.obs;

  void setTab(int i) => tabIndex.value = i;
}

