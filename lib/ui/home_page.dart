import 'package:crypto_app/constants/assets.dart';
import 'package:crypto_app/controller/home/home_controller.dart';
import 'package:crypto_app/data/provider/api.dart';
import 'package:crypto_app/data/repository/posts_repository.dart';
import 'package:crypto_app/model/bitcoin_model.dart';
import 'package:crypto_app/service/data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  DataService dataService = DataService();
  late Future<BitcoinModel> bitcoinData;

  late List<String> colorList = ["Colors.amber", "green", "blue"];

  // getCoinName(int index) async {
  //   bitcoinData = dataService.getAllCoins('TRY');
  //   bitcoinData
  //       .then((value) => {deneme = value.coins![index].price.toString()});
  //   print('denemee' + deneme);
  // }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(
        HomeController(repository: MyRepository(apiClient: MyApiClient())));

    return Scaffold(
        appBar: AppBar(
          title: Text('Coin Piyasası'),
        ),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 138, 188, 221),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.30,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Obx(
                                  () => controller.coinName.length == 0
                                      ? Text('')
                                      : Row(
                                          children: [
                                            Icon(Icons.ac_unit,
                                                color: Colors.white),
                                            Text(
                                              controller.coinName[index]
                                                  .toString(),
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            SizedBox(
                                              width: 170,
                                            ),
                                            Icon(Icons.euro,
                                                color: Colors.white),
                                            Obx(
                                              () => controller
                                                          .coinPrice.length ==
                                                      0
                                                  ? Text('')
                                                  : Text(
                                                      controller
                                                          .coinPrice[index]
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                            )
                                          ],
                                        ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Expanded(
                            child: Image.asset(
                          controller.returnPhoto(index),
                        )),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ));
  }
}
