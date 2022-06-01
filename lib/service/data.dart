import 'package:crypto_app/model/bitcoin_model.dart';
import 'package:crypto_app/service/bitcoin.dart';

class DataService {
  BitcoinService bitcoinService = BitcoinService();
  Future<BitcoinModel> getAllCoins(String currencyUnit) async {
    var bitcoinRequest = await bitcoinService.getAllCoins(currencyUnit);
    var allCoins = bitcoinModelFromJson(bitcoinRequest);

    return allCoins;
  }
}
