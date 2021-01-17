import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';
import '../data/dummy_data.dart';
import '../widgets/product_item.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> leadedProducts = DUMMY_PRODUCTS;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Loja'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: leadedProducts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return ProductItem(product: leadedProducts.elementAt(index));
        },
      ),
    );
  }
}
