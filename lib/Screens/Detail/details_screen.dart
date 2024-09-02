import 'package:ecommerce_app/Screens/Detail/image_slider2.dart';
import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

import '../../Models/product_model.dart';
import 'details_appbar.dart';

class DetailsScreen extends StatefulWidget {
  final Product product;

  const DetailsScreen({super.key, required this.product});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int currentImage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: contentColor,
      body: SafeArea(
        child: Column(
          children: [
            DetailAppbar(),
            ImageSlider2(image: widget.product.image, onChange: (index) {
              setState(() {
                currentImage = index;
              });
            }),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                    (index) => AnimatedContainer(
                  duration: const Duration(microseconds: 300),
                  width: currentImage == index ? 10 : 8,
                  height: 8,
                  margin: const EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentImage == index
                          ? Colors.black
                          : Colors.transparent,
                      border: Border.all(
                        color: Colors.black,
                      )), // Border.all // Box Decoration
                ), // AnimatedContainer
              ),
            ),
          ],
        ),
      ),
    );
  }
}
