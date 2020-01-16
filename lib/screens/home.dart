import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_floppist_mobile/shared/app_bar.dart';

class Home extends StatelessWidget {

  final List<String> images = [
    'assets/FloppistWebDashboardMob.png',
    'assets/floppistMembersMob.png'
  ];

  @override
  Widget build(BuildContext context) {
    sharedContext = context;
    return Scaffold(
      drawerEdgeDragWidth: 0,
      drawer: drawer,
      appBar: appBar,
      body: Center(
        child: CarouselSlider(
          height: 510.0,
          items: images.map((img) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(color: Colors.teal),
                  child: Image.asset(img),
                );
              },
            );
          }).toList(),
          autoPlay: true,
          aspectRatio: 16/9,
          enlargeCenterPage: true,
        ),
      ),
      backgroundColor: Colors.teal,
    );
  }
}