import 'package:example_mvvm/service/api/network_api.dart';
import 'package:example_mvvm/service/api/web_api_fake.dart';
import 'package:example_mvvm/viewModel/coinlist_viewModel.dart';
import 'package:get_it/get_it.dart';

void initServiceLocator() {
  GetIt.I.registerSingleton<NetworkApi>(WebApiFake());
  GetIt.I.registerFactory<CoinlistViewModel>(() => CoinlistViewModel());
}
