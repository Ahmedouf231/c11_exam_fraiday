import 'package:c11_exam_fraiday/item_text.dart';
import 'package:c11_exam_fraiday/textbutton.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Firstscreen extends StatefulWidget {
  static const String routeName = 'first Screen';
  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset('assets/images/Logo.png'),
        actions: [
          Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.settings,
                color: Color(0xff4838D1),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ItemText(text1: 'Catigories', text2: ' see more'),
            SizedBox(
              height: 80,
              width: 550,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Text_button(text: 'Art'),
                  Text_button(text: 'comdy'),
                  Text_button(text: 'Busniess'),
                  Text_button(text: 'Drama'),
                  Text_button(text: 'Romantic'),
                ],
              ),
            ),
            ItemText(text1: 'Recommended For You', text2: 'see more'),
            Padding(
              padding: EdgeInsets.all(10),
              child: CarouselSlider(
                  options: CarouselOptions(
                    height: 300.0,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.5,
                  ),
                  items: [
                    Container(
                        width: 200,
                        height: 300,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/123.png")))),
                  ]),
            ),
            ItemText(text1: 'Best Seller', text2: ' see more'),
            Row(
              children: [
                Image.asset('assets/images/567.png'),
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Light Mage",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                    Text("Laurie Forest", style: TextStyle(fontSize: 15)),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff4838D1),
        unselectedItemColor: Color(0xff667085),
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(
          icon: Icon(Icons.library_books_outlined), label: 'library'),
        ],
      ),
    );
  }
}
