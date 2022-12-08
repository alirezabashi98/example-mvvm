import 'package:example_mvvm/model/crypto.dart';

abstract class NetworkApi {
  Future<List<Crypto>> getAllCrypto();
}
