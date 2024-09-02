 import 'package:flutter/material.dart';

class ImageSlider2 extends StatelessWidget {
  final Function(int) onChange;
  final String image;
  const ImageSlider2({
    super.key,
    required this.image,
    required this.onChange
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(
          onPageChanged: onChange,
        physics: const ClampingScrollPhysics(),
          itemBuilder: (context, index) => Image.asset(image),),
    );
  }
}
