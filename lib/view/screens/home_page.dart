import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:qit_flutter2/Models/productModel/productModel.dart';
import 'package:qit_flutter2/Providers/products_provider.dart';
import '../../Services/product_services.dart';
import 'package:qit_flutter2/view/widgets/product_card.dart';

int perpage = 5;
int page = 1;
int total = 40;

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final productsState = ref.watch(productNotifierProvider);
    ScrollController scrollController = ScrollController();

    scrollController.addListener(
      () {
        if (scrollController.position.maxScrollExtent ==
            scrollController.offset) {
          print(scrollController.offset);
          ref.watch(productNotifierProvider.notifier).moreProducts();
        }
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: productsState.when(
          data: (data) {
            return ListView.builder(
              itemCount: data.length + 1,
              controller: scrollController,
              itemBuilder: (context, index) {
                return data.length > index
                    ? ProductCard(data: data[index])
                    : total > data.length + 1
                        ? const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: LinearProgressIndicator(),
                          )
                        : Container();
              },
            );
          },
          error: (error, stackTrace) => Text(error.toString()),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
