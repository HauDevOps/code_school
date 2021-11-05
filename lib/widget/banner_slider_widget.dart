import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerSlider extends StatelessWidget {
  final List<String> imageBanner = [
    'assets/slider/a.jpg',
    'assets/slider/b.jpg',
    'assets/slider/c.jpg',
    'assets/slider/d.jpg',
    'assets/slider/e.jpg',
    'assets/slider/f.jpg',
    'assets/slider/g.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          viewportFraction: 1.0,
          enlargeCenterPage: false,
          autoPlay: true,
          autoPlayAnimationDuration: Duration(seconds: 1)),
      items: imageBanner.map((e) => Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 20, right: 5, left: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            e,
            fit:BoxFit.contain,
          ),

        ),
      )).toList(),
    );
  }
}
