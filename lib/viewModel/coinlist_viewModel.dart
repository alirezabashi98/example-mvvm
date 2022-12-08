import 'package:flutter/foundation.dart';
import 'package:example_mvvm/model/crypto.dart';
import 'package:example_mvvm/service/api/web_api_implementation.dart';

class CoinlistViewModel extends ChangeNotifier {
  final _webApi = WebApi();

  List<Crypto> cryptoList = [];

  void loadData() async {
    cryptoList = await _webApi.getAllCrypto();
    notifyListeners();
  }
}
