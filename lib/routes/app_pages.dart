import 'package:crypto_app/ui/home_page.dart';
import 'package:get/get.dart';

import '../bindings/home_binding.dart';

part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.INITIAL, page: () => HomePage(), binding: HomeBinding()),
  ];
}
