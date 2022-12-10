import 'package:example_mvvm/service/api/network_api.dart';
import 'package:flutter/foundation.dart';
import 'package:example_mvvm/model/crypto.dart';
import 'package:get_it/get_it.dart';

class CoinlistViewModel extends ChangeNotifier {
  final NetworkApi _webApi = GetIt.I.get<NetworkApi>();

  List<Crypto> cryptoList = [];

  void loadData() async {
    cryptoList = await _webApi.getAllCrypto();
    notifyListeners();
  }
}
