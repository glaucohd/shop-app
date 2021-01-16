import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';
import '../data/dummy_data.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> leadedProducts = DUMMY_PRODUCTS;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Loja'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
        itemBuilder: (context, index){
          return Text(leadedProducts[index].title);
        },
      ),
    );
  }
}
