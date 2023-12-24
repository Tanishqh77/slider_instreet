import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_slider',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "search bar",
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://pixabay.com/get/g2675c9ea0b8e3867e23c173c222146d3128983b4f0a81510b8c35308808374e0983e6f9c1e10b205b929d7061e642e029dea7881eb81c5a0d86df3e7a861e6acc62121e4d75c83316d7ea4944cd6c91d_1280.jpg?attachment=.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://pixabay.com/get/g71ff087913e183c73e9ec2a16a643a31af802743bd32906c5835dec6152ca369dae84dc613f06aa5b3b85f1f6646deaeafc1b9260c80e0d9029500edbb367d0de1cffafed7999f1f509aa9e4be0cab07_1280.jpg?attachment=.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://pixabay.com/get/g14b257c8f89d5558e12db9ae68b367cda5dd0cdf3cb92e4935810545bc22b6173b78679ec592bca8de18a67d2c82aa4beeeffc881ef324a7caef1e2ec821334f1a3ab6fa51bed76a09d5efa2acf74f01_1280.jpg?attachment=.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 200,
                aspectRatio: 20 / 8,
                viewportFraction: 1.0,
                initialPage: 0,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                enlargeCenterPage: true,
                enlargeFactor: 0.5,
              ))
        ],
      ),
    );
  }
}
