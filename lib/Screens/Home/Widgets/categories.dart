import 'package:ecommerce_app/Models/category.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                      image: AssetImage(categories[index].image),
                ),)
                      ),


                    const SizedBox(height: 5,),
                    Text(categories[index].title),
                  ],
                );
          },
          separatorBuilder: (context, index) {
              return const SizedBox(
                width: 10,
              );
          },
          itemCount: categories.length),
    );
  }
}
