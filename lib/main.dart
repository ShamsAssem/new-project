import 'package:flutter/material.dart';

void main() {
  runApp(const ProductApp());
}

class ProductApp extends StatelessWidget {
  const ProductApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product List',
      home: ProductListScreen(),
    );
  }
}

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Benefit eyebrow setter',
      description: 'benefit eyebrow mascara is a popular...',
      price: 50.99,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzXrsLh0Re42P9u69rWfoXCOvdEGFLOIJ9otGGbTZ5bVP6NZq7o7dwuOX8iHSAYoPrZ6Q&usqp=CAU',
    ),
    Product(
      name: 'Fenty beauty by rihanna',
      description: 'fenty beauty by rihanna rose ra...',
      price: 60.99,
      imageUrl:
          'https://cdn.salla.sa/XjKDR/Zd1r1bc2EuU76M7Yr7F9So5bzwHxrCNEZNOFoiVQ.jpg',
    ),
    Product(
      name: 'fenty beauty gloss',
      description: 'fenty beauty lip gl...',
      price: 40.99,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvQ9TYwx9AIxqkRxwppOsbEfBG8mxNJPDWNw&s ',
    ),
    Product(
      name: 'Dior addict EDP',
      description: 'dior addict eau de parfum...',
      price: 80.86,
      imageUrl:
          'https://cdn.salla.sa/bbdwg/BAcabrodrK7CODIA78MrbQP22x7aUi64tkvaKN62.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: products.length,
        itemBuilder: (ctx, i) => ProductItem(products[i]),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3.5,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
        backgroundColor: Colors.black87,
        leading: Text(
          '\$${product.price}',
          style: const TextStyle(color: Colors.white),
        ),
        title: Text(
          product.name,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          product.description,
          style: const TextStyle(color: Colors.white70),
        ),
      ),
      child: Image.network(
        product.imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}

class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}
