import 'package:flutter/material.dart';
import 'package:shop/models/Product.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        product.imageUrl,
        fit: BoxFit.cover,
      ),
      footer: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTileBar(
          backgroundColor: Colors.black54,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite),
          ),
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
        ),
      ),
    );
  }
}
