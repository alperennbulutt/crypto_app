// To parse this JSON data, do
//
//     final bitcoinModel = bitcoinModelFromJson(jsonString);

// ignore_for_file: prefer_if_null_operators

import 'dart:convert';

BitcoinModel bitcoinModelFromJson(String str) =>
    BitcoinModel.fromJson(json.decode(str));

String bitcoinModelToJson(BitcoinModel data) => json.encode(data.toJson());

class BitcoinModel {
  BitcoinModel({
    this.coins,
  });

  List<Coin>? coins;

  factory BitcoinModel.fromJson(Map<String, dynamic> json) => BitcoinModel(
        coins: json["coins"] == null
            ? null
            : List<Coin>.from(json["coins"].map((x) => Coin.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "coins": coins == null
            ? null
            : List<dynamic>.from(coins!.map((x) => x.toJson())),
      };
}

class Coin {
  Coin({
    this.id,
    this.icon,
    this.name,
    this.symbol,
    this.rank,
    this.price,
    this.priceBtc,
    this.volume,
    this.marketCap,
    this.availableSupply,
    this.totalSupply,
    this.priceChange1H,
    this.priceChange1D,
    this.priceChange1W,
    this.websiteUrl,
    this.twitterUrl,
    this.exp,
    this.contractAddress,
    this.decimals,
  });

  String? id;
  String? icon;
  String? name;
  String? symbol;
  int? rank;
  double? price;
  double? priceBtc;
  double? volume;
  double? marketCap;
  double? availableSupply;
  double? totalSupply;
  double? priceChange1H;
  double? priceChange1D;
  double? priceChange1W;
  String? websiteUrl;
  String? twitterUrl;
  List<String>? exp;
  String? contractAddress;
  int? decimals;

  factory Coin.fromJson(Map<String, dynamic> json) => Coin(
        id: json["id"] == null ? null : json["id"],
        icon: json["icon"] == null ? null : json["icon"],
        name: json["name"] == null ? null : json["name"],
        symbol: json["symbol"] == null ? null : json["symbol"],
        rank: json["rank"] == null ? null : json["rank"],
        price: json["price"] == null ? null : json["price"].toDouble(),
        priceBtc: json["priceBtc"] == null ? null : json["priceBtc"].toDouble(),
        volume: json["volume"] == null ? null : json["volume"].toDouble(),
        marketCap:
            json["marketCap"] == null ? null : json["marketCap"].toDouble(),
        availableSupply: json["availableSupply"] == null
            ? null
            : json["availableSupply"].toDouble(),
        totalSupply:
            json["totalSupply"] == null ? null : json["totalSupply"].toDouble(),
        priceChange1H: json["priceChange1h"] == null
            ? null
            : json["priceChange1h"].toDouble(),
        priceChange1D: json["priceChange1d"] == null
            ? null
            : json["priceChange1d"].toDouble(),
        priceChange1W: json["priceChange1w"] == null
            ? null
            : json["priceChange1w"].toDouble(),
        websiteUrl: json["websiteUrl"] == null ? null : json["websiteUrl"],
        twitterUrl: json["twitterUrl"] == null ? null : json["twitterUrl"],
        exp: json["exp"] == null
            ? null
            : List<String>.from(json["exp"].map((x) => x)),
        contractAddress:
            json["contractAddress"] == null ? null : json["contractAddress"],
        decimals: json["decimals"] == null ? null : json["decimals"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "icon": icon == null ? null : icon,
        "name": name == null ? null : name,
        "symbol": symbol == null ? null : symbol,
        "rank": rank == null ? null : rank,
        "price": price == null ? null : price,
        "priceBtc": priceBtc == null ? null : priceBtc,
        "volume": volume == null ? null : volume,
        "marketCap": marketCap == null ? null : marketCap,
        "availableSupply": availableSupply == null ? null : availableSupply,
        "totalSupply": totalSupply == null ? null : totalSupply,
        "priceChange1h": priceChange1H == null ? null : priceChange1H,
        "priceChange1d": priceChange1D == null ? null : priceChange1D,
        "priceChange1w": priceChange1W == null ? null : priceChange1W,
        "websiteUrl": websiteUrl == null ? null : websiteUrl,
        "twitterUrl": twitterUrl == null ? null : twitterUrl,
        "exp": exp == null ? null : List<dynamic>.from(exp!.map((x) => x)),
        "contractAddress": contractAddress == null ? null : contractAddress,
        "decimals": decimals == null ? null : decimals,
      };
}
