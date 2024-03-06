import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class Data extends StatelessWidget {
   Data({super.key});
static const String routeNama ="data";

List<Widget> pic =[Image.asset("assetes/background.jpeg"),
  Image.asset("assetes/background.jpeg"),
  Image.asset("assetes/background.jpeg")];
   final CarouselController _carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {},
            child: CarouselSlider(
                items: pic,
                options: CarouselOptions(
                  height: 700,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(seconds: 1),
                  autoPlayCurve: Curves.easeInOut,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                )
            ),
          ),

        ],
      ),

    );
  }
}
