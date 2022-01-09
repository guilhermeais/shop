import 'package:flutter/material.dart';
import 'package:shop/components/product_item.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/Product.dart';

class ProductsOverviewPage extends StatelessWidget {
  ProductsOverviewPage({Key? key}) : super(key: key);
  final List<Product> loadedProducts = dummyProducts;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("Minha Loja")),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, i) {
          return ProductItem(product: loadedProducts[i]);
        },
      ),
    );
  }
}
