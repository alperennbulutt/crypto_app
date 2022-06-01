import 'package:crypto_app/service/bitcoin.dart';
import 'package:crypto_app/service/data.dart';
import 'package:get/get.dart';

import '../../data/repository/posts_repository.dart';

class HomeController extends GetxController {
  final MyRepository repository;
  HomeController({required this.repository});

  DataService dataService = DataService();
  BitcoinService bitcoinService = BitcoinService();

  RxList coinPrice = [].obs;
  final coinName = [].obs;

  @override
  void onInit() {
    super.onInit();
    getCoinName();
  }

  getCoinName() {
    print('fonk girdi');
    var allCoins = dataService.getAllCoins('EUR');
    coinPrice.refresh();
    coinPrice.removeRange(0, coinPrice.length);
    allCoins.then((value) => value.coins!.forEach((element) {
          print('gelen veriler' + element.price.toString());
          var splitedValue = element.price.toString().split('.');
          var afterDot = splitedValue[1].substring(0, 4);
          var splitedString = '${splitedValue[0]}' + '.' + '${afterDot}';
          coinPrice.add(splitedString);
          coinName.add(element.name);
        }));

    Future.delayed(Duration(minutes: 1), () {
      getCoinName();
      print('uzunluguuuu' + coinPrice.length.toString());
    });

    print('fonk çıktı');
  }
}
