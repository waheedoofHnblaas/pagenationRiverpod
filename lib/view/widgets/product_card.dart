import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qit_flutter2/Models/productModel/productModel.dart';

class ProductCard extends StatelessWidget {
  ProductCard({Key? key,required this.data}) : super(key: key);
  ProductModel data;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            CachedNetworkImage(
              height: Get.height / 4,
              width: Get.height / 4,
              imageBuilder: (context, imageProvider) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                        Radius.circular(18)),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
              imageUrl:
              data.image!.conversions!.small!,
              placeholder: (context, url) => const Padding(
                padding: EdgeInsets.all(10),
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) =>
              const Icon(Icons.error),
            ),
            Text(data.title.toString()),
            Text(data.id.toString()),
          ],
        ),
      ),
    );
  }
}
