import 'package:crypto_app/controller/home/home_controller.dart';
import 'package:crypto_app/data/provider/api.dart';
import 'package:get/get.dart';

import '../data/repository/posts_repository.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() {
      return HomeController(repository: MyRepository(apiClient: MyApiClient()));
    });
  }
}
