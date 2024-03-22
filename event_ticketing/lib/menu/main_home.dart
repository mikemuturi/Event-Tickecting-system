import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  // Calculate the aspect ratio based on available width and height
                  double aspectRatio = 16/9; // Set a fixed height of 200

                  return Container(
                    height: 200,
                    child: CarouselSlider(
                      carouselController: _carouselController,
                      options: CarouselOptions(
                        aspectRatio: aspectRatio,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      ),
                      items: [
                        Image.network(
                          'https://via.placeholder.com/200',
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                          'https://via.placeholder.com/200',
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                          'https://via.placeholder.com/200',
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                          'https://via.placeholder.com/200',
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(onPressed: () {},
               child: Text("Recent Event",
               style: TextStyle(fontSize: 22,
               color: Color(0xFF111820),
               fontWeight: FontWeight.bold),)),
                TextButton(onPressed: () {},
               child: Text("Browse All",
               style: TextStyle(fontSize: 22,
               color: Color(0xFF111820),
               fontWeight: FontWeight.bold),))
            ],
          )
        ],
      ),
    );
  }
}
