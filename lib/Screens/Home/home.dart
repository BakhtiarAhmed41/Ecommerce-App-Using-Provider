import 'package:ecommerce_app/Screens/Home/Widgets/image_slider.dart';
import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

import 'Widgets/categories.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentSLide = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.grid_view_rounded,
                        size: 30,
                      ),
                      style:
                          IconButton.styleFrom(backgroundColor: contentColor),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_outlined,
                          size: 35,
                        ),
                        style:
                            IconButton.styleFrom(backgroundColor: contentColor))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  // margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: contentColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      const Icon(Icons.search_outlined),
                      const SizedBox(
                        width: 20,
                      ),
                      const Flexible(
                        flex: 4,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              hintText: "Search...",
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              )),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      // Icon(Icons.),
                      Container(
                        height: 25,
                        width: 1.5,
                        color: Colors.grey,
                      ),

                      const SizedBox(
                        width: 15,
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.tune)),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                ImageSlider(
                  currentSlide: currentSLide,
                  onChange: (value) {
                    setState(() {
                      currentSLide = value;
                    });
                  },
                ),
                const SizedBox(height: 30),
                const Categories(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Special For You",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                    Text("See all", )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
