import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Product List", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        actions: const [
           Center(
             child: Badge(
               label: Text('0'),
               child: Icon(Icons.shopping_cart),
             ),
           ),
          SizedBox(width: 10,)
        ],
      ),
    );
  }
}
