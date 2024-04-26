import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/e-commerce/component/product_popular.dart';

class PolularProductScreen extends StatefulWidget {
  const PolularProductScreen({super.key});

  @override
  State<PolularProductScreen> createState() => _PolularProductScreenState();
}

class _PolularProductScreenState extends State<PolularProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children:const [
                popular_product()
              ],
            )
          ),
        ),
      );
  }
}