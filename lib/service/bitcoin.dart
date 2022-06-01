import 'package:http/http.dart' as http;

class BitcoinService {
  getAllCoins(String currencyUnit) async {
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://api.coinstats.app/public/v1/coins?skip=0&limit=5&currency="$currencyUnit"'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    print(response.statusCode);
    if (response.statusCode == 200) {
      var result = await response.stream.bytesToString();

      return result;
    } else {
      print(response.reasonPhrase);
    }
  }
}
