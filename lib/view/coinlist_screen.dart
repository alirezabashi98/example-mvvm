import 'package:example_mvvm/viewModel/coinlist_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class CoinlisScreen extends StatefulWidget {
  const CoinlisScreen({super.key});

  @override
  State<CoinlisScreen> createState() => _CoinlisScreenState();
}

class _CoinlisScreenState extends State<CoinlisScreen> {
  final _viewModel = CoinlistViewModel();

  @override
  void initState() {
    super.initState();
    _viewModel.loadData();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => _viewModel,
      child: Consumer<CoinlistViewModel>(
        builder: ((context, viewModel, child) => getUi(viewModel)),
      ),
    );
  }

  getUi(CoinlistViewModel viewModel) {
    return Scaffold(
      body: ListView.builder(
        itemCount: viewModel.cryptoList.length,
        itemBuilder: (BuildContext context, int index) {
          return Text(viewModel.cryptoList[index].name);
        },
      ),
    );
  }
}
